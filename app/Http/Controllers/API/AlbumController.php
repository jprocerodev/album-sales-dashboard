<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Album;
use App\Models\Artist;
use Illuminate\Support\Facades\Storage;

class AlbumController extends Controller
{
    public function index()
    {
        return response()->json(Album::with('artist')->get());
    }

    public function show($id)
    {
        return response()->json(Album::with('artist')->findOrFail($id));
    }

    public function store(Request $request)
    {
        $request->validate([
            'artist_id' => 'required|exists:artists,id',
            'name' => 'required|string',
            'year' => 'required|digits:4|integer',
            'sales' => 'required|integer',
            'cover_image' => 'nullable|image|max:2048',
        ]);

        $data = $request->only(['artist_id', 'name', 'year', 'sales']);

        if ($request->hasFile('cover_image')) {
            $path = $request->file('cover_image')->store('covers', 'public');
            $data['cover_image'] = '/storage/' . $path;
        }

        $album = Album::create($data);
        return response()->json($album, 201);
    }

    public function update(Request $request, $id)
    {
        $album = Album::findOrFail($id);

        $data = $request->only(['name', 'year', 'sales']);

        if ($request->hasFile('cover_image')) {
            if ($album->cover_image) {
                Storage::disk('public')->delete(str_replace('/storage/', '', $album->cover_image));
            }
            $path = $request->file('cover_image')->store('covers', 'public');
            $data['cover_image'] = '/storage/' . $path;
        }

        $album->update($data);
        return response()->json($album);
    }

    public function destroy($id)
    {
        $album = Album::findOrFail($id);
        if ($album->cover_image) {
            Storage::disk('public')->delete(str_replace('/storage/', '', $album->cover_image));
        }
        $album->delete();
        return response()->json(['message' => 'Album deleted successfully']);
    }
}
