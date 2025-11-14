@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- Progress Statistic Details -->
            <div class="section-card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <div>
                        <i class="fas fa-eye me-2"></i>Progress Statistic Details: {{ $progressStatistic->title }}
                        @if($progressStatistic->is_active)
                            <span class="badge bg-success ms-2">Active</span>
                        @else
                            <span class="badge bg-secondary ms-2">Inactive</span>
                        @endif
                    </div>
                    <div class="d-flex gap-2">
                        <a href="{{ route('admin.progress.edit', $progressStatistic) }}" class="btn btn-primary btn-sm">
                            <i class="fas fa-edit me-1"></i>Edit Statistic
                        </a>
                        <a href="{{ route('admin.progress.index') }}" class="btn btn-outline-secondary btn-sm">
                            <i class="fas fa-arrow-left me-1"></i>Back to Statistics
                        </a>
                    </div>
                </div>
                <div class="card-body">
                    <!-- Statistic Preview -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <h5 class="mb-3 text-primary">
                                <i class="fas fa-eye me-2"></i>Statistic Preview
                            </h5>
                            <div class="text-center p-5 border rounded bg-light">
                                <div class="mb-4">
                                    <i class="{{ $progressStatistic->logo }} fa-4x text-primary"></i>
                                </div>
                                <h1 class="display-4 mb-3">
                                    {{ number_format($progressStatistic->value, $progressStatistic->type === 'percentage' ? 1 : 0) }}
                                    <span class="text-primary">{{ $progressStatistic->type === 'percentage' ? '%' : '+' }}</span>
                                </h1>
                                <h4 class="text-muted">{{ $progressStatistic->title }}</h4>
                            </div>
                        </div>
                    </div>

                    <!-- Statistic Information -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <h5 class="mb-3 text-info">
                                <i class="fas fa-info-circle me-2"></i>Statistic Information
                            </h5>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="card h-100">
                                        <div class="card-body">
                                            <h6 class="card-title">
                                                <i class="fas fa-tag me-2 text-primary"></i>Title
                                            </h6>
                                            <p class="card-text fs-5 fw-bold">{{ $progressStatistic->title }}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card h-100">
                                        <div class="card-body">
                                            <h6 class="card-title">
                                                <i class="fas fa-image me-2 text-success"></i>Icon
                                            </h6>
                                            <div class="d-flex align-items-center">
                                                <i class="{{ $progressStatistic->logo }} fa-2x text-primary me-3"></i>
                                                <code class="fs-6">{{ $progressStatistic->logo }}</code>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Value & Type Information -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <h5 class="mb-3 text-warning">
                                <i class="fas fa-chart-bar me-2"></i>Value & Display Settings
                            </h5>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="card text-center">
                                        <div class="card-body">
                                            <i class="fas fa-calculator fa-2x text-warning mb-2"></i>
                                            <h4 class="card-title">{{ number_format($progressStatistic->value, 2) }}</h4>
                                            <p class="card-text text-muted">Raw Value</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card text-center">
                                        <div class="card-body">
                                            <i class="fas fa-percentage fa-2x text-info mb-2"></i>
                                            <h4 class="card-title">
                                                @if($progressStatistic->type === 'percentage')
                                                    <span class="badge bg-warning">Percentage (%)</span>
                                                @else
                                                    <span class="badge bg-info">Number (+)</span>
                                                @endif
                                            </h4>
                                            <p class="card-text text-muted">Display Type</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card text-center">
                                        <div class="card-body">
                                            <i class="fas fa-hashtag fa-2x text-secondary mb-2"></i>
                                            <h4 class="card-title">{{ $progressStatistic->sort_order }}</h4>
                                            <p class="card-text text-muted">Sort Order</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Statistics Overview -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <h5 class="mb-3 text-secondary">
                                <i class="fas fa-chart-pie me-2"></i>Statistics Overview
                            </h5>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="card text-center">
                                        <div class="card-body">
                                            <i class="fas fa-calendar-plus fa-2x text-primary mb-2"></i>
                                            <h6 class="card-title">{{ $progressStatistic->created_at->format('M d, Y') }}</h6>
                                            <p class="card-text text-muted">Created</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="card text-center">
                                        <div class="card-body">
                                            <i class="fas fa-calendar-check fa-2x text-success mb-2"></i>
                                            <h6 class="card-title">{{ $progressStatistic->updated_at->format('M d, Y') }}</h6>
                                            <p class="card-text text-muted">Last Updated</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="card text-center">
                                        <div class="card-body">
                                            <i class="fas fa-toggle-on fa-2x text-info mb-2"></i>
                                            <h6 class="card-title">
                                                @if($progressStatistic->is_active)
                                                    <span class="badge bg-success">Active</span>
                                                @else
                                                    <span class="badge bg-secondary">Inactive</span>
                                                @endif
                                            </h6>
                                            <p class="card-text text-muted">Status</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="card text-center">
                                        <div class="card-body">
                                            <i class="fas fa-database fa-2x text-warning mb-2"></i>
                                            <h6 class="card-title">{{ $progressStatistic->id }}</h6>
                                            <p class="card-text text-muted">ID</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Action Buttons -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card border-0 bg-light">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div>
                                            <i class="fas fa-cogs me-2 text-primary"></i>
                                            <strong>Statistic Management Actions</strong>
                                        </div>
                                        <div class="d-flex gap-2">
                                            <a href="{{ route('admin.progress.edit', $progressStatistic) }}" class="btn btn-primary">
                                                <i class="fas fa-edit me-2"></i>Edit Statistic
                                            </a>
                                            <form action="{{ route('admin.progress.destroy', $progressStatistic) }}" method="POST" class="d-inline" onsubmit="return confirm('Are you sure you want to delete this statistic? This action cannot be undone.')">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-danger">
                                                    <i class="fas fa-trash me-2"></i>Delete Statistic
                                                </button>
                                            </form>
                                            <a href="{{ route('admin.progress.index') }}" class="btn btn-outline-secondary">
                                                <i class="fas fa-arrow-left me-2"></i>Back to Statistics
                                            </a>
                                        </div>
                                    </div>
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

@section('scripts')
<script>
$(document).ready(function() {
    // Initialize tooltips
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl);
    });
});
</script>
@endsection
