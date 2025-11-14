<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\HeroSection;
use App\Models\AboutSection;
use App\Models\Service;
use App\Models\HowItWork;
use App\Models\Plan;
use App\Models\ProgressStatistic;
use App\Models\Contact;
use App\Models\ContactSubmission;

class DashboardController extends Controller
{
    public function index()
    {
        // Content Statistics
        $stats = [
            'hero_sections' => HeroSection::count(),
            'about_sections' => AboutSection::count(),
            'services' => Service::count(),
            'how_it_works' => HowItWork::count(),
            'plans' => Plan::count(),
            'progress_stats' => ProgressStatistic::count(),
            'contacts' => Contact::count(),
            'total_sections' => 8, // Fixed number of sections
        ];

        // Content Status
        $contentStatus = [
            'active_hero' => HeroSection::where('is_active', true)->count(),
            'active_services' => Service::where('is_active', true)->count(),
            'active_plans' => Plan::where('is_active', true)->count(),
            'active_progress' => ProgressStatistic::where('is_active', true)->count(),
        ];

        // Contact Submissions Statistics
        $contactSubmissions = [
            'total' => ContactSubmission::count(),
            'new' => ContactSubmission::where('status', 'new')->count(),
            'read' => ContactSubmission::where('status', 'read')->count(),
            'replied' => ContactSubmission::where('status', 'replied')->count(),
            'archived' => ContactSubmission::where('status', 'archived')->count(),
        ];

        // Recent Activity
        $recentSubmissions = ContactSubmission::orderBy('created_at', 'desc')->limit(5)->get();
        $recentContent = collect();

        // Get recent content from each section
        $recentHero = HeroSection::orderBy('updated_at', 'desc')->first();
        $recentService = Service::orderBy('updated_at', 'desc')->first();
        $recentPlan = Plan::orderBy('updated_at', 'desc')->first();

        if ($recentHero) $recentContent->push(['type' => 'Hero Section', 'title' => 'Hero content updated', 'date' => $recentHero->updated_at]);
        if ($recentService) $recentContent->push(['type' => 'Service', 'title' => $recentService->title, 'date' => $recentService->updated_at]);
        if ($recentPlan) $recentContent->push(['type' => 'Plan', 'title' => $recentPlan->name, 'date' => $recentPlan->updated_at]);

        $recentActivity = $recentContent->sortByDesc('date')->take(5);

        // System Health
        $systemHealth = [
            'total_content_items' => array_sum($stats),
            'active_content_percentage' => $stats['total_sections'] > 0 ? round((array_sum($contentStatus) / ($stats['total_sections'] * 2)) * 100, 1) : 0,
            'unread_messages' => $contactSubmissions['new'],
            'last_backup' => now()->subDays(rand(1, 7))->format('M d, Y'), // Simulated
        ];

        return view('admin.dashboard.index', compact(
            'stats',
            'contentStatus',
            'contactSubmissions',
            'recentSubmissions',
            'recentActivity',
            'systemHealth'
        ));
    }
}
