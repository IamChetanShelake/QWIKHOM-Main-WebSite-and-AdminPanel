<?php

namespace App\Http\Controllers;

use App\Models\Plan;
use App\Models\PlanFeature;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PlansController extends Controller
{
    public function index()
    {
        $plans = Plan::with('features')->orderBy('sort_order')->get();
        return view('admin.plans.index', compact('plans'));
    }

    public function create()
    {
        return view('admin.plans.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'price' => 'required|numeric|min:0',
            'features' => 'array',
            'features.*' => 'string|max:255',
            'is_active' => 'boolean'
        ]);

        DB::transaction(function () use ($request) {
            $plan = Plan::create([
                'title' => $request->title,
                'description' => $request->description,
                'price' => $request->price,
                'is_active' => $request->has('is_active'),
                'sort_order' => Plan::max('sort_order') + 1
            ]);

            if ($request->has('features') && is_array($request->features)) {
                foreach ($request->features as $index => $feature) {
                    if (!empty(trim($feature))) {
                        PlanFeature::create([
                            'plan_id' => $plan->id,
                            'feature' => trim($feature),
                            'sort_order' => $index
                        ]);
                    }
                }
            }
        });

        return redirect()->route('admin.plans.index')
            ->with('success', 'Plan created successfully!');
    }

    public function show(Plan $plan)
    {
        $plan->load('features');
        return view('admin.plans.show', compact('plan'));
    }

    public function edit(Plan $plan)
    {
        $plan->load('features');
        return view('admin.plans.edit', compact('plan'));
    }

    public function update(Request $request, Plan $plan)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'price' => 'required|numeric|min:0',
            'features' => 'array',
            'features.*' => 'string|max:255',
            'is_active' => 'boolean'
        ]);

        DB::transaction(function () use ($request, $plan) {
            $plan->update([
                'title' => $request->title,
                'description' => $request->description,
                'price' => $request->price,
                'is_active' => $request->has('is_active')
            ]);

            // Delete existing features
            $plan->features()->delete();

            // Add new features
            if ($request->has('features') && is_array($request->features)) {
                foreach ($request->features as $index => $feature) {
                    if (!empty(trim($feature))) {
                        PlanFeature::create([
                            'plan_id' => $plan->id,
                            'feature' => trim($feature),
                            'sort_order' => $index
                        ]);
                    }
                }
            }
        });

        return redirect()->route('admin.plans.index')
            ->with('success', 'Plan updated successfully!');
    }

    public function destroy(Plan $plan)
    {
        $plan->delete();

        return redirect()->route('admin.plans.index')
            ->with('success', 'Plan deleted successfully!');
    }
}
