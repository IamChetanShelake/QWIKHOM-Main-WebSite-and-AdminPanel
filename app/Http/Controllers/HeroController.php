<?php

namespace App\Http\Controllers;

use App\Models\HeroSection;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class HeroController extends Controller
{
    public function index()
    {
        $heroSections = HeroSection::all();
        return view('admin.hero.index', compact('heroSections'));
    }

    public function create()
    {
        return view('admin.hero.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'main_title' => 'required',
            'description' => 'required',
            'image1' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'image2' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'image3' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'image4' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $data = $request->only(['main_title', 'description', 'is_active']);

        // Handle image uploads
        for ($i = 1; $i <= 4; $i++) {
            $imageField = 'image' . $i;
            if ($request->hasFile($imageField)) {
                $imageName = time() . '_' . $i . '.' . $request->file($imageField)->extension();
                $request->file($imageField)->move(public_path('images/hero'), $imageName);
                $data[$imageField] = 'images/hero/' . $imageName;
            }
        }

        HeroSection::create($data);

        return redirect()->route('admin.hero.index')->with('success', 'Hero section created successfully.');
    }

    public function show(HeroSection $heroSection)
    {
        return view('admin.hero.show', compact('heroSection'));
    }

    public function edit(HeroSection $heroSection)
    {
        return view('admin.hero.edit', compact('heroSection'));
    }

    public function update(Request $request, HeroSection $heroSection)
    {
        $request->validate([
            'main_title' => 'required',
            'description' => 'required',
            'image1' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'image2' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'image3' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'image4' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $data = $request->only(['main_title', 'description', 'is_active']);

        // Handle image uploads
        for ($i = 1; $i <= 4; $i++) {
            $imageField = 'image' . $i;
            if ($request->hasFile($imageField)) {
                // Delete old image if exists
                if ($heroSection->$imageField && file_exists(public_path($heroSection->$imageField))) {
                    unlink(public_path($heroSection->$imageField));
                }

                $imageName = time() . '_' . $i . '.' . $request->file($imageField)->extension();
                $request->file($imageField)->move(public_path('images/hero'), $imageName);
                $data[$imageField] = 'images/hero/' . $imageName;
            }
        }

        $heroSection->update($data);

        return redirect()->route('admin.hero.index')->with('success', 'Hero section updated successfully.');
    }

    public function destroy(HeroSection $heroSection)
    {
        // Delete associated images
        for ($i = 1; $i <= 4; $i++) {
            $imageField = 'image' . $i;
            if ($heroSection->$imageField && file_exists(public_path($heroSection->$imageField))) {
                unlink(public_path($heroSection->$imageField));
            }
        }

        $heroSection->delete();

        return redirect()->route('admin.hero.index')->with('success', 'Hero section deleted successfully.');
    }
}
