<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Album extends Model
{
    public function albums()
{
    return $this->hasMany(Album::class);
}

}
