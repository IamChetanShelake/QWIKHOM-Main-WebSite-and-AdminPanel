<?php

namespace App\Http\Controllers;

use App\Models\ProgressStatistic;
use Illuminate\Http\Request;

class ProgressController extends Controller
{
    public function index()
    {
        $statistics = ProgressStatistic::orderBy('sort_order')->get();
        return view('admin.progress.index', compact('statistics'));
    }

    public function create()
    {
        return view('admin.progress.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'logo' => 'required|string|max:255',
            'title' => 'required|string|max:255',
            'value' => 'required|numeric|min:0',
            'type' => 'required|in:number,percentage',
            'is_active' => 'boolean'
        ]);

        ProgressStatistic::create([
            'logo' => $request->logo,
            'title' => $request->title,
            'value' => $request->value,
            'type' => $request->type,
            'sort_order' => ProgressStatistic::max('sort_order') + 1,
            'is_active' => $request->has('is_active')
        ]);

        return redirect()->route('admin.progress.index')
            ->with('success', 'Progress statistic created successfully!');
    }

    public function show(ProgressStatistic $progressStatistic)
    {
        return view('admin.progress.show', compact('progressStatistic'));
    }

    public function edit(ProgressStatistic $progressStatistic)
    {
        return view('admin.progress.edit', compact('progressStatistic'));
    }

    public function update(Request $request, ProgressStatistic $progressStatistic)
    {
        $request->validate([
            'logo' => 'required|string|max:255',
            'title' => 'required|string|max:255',
            'value' => 'required|numeric|min:0',
            'type' => 'required|in:number,percentage',
            'is_active' => 'boolean'
        ]);

        $progressStatistic->update([
            'logo' => $request->logo,
            'title' => $request->title,
            'value' => $request->value,
            'type' => $request->type,
            'is_active' => $request->has('is_active')
        ]);

        return redirect()->route('admin.progress.index')
            ->with('success', 'Progress statistic updated successfully!');
    }

    public function destroy(ProgressStatistic $progressStatistic)
    {
        $progressStatistic->delete();

        return redirect()->route('admin.progress.index')
            ->with('success', 'Progress statistic deleted successfully!');
    }
}
