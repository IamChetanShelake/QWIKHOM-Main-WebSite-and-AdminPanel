<?php

namespace App\Http\Controllers;

use App\Models\AboutSection;
use App\Models\AboutKeyPoint;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class AboutController extends Controller
{
    public function index()
    {
        $aboutSections = AboutSection::with('keyPoints')->get();
        return view('admin.about.index', compact('aboutSections'));
    }

    public function create()
    {
        return view('admin.about.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required',
            'image1' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'image2' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'help_phone' => 'nullable|string|max:20',
            'key_points.*.title' => 'required|string|max:255',
            'key_points.*.description' => 'required|string',
            'key_points.*.image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $data = $request->only(['title', 'description', 'help_phone', 'is_active']);

        // Handle image uploads
        for ($i = 1; $i <= 2; $i++) {
            $imageField = 'image' . $i;
            if ($request->hasFile($imageField)) {
                $imageName = time() . '_about_' . $i . '.' . $request->file($imageField)->extension();
                $request->file($imageField)->move(public_path('images/about'), $imageName);
                $data[$imageField] = 'images/about/' . $imageName;
            }
        }

        $aboutSection = AboutSection::create($data);

        // Handle key points
        if ($request->has('key_points')) {
            foreach ($request->key_points as $index => $keyPointData) {
                $keyPointData['about_section_id'] = $aboutSection->id;
                $keyPointData['sort_order'] = $index;

                if (isset($keyPointData['image']) && $request->hasFile("key_points.{$index}.image")) {
                    $imageName = time() . '_keypoint_' . $index . '.' . $request->file("key_points.{$index}.image")->extension();
                    $request->file("key_points.{$index}.image")->move(public_path('images/about/keypoints'), $imageName);
                    $keyPointData['image'] = 'images/about/keypoints/' . $imageName;
                }

                AboutKeyPoint::create($keyPointData);
            }
        }

        return redirect()->route('admin.about.index')->with('success', 'About section created successfully.');
    }

    public function show(AboutSection $aboutSection)
    {
        $aboutSection->load('keyPoints');
        return view('admin.about.show', compact('aboutSection'));
    }

    public function edit(AboutSection $aboutSection)
    {
        $aboutSection->load('keyPoints');
        return view('admin.about.edit', compact('aboutSection'));
    }

    public function update(Request $request, AboutSection $aboutSection)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required',
            'image1' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'image2' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'help_phone' => 'nullable|string|max:20',
            'key_points.*.title' => 'required|string|max:255',
            'key_points.*.description' => 'required|string',
            'key_points.*.image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $data = $request->only(['title', 'description', 'help_phone', 'is_active']);

        // Handle image uploads
        for ($i = 1; $i <= 2; $i++) {
            $imageField = 'image' . $i;
            if ($request->hasFile($imageField)) {
                // Delete old image if exists
                if ($aboutSection->$imageField && file_exists(public_path($aboutSection->$imageField))) {
                    unlink(public_path($aboutSection->$imageField));
                }

                $imageName = time() . '_about_' . $i . '.' . $request->file($imageField)->extension();
                $request->file($imageField)->move(public_path('images/about'), $imageName);
                $data[$imageField] = 'images/about/' . $imageName;
            }
        }

        $aboutSection->update($data);

        // Handle key points - delete existing and create new ones
        $aboutSection->keyPoints()->delete(); // This will also delete associated images

        if ($request->has('key_points')) {
            foreach ($request->key_points as $index => $keyPointData) {
                $keyPointData['about_section_id'] = $aboutSection->id;
                $keyPointData['sort_order'] = $index;

                if (isset($keyPointData['image']) && $request->hasFile("key_points.{$index}.image")) {
                    $imageName = time() . '_keypoint_' . $index . '.' . $request->file("key_points.{$index}.image")->extension();
                    $request->file("key_points.{$index}.image")->move(public_path('images/about/keypoints'), $imageName);
                    $keyPointData['image'] = 'images/about/keypoints/' . $imageName;
                }

                AboutKeyPoint::create($keyPointData);
            }
        }

        return redirect()->route('admin.about.index')->with('success', 'About section updated successfully.');
    }

    public function destroy(AboutSection $aboutSection)
    {
        // Delete associated images
        for ($i = 1; $i <= 2; $i++) {
            $imageField = 'image' . $i;
            if ($aboutSection->$imageField && file_exists(public_path($aboutSection->$imageField))) {
                unlink(public_path($aboutSection->$imageField));
            }
        }

        // Delete key point images
        foreach ($aboutSection->keyPoints as $keyPoint) {
            if ($keyPoint->image && file_exists(public_path($keyPoint->image))) {
                unlink(public_path($keyPoint->image));
            }
        }

        $aboutSection->delete();

        return redirect()->route('admin.about.index')->with('success', 'About section deleted successfully.');
    }
}
