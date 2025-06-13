<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Artist;
use App\Models\Album;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function totalAlbumsPerArtist()
    {
        $data = Artist::withCount('albums')
            ->get()
            ->map(function ($artist) {
                return [
                    'artist' => $artist->name,
                    'total_albums' => $artist->albums_count,
                ];
            });

        return response()->json($data);
    }

    public function totalSalesPerArtist()
    {
        $data = Artist::with('albums')
            ->get()
            ->map(function ($artist) {
                return [
                    'artist' => $artist->name,
                    'total_sales' => $artist->albums->sum('sales'),
                ];
            });

        return response()->json($data);
    }

    public function topArtist()
    {
        $artist = Artist::with('albums')->get()
            ->map(function ($artist) {
                return [
                    'artist' => $artist->name,
                    'total_sales' => $artist->albums->sum('sales'),
                ];
            })->sortByDesc('total_sales')->first();

        return response()->json($artist);
    }

    public function searchAlbums(Request $request)
    {
        $keyword = $request->input('artist');

        $albums = Album::with('artist')
            ->whereHas('artist', function ($query) use ($keyword) {
                $query->where('name', 'like', "%$keyword%");
            })->get();

        return response()->json($albums);
    }
}
