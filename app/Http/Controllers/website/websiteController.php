<?php

namespace App\Http\Controllers\website;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class websiteController extends Controller
{
    public function index()
    {

        $aboutSections = \App\Models\AboutSection::where('is_active', true)->with(['keyPoints' => function ($q) {
            $q->where('is_active', true)->orderBy('sort_order');
        }])->first();
        $heroSections = \App\Models\HeroSection::all();
        $services = \App\Models\Service::where('is_active', true)->get();
        $howItWorks = \App\Models\HowItWork::ordered()->get();
        $plans = \App\Models\Plan::with('features')->where('is_active', true)->orderBy('sort_order')->get();
        // $testimonials = \App\Models\Testimonial::where('is_active', true)->get();
        // $faqs = \App\Models\Faq::where('is_active', true)->get();
        $keyFeatures = \App\Models\PlanFeature::all();
        $statistics = \App\Models\ProgressStatistic::where('is_active', true)->get();
        // $downloads = \App\Models\Download::where('is_active', true)->get();
        $contact = \App\Models\Contact::where('is_active', true)->get();


        // return view('website.index', compact('aboutSections', 'heroSections', 'services', 'plans', 'testimonials', 'faqs', 'keyFeatures', 'statistics', 'downloads', 'contact'));
        return view('website.index', compact(
            'aboutSections',
            'heroSections',
            'services',
            'plans',
            'keyFeatures',
            'statistics',
            'howItWorks',
            'contact'
        ));
    }
}
