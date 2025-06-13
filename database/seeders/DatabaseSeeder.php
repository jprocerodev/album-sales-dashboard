 <?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Artist;
use App\Models\Album;
use Faker\Factory as Faker;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        $faker = Faker::create();
        $csvData = array_map('str_getcsv', file(base_path('database/seeders/Data Reference (ALBUM SALES).csv')));
        array_shift($csvData); // Remove header row

        $artistMap = [];
        $usedCodes = [];

        DB::transaction(function () use ($csvData, $faker, &$artistMap, &$usedCodes) {
            foreach ($csvData as $row) {
                $artistName = $row[0];
                $albumName = $row[1];
                $sales = (float) $row[2];
                $releaseDate = $this->formatDate($row[3]);
                $lastUpdate = $this->formatDate($row[4]);
                $year = (int) substr($releaseDate, 0, 4);

                if (!isset($artistMap[$artistName])) {
                    do {
                        $randomNum = str_pad($faker->unique()->numberBetween(1, 9999), 4, '0', STR_PAD_LEFT);
                        $code = 'ART' . $randomNum;
                    } while (in_array($code, $usedCodes));

                    $usedCodes[] = $code;

                    $artist = Artist::create([
                        'code' => $code,
                        'name' => $artistName,
                    ]);

                    $artistMap[$artistName] = $artist->id;
                }

                Album::create([
                    'artist_id' => $artistMap[$artistName],
                    'name' => $albumName,
                    'year' => $year,
                    'sales' => $sales,
                    'cover_image' => $faker->imageUrl(300, 300, 'album'),
                    'date_released' => $releaseDate,
                    'last_update' => $lastUpdate,
                ]);
            }
        });
    }

    private function formatDate($date): string
    {
        $year = '20' . substr($date, 0, 2);
        $month = substr($date, 2, 2);
        $day = substr($date, 4, 2);
        return "$year-$month-$day";
    }
}
