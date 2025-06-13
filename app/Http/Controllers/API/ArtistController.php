<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Artist;
use Illuminate\Support\Str;

class ArtistController extends Controller
{
    public function index()
    {
        return response()->json(Artist::with('albums')->get());
    }

    public function show($id)
    {
        $artist = Artist::with('albums')->findOrFail($id);
        return response()->json($artist);
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string',
        ]);

        $artist = Artist::create([
            'name' => $request->name,
            'code' => 'ART' . str_pad(rand(1, 9999), 4, '0', STR_PAD_LEFT)
        ]);

        return response()->json($artist, 201);
    }

    public function update(Request $request, $id)
    {
        $artist = Artist::findOrFail($id);
        $artist->update($request->only(['name']));
        return response()->json($artist);
    }

    public function destroy($id)
    {
        $artist = Artist::findOrFail($id);
        $artist->delete();
        return response()->json(['message' => 'Artist deleted successfully']);
    }
}