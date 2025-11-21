<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use App\Models\User;

class LocationController extends Controller
{
    /**
     * Fetch current user's location (only for service providers).
     */
    public function show(Request $request): JsonResponse
    {
        $serviceProviderId = $request->serviceProvider;

        $serviceProvider = User::find($serviceProviderId);

        if ($serviceProvider->role !== 'serviceprovider') {
            return response()->json(['error' => 'Access denied'], 403);
        }

        return response()->json([
            'latitude' => $serviceProvider->latitude,
            'longitude' => $serviceProvider->longitude,
            'last_updated' => $serviceProvider->last_location_update,
        ]);
    }

    /**
     * Update current user's location (only for service providers).
     */
    public function update(Request $request): JsonResponse
    {
        $serviceProviderId = $request->serviceProvider;

        $serviceProvider = User::find($serviceProviderId);

        if ($serviceProvider->role !== 'serviceprovider') {
            return response()->json(['error' => 'Access denied'], 403);
        }

        $request->validate([
            'latitude' => 'required|numeric|between:-90,90',
            'longitude' => 'required|numeric|between:-180,180',
        ]);

        $serviceProvider->update([
            'latitude' => $request->latitude,
            'longitude' => $request->longitude,
            'last_location_update' => now(),
        ]);

        return response()->json([
            'message' => 'Location updated successfully',
            'latitude' => $serviceProvider->latitude,
            'longitude' => $serviceProvider->longitude,
            'last_updated' => $serviceProvider->last_location_update,
        ]);
    }
}
