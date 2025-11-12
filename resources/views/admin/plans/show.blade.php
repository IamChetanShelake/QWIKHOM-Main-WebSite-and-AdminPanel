@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- Plan Details -->
            <div class="section-card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <div>
                        <i class="fas fa-eye me-2"></i>Plan Details: {{ $plan->title }}
                        @if($plan->is_active)
                            <span class="badge bg-success ms-2">Active</span>
                        @else
                            <span class="badge bg-secondary ms-2">Inactive</span>
                        @endif
                    </div>
                    <div class="d-flex gap-2">
                        <a href="{{ route('admin.plans.edit', $plan) }}" class="btn btn-primary btn-sm">
                            <i class="fas fa-edit me-1"></i>Edit Plan
                        </a>
                        <a href="{{ route('admin.plans.index') }}" class="btn btn-outline-secondary btn-sm">
                            <i class="fas fa-arrow-left me-1"></i>Back to Plans
                        </a>
                    </div>
                </div>
                <div class="card-body">
                    <!-- Plan Information -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <h5 class="mb-3 text-primary">
                                <i class="fas fa-info-circle me-2"></i>Plan Information
                            </h5>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="card h-100">
                                        <div class="card-body">
                                            <h6 class="card-title">
                                                <i class="fas fa-tag me-2 text-primary"></i>Plan Title
                                            </h6>
                                            <p class="card-text fs-5 fw-bold">{{ $plan->title }}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card h-100">
                                        <div class="card-body">
                                            <h6 class="card-title">
                                                <i class="fas fa-dollar-sign me-2 text-success"></i>Price
                                            </h6>
                                            <p class="card-text">
                                                <span class="fs-4 fw-bold text-success">AED {{ number_format($plan->price, 2) }}</span>
                                                <small class="text-muted">per month</small>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Plan Description -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <h5 class="mb-3 text-info">
                                <i class="fas fa-align-left me-2"></i>Description
                            </h5>
                            <div class="card">
                                <div class="card-body">
                                    <div class="plan-description">
                                        {!! nl2br(e($plan->description)) !!}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Plan Features -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <h5 class="mb-3 text-warning">
                                <i class="fas fa-list-check me-2"></i>Plan Features ({{ $plan->features->count() }})
                            </h5>
                            @if($plan->features->count() > 0)
                                <div class="row">
                                    @foreach($plan->features as $feature)
                                        <div class="col-md-6 mb-3">
                                            <div class="card h-100 border-success">
                                                <div class="card-body d-flex align-items-center">
                                                    <i class="fas fa-check-circle text-success me-3 fs-5"></i>
                                                    <span class="flex-grow-1">{{ $feature->feature }}</span>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            @else
                                <div class="card">
                                    <div class="card-body text-center text-muted">
                                        <i class="fas fa-exclamation-triangle fa-2x mb-3"></i>
                                        <p>No features defined for this plan.</p>
                                    </div>
                                </div>
                            @endif
                        </div>
                    </div>

                    <!-- Plan Statistics -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <h5 class="mb-3 text-secondary">
                                <i class="fas fa-chart-bar me-2"></i>Plan Statistics
                            </h5>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="card text-center">
                                        <div class="card-body">
                                            <i class="fas fa-list-check fa-2x text-warning mb-2"></i>
                                            <h4 class="card-title">{{ $plan->features->count() }}</h4>
                                            <p class="card-text text-muted">Features</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="card text-center">
                                        <div class="card-body">
                                            <i class="fas fa-sort-numeric-down fa-2x text-info mb-2"></i>
                                            <h4 class="card-title">{{ $plan->sort_order }}</h4>
                                            <p class="card-text text-muted">Sort Order</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="card text-center">
                                        <div class="card-body">
                                            <i class="fas fa-calendar-plus fa-2x text-primary mb-2"></i>
                                            <h6 class="card-title">{{ $plan->created_at->format('M d, Y') }}</h6>
                                            <p class="card-text text-muted">Created</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="card text-center">
                                        <div class="card-body">
                                            <i class="fas fa-calendar-check fa-2x text-success mb-2"></i>
                                            <h6 class="card-title">{{ $plan->updated_at->format('M d, Y') }}</h6>
                                            <p class="card-text text-muted">Last Updated</p>
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
                                            <strong>Plan Management Actions</strong>
                                        </div>
                                        <div class="d-flex gap-2">
                                            <a href="{{ route('admin.plans.edit', $plan) }}" class="btn btn-primary">
                                                <i class="fas fa-edit me-2"></i>Edit Plan
                                            </a>
                                            <form action="{{ route('admin.plans.destroy', $plan) }}" method="POST" class="d-inline" onsubmit="return confirm('Are you sure you want to delete this plan? This action cannot be undone.')">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-danger">
                                                    <i class="fas fa-trash me-2"></i>Delete Plan
                                                </button>
                                            </form>
                                            <a href="{{ route('admin.plans.index') }}" class="btn btn-outline-secondary">
                                                <i class="fas fa-arrow-left me-2"></i>Back to Plans
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
