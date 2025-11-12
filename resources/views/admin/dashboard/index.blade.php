@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">

        <!-- Dashboard Header -->
        <div class="row mb-4">
            <div class="col-12">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h1 class="h3 mb-0">
                            <i class="fas fa-tachometer-alt me-2 text-primary"></i>Dashboard Overview
                        </h1>
                        <p class="text-muted mb-0">Welcome back! Here's what's happening with your website content.</p>
                    </div>
                    <div class="text-end">
                        <small class="text-muted">Last updated: {{ now()->format('M d, Y \a\t h:i A') }}</small>
                    </div>
                </div>
            </div>
        </div>

        <!-- Statistics Cards Row 1 -->
        <div class="row mb-4">
            <!-- Content Sections -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="stats-card">
                    <div class="icon">
                        <i class="fas fa-globe text-primary"></i>
                    </div>
                    <h3>{{ $stats['total_sections'] }}</h3>
                    <p>Website Sections</p>
                    <div class="progress mt-2" style="height: 4px;">
                        <div class="progress-bar bg-primary" style="width: 100%"></div>
                    </div>
                </div>
            </div>

            <!-- Total Content Items -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="stats-card">
                    <div class="icon">
                        <i class="fas fa-database text-success"></i>
                    </div>
                    <h3>{{ $systemHealth['total_content_items'] }}</h3>
                    <p>Total Content Items</p>
                    <div class="progress mt-2" style="height: 4px;">
                        <div class="progress-bar bg-success" style="width: {{ $systemHealth['active_content_percentage'] }}%"></div>
                    </div>
                </div>
            </div>

            <!-- Contact Submissions -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="stats-card {{ $contactSubmissions['new'] > 0 ? 'border-warning' : '' }}">
                    <div class="icon">
                        <i class="fas fa-envelope {{ $contactSubmissions['new'] > 0 ? 'text-warning' : 'text-info' }}"></i>
                    </div>
                    <h3>{{ $contactSubmissions['total'] }}</h3>
                    <p>Contact Submissions</p>
                    @if($contactSubmissions['new'] > 0)
                        <span class="badge bg-warning">{{ $contactSubmissions['new'] }} new</span>
                    @endif
                </div>
            </div>

            <!-- Active Content -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="stats-card">
                    <div class="icon">
                        <i class="fas fa-check-circle text-success"></i>
                    </div>
                    <h3>{{ $systemHealth['active_content_percentage'] }}%</h3>
                    <p>Content Active</p>
                    <div class="progress mt-2" style="height: 4px;">
                        <div class="progress-bar bg-success" style="width: {{ $systemHealth['active_content_percentage'] }}%"></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Content Sections Overview -->
        <div class="row mb-4">
            <div class="col-12">
                <div class="section-card">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <h5 class="mb-0">
                            <i class="fas fa-th-large me-2 text-primary"></i>Content Sections Overview
                        </h5>
                        <span class="badge bg-info">{{ $stats['total_sections'] }} sections</span>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <!-- Hero Section -->
                            <div class="col-lg-3 col-md-6 mb-3">
                                <div class="d-flex align-items-center p-3 border rounded">
                                    <div class="flex-shrink-0">
                                        <i class="fas fa-image fa-2x text-primary me-3"></i>
                                    </div>
                                    <div class="flex-grow-1">
                                        <h6 class="mb-1">Hero Section</h6>
                                        <small class="text-muted">{{ $stats['hero_sections'] }} item{{ $stats['hero_sections'] !== 1 ? 's' : '' }}</small>
                                        @if($contentStatus['active_hero'] > 0)
                                            <span class="badge bg-success ms-2">Active</span>
                                        @endif
                                    </div>
                                    <a href="{{ route('admin.hero.index') }}" class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-eye"></i>
                                    </a>
                                </div>
                            </div>

                            <!-- About Section -->
                            <div class="col-lg-3 col-md-6 mb-3">
                                <div class="d-flex align-items-center p-3 border rounded">
                                    <div class="flex-shrink-0">
                                        <i class="fas fa-info-circle fa-2x text-info me-3"></i>
                                    </div>
                                    <div class="flex-grow-1">
                                        <h6 class="mb-1">About Section</h6>
                                        <small class="text-muted">{{ $stats['about_sections'] }} item{{ $stats['about_sections'] !== 1 ? 's' : '' }}</small>
                                    </div>
                                    <a href="{{ route('admin.about.index') }}" class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-eye"></i>
                                    </a>
                                </div>
                            </div>

                            <!-- Services -->
                            <div class="col-lg-3 col-md-6 mb-3">
                                <div class="d-flex align-items-center p-3 border rounded">
                                    <div class="flex-shrink-0">
                                        <i class="fas fa-cogs fa-2x text-warning me-3"></i>
                                    </div>
                                    <div class="flex-grow-1">
                                        <h6 class="mb-1">Services</h6>
                                        <small class="text-muted">{{ $stats['services'] }} item{{ $stats['services'] !== 1 ? 's' : '' }}</small>
                                        @if($contentStatus['active_services'] > 0)
                                            <span class="badge bg-success ms-2">{{ $contentStatus['active_services'] }} active</span>
                                        @endif
                                    </div>
                                    <a href="{{ route('admin.services.index') }}" class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-eye"></i>
                                    </a>
                                </div>
                            </div>

                            <!-- How It Works -->
                            <div class="col-lg-3 col-md-6 mb-3">
                                <div class="d-flex align-items-center p-3 border rounded">
                                    <div class="flex-shrink-0">
                                        <i class="fas fa-list-ol fa-2x text-secondary me-3"></i>
                                    </div>
                                    <div class="flex-grow-1">
                                        <h6 class="mb-1">How It Works</h6>
                                        <small class="text-muted">{{ $stats['how_it_works'] }}/4 steps</small>
                                    </div>
                                    <a href="{{ route('admin.howitworks.index') }}" class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-eye"></i>
                                    </a>
                                </div>
                            </div>

                            <!-- Plans -->
                            <div class="col-lg-3 col-md-6 mb-3">
                                <div class="d-flex align-items-center p-3 border rounded">
                                    <div class="flex-shrink-0">
                                        <i class="fas fa-tags fa-2x text-danger me-3"></i>
                                    </div>
                                    <div class="flex-grow-1">
                                        <h6 class="mb-1">Pricing Plans</h6>
                                        <small class="text-muted">{{ $stats['plans'] }} plan{{ $stats['plans'] !== 1 ? 's' : '' }}</small>
                                        @if($contentStatus['active_plans'] > 0)
                                            <span class="badge bg-success ms-2">{{ $contentStatus['active_plans'] }} active</span>
                                        @endif
                                    </div>
                                    <a href="{{ route('admin.plans.index') }}" class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-eye"></i>
                                    </a>
                                </div>
                            </div>

                            <!-- Progress Stats -->
                            <div class="col-lg-3 col-md-6 mb-3">
                                <div class="d-flex align-items-center p-3 border rounded">
                                    <div class="flex-shrink-0">
                                        <i class="fas fa-chart-bar fa-2x text-success me-3"></i>
                                    </div>
                                    <div class="flex-grow-1">
                                        <h6 class="mb-1">Progress Stats</h6>
                                        <small class="text-muted">{{ $stats['progress_stats'] }} item{{ $stats['progress_stats'] !== 1 ? 's' : '' }}</small>
                                        @if($contentStatus['active_progress'] > 0)
                                            <span class="badge bg-success ms-2">{{ $contentStatus['active_progress'] }} active</span>
                                        @endif
                                    </div>
                                    <a href="{{ route('admin.progress.index') }}" class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-eye"></i>
                                    </a>
                                </div>
                            </div>

                            <!-- Contact Info -->
                            <div class="col-lg-3 col-md-6 mb-3">
                                <div class="d-flex align-items-center p-3 border rounded">
                                    <div class="flex-shrink-0">
                                        <i class="fas fa-address-card fa-2x text-info me-3"></i>
                                    </div>
                                    <div class="flex-grow-1">
                                        <h6 class="mb-1">Contact Info</h6>
                                        <small class="text-muted">{{ $stats['contacts'] }} entr{{ $stats['contacts'] !== 1 ? 'ies' : 'y' }}</small>
                                    </div>
                                    <a href="{{ route('admin.contact.index') }}" class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-eye"></i>
                                    </a>
                                </div>
                            </div>

                            <!-- Contact Submissions -->
                            <div class="col-lg-3 col-md-6 mb-3">
                                <div class="d-flex align-items-center p-3 border rounded {{ $contactSubmissions['new'] > 0 ? 'border-warning' : '' }}">
                                    <div class="flex-shrink-0">
                                        <i class="fas fa-inbox fa-2x {{ $contactSubmissions['new'] > 0 ? 'text-warning' : 'text-muted' }} me-3"></i>
                                    </div>
                                    <div class="flex-grow-1">
                                        <h6 class="mb-1">Submissions</h6>
                                        <small class="text-muted">{{ $contactSubmissions['total'] }} total</small>
                                        @if($contactSubmissions['new'] > 0)
                                            <span class="badge bg-warning ms-2">{{ $contactSubmissions['new'] }} new</span>
                                        @endif
                                    </div>
                                    <a href="{{ route('admin.contact-submissions.index') }}" class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-eye"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Main Content Row -->
        <div class="row">
            <!-- Recent Activity & Contact Submissions -->
            <div class="col-lg-8">
                <div class="row">
                    <!-- Recent Contact Submissions -->
                    <div class="col-12 mb-4">
                        <div class="section-card">
                            <div class="card-header d-flex justify-content-between align-items-center">
                                <h5 class="mb-0">
                                    <i class="fas fa-envelope me-2 text-warning"></i>Recent Contact Submissions
                                </h5>
                                <a href="{{ route('admin.contact-submissions.index') }}" class="btn btn-sm btn-outline-primary">
                                    View All
                                </a>
                            </div>
                            <div class="card-body">
                                @if($recentSubmissions->count() > 0)
                                    <div class="list-group list-group-flush">
                                        @foreach($recentSubmissions as $submission)
                                            <div class="list-group-item px-0">
                                                <div class="d-flex justify-content-between align-items-start">
                                                    <div class="flex-grow-1">
                                                        <h6 class="mb-1">{{ Str::limit($submission->name, 30) }}</h6>
                                                        <p class="mb-1 text-muted small">{{ Str::limit($submission->message, 60) }}</p>
                                                        <small class="text-muted">
                                                            <i class="fas fa-envelope me-1"></i>{{ $submission->email }} •
                                                            <i class="fas fa-calendar me-1"></i>{{ $submission->created_at->diffForHumans() }}
                                                        </small>
                                                    </div>
                                                    <div class="text-end">
                                                        <span class="badge bg-{{ $submission->status === 'new' ? 'warning' : ($submission->status === 'read' ? 'info' : ($submission->status === 'replied' ? 'success' : 'secondary')) }}">
                                                            {{ ucfirst($submission->status) }}
                                                        </span>
                                                        <br>
                                                        <a href="{{ route('admin.contact-submissions.show', $submission) }}" class="btn btn-sm btn-outline-primary mt-1">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                @else
                                    <div class="text-center py-4">
                                        <i class="fas fa-inbox fa-3x text-muted mb-3"></i>
                                        <h6 class="text-muted">No contact submissions yet</h6>
                                        <p class="text-muted small">Contact submissions from your website will appear here.</p>
                                    </div>
                                @endif
                            </div>
                        </div>
                    </div>

                    <!-- Recent Content Activity -->
                    <div class="col-12">
                        <div class="section-card">
                            <div class="card-header">
                                <h5 class="mb-0">
                                    <i class="fas fa-history me-2 text-info"></i>Recent Content Activity
                                </h5>
                            </div>
                            <div class="card-body">
                                @if($recentActivity->count() > 0)
                                    <div class="timeline">
                                        @foreach($recentActivity as $activity)
                                            <div class="timeline-item">
                                                <div class="timeline-marker bg-primary"></div>
                                                <div class="timeline-content">
                                                    <h6 class="mb-1">{{ $activity['title'] }}</h6>
                                                    <small class="text-muted">
                                                        <i class="fas fa-tag me-1"></i>{{ $activity['type'] }} •
                                                        <i class="fas fa-clock me-1"></i>{{ $activity['date']->diffForHumans() }}
                                                    </small>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                @else
                                    <div class="text-center py-4">
                                        <i class="fas fa-history fa-3x text-muted mb-3"></i>
                                        <h6 class="text-muted">No recent activity</h6>
                                        <p class="text-muted small">Content updates will appear here.</p>
                                    </div>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Sidebar -->
            <div class="col-lg-4">
                <!-- Quick Actions -->
                <div class="section-card mb-4">
                    <div class="card-header">
                        <h5 class="mb-0">
                            <i class="fas fa-bolt me-2 text-warning"></i>Quick Actions
                        </h5>
                    </div>
                    <div class="card-body">
                        <div class="d-grid gap-2">
                            <a href="{{ route('admin.contact.create') }}" class="btn btn-outline-primary">
                                <i class="fas fa-plus me-2"></i>Add Contact Info
                            </a>
                            <a href="{{ route('admin.services.create') }}" class="btn btn-outline-success">
                                <i class="fas fa-plus me-2"></i>Add Service
                            </a>
                            <a href="{{ route('admin.plans.create') }}" class="btn btn-outline-info">
                                <i class="fas fa-plus me-2"></i>Create Plan
                            </a>
                            <a href="{{ route('admin.contact-submissions.index') }}" class="btn btn-outline-warning">
                                <i class="fas fa-envelope me-2"></i>Check Messages
                                @if($contactSubmissions['new'] > 0)
                                    <span class="badge bg-warning ms-2">{{ $contactSubmissions['new'] }}</span>
                                @endif
                            </a>
                        </div>
                    </div>
                </div>

                <!-- System Health -->
                <div class="section-card mb-4">
                    <div class="card-header">
                        <h5 class="mb-0">
                            <i class="fas fa-heartbeat me-2 text-success"></i>System Health
                        </h5>
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <span class="small">Content Completion</span>
                                <span class="small fw-bold">{{ $systemHealth['active_content_percentage'] }}%</span>
                            </div>
                            <div class="progress" style="height: 6px;">
                                <div class="progress-bar bg-success" style="width: {{ $systemHealth['active_content_percentage'] }}%"></div>
                            </div>
                        </div>

                        <div class="row text-center">
                            <div class="col-6">
                                <div class="border-end">
                                    <h6 class="mb-1">{{ $systemHealth['unread_messages'] }}</h6>
                                    <small class="text-muted">Unread Messages</small>
                                </div>
                            </div>
                            <div class="col-6">
                                <h6 class="mb-1">{{ $stats['total_sections'] }}</h6>
                                <small class="text-muted">Sections</small>
                            </div>
                        </div>

                        <hr>

                        <div class="small text-muted">
                            <i class="fas fa-shield-alt me-1"></i>Last backup: {{ $systemHealth['last_backup'] }}<br>
                            <i class="fas fa-server me-1"></i>All systems operational
                        </div>
                    </div>
                </div>

                <!-- Contact Submissions Summary -->
                <div class="section-card">
                    <div class="card-header">
                        <h5 class="mb-0">
                            <i class="fas fa-chart-pie me-2 text-info"></i>Message Status
                        </h5>
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <div class="d-flex justify-content-between align-items-center">
                                <span><i class="fas fa-circle text-warning me-2"></i>New</span>
                                <span class="badge bg-warning">{{ $contactSubmissions['new'] }}</span>
                            </div>
                        </div>
                        <div class="mb-3">
                            <div class="d-flex justify-content-between align-items-center">
                                <span><i class="fas fa-circle text-info me-2"></i>Read</span>
                                <span class="badge bg-info">{{ $contactSubmissions['read'] }}</span>
                            </div>
                        </div>
                        <div class="mb-3">
                            <div class="d-flex justify-content-between align-items-center">
                                <span><i class="fas fa-circle text-success me-2"></i>Replied</span>
                                <span class="badge bg-success">{{ $contactSubmissions['replied'] }}</span>
                            </div>
                        </div>
                        <div class="mb-0">
                            <div class="d-flex justify-content-between align-items-center">
                                <span><i class="fas fa-circle text-secondary me-2"></i>Archived</span>
                                <span class="badge bg-secondary">{{ $contactSubmissions['archived'] }}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        </div>
    </div>
</main>
@endsection

@section('styles')
<style>
.stats-card {
    background: white;
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    border: 1px solid #e9ecef;
    transition: transform 0.2s;
}

.stats-card:hover {
    transform: translateY(-2px);
    box-shadow: 0 4px 20px rgba(0,0,0,0.15);
}

.stats-card .icon {
    width: 50px;
    height: 50px;
    border-radius: 50%;
    background: rgba(0,123,255,0.1);
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 15px;
}

.stats-card h3 {
    font-size: 2rem;
    font-weight: bold;
    margin-bottom: 5px;
    color: #333;
}

.stats-card p {
    color: #666;
    margin: 0;
    font-size: 0.9rem;
}

.section-card {
    background: white;
    border-radius: 10px;
    box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    border: 1px solid #e9ecef;
    overflow: hidden;
}

.section-card .card-header {
    background: #f8f9fa;
    border-bottom: 1px solid #e9ecef;
    padding: 15px 20px;
    font-weight: 600;
}

.section-card .card-body {
    padding: 20px;
}

.timeline {
    position: relative;
    padding-left: 30px;
}

.timeline::before {
    content: '';
    position: absolute;
    left: 15px;
    top: 0;
    bottom: 0;
    width: 2px;
    background: #e9ecef;
}

.timeline-item {
    position: relative;
    margin-bottom: 20px;
}

.timeline-marker {
    position: absolute;
    left: -22px;
    top: 5px;
    width: 12px;
    height: 12px;
    border-radius: 50%;
    border: 2px solid white;
}

.timeline-content {
    background: #f8f9fa;
    padding: 10px 15px;
    border-radius: 5px;
    border-left: 3px solid #007bff;
}
</style>
@endsection
