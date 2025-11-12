<?php

namespace App\Http\Controllers;

use App\Models\HowItWork;
use Illuminate\Http\Request;

class HowItWorksController extends Controller
{
    public function index()
    {
        $howItWorks = HowItWork::ordered()->get();
        return view('admin.howitworks.index', compact('howItWorks'));
    }

    public function create()
    {
        $existingCount = HowItWork::count();
        if ($existingCount >= 4) {
            return redirect()->route('admin.howitworks.index')->with('error', 'Maximum 4 "How It Works" items are allowed.');
        }

        return view('admin.howitworks.create');
    }

    public function store(Request $request)
    {
        $existingCount = HowItWork::count();
        if ($existingCount >= 4) {
            return redirect()->route('admin.howitworks.index')->with('error', 'Maximum 4 "How It Works" items are allowed.');
        }

        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required',
            'order' => 'required|integer|min:1|max:4',
            'is_active' => 'boolean',
        ]);

        // Check if order is already taken
        $existingOrder = HowItWork::where('order', $request->order)->first();
        if ($existingOrder) {
            return back()->withInput()->withErrors(['order' => 'This order number is already taken. Please choose a different order.']);
        }

        HowItWork::create($request->only(['title', 'description', 'order', 'is_active']));

        return redirect()->route('admin.howitworks.index')->with('success', 'How It Works item created successfully.');
    }

    public function show(HowItWork $howItWork)
    {
        return view('admin.howitworks.show', compact('howItWork'));
    }

    public function edit(HowItWork $howItWork)
    {
        return view('admin.howitworks.edit', compact('howItWork'));
    }

    public function update(Request $request, HowItWork $howItWork)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required',
            'order' => 'required|integer|min:1|max:4',
            'is_active' => 'boolean',
        ]);

        // Check if order is already taken by another record
        $existingOrder = HowItWork::where('order', $request->order)
            ->where('id', '!=', $howItWork->id)
            ->first();
        if ($existingOrder) {
            return back()->withInput()->withErrors(['order' => 'This order number is already taken. Please choose a different order.']);
        }

        $howItWork->update($request->only(['title', 'description', 'order', 'is_active']));

        return redirect()->route('admin.howitworks.index')->with('success', 'How It Works item updated successfully.');
    }

    public function destroy(HowItWork $howItWork)
    {
        $howItWork->delete();

        return redirect()->route('admin.howitworks.index')->with('success', 'How It Works item deleted successfully.');
    }
}
