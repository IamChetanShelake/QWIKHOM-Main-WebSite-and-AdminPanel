@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- Plans Section Management -->
            <div class="section-card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <div>
                        <i class="fas fa-tags me-2"></i>Plans Section Management
                        <span class="badge bg-info ms-2">{{ $plans->count() }} plans</span>
                    </div>
                    <a href="{{ route('admin.plans.create') }}" class="btn btn-custom btn-sm">
                        <i class="fas fa-plus me-1"></i>Add Plan
                    </a>
                </div>
                <div class="card-body">
                    @if(session('success'))
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <i class="fas fa-check-circle me-2"></i>{{ session('success') }}
                            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        </div>
                    @endif

                    @if(session('error'))
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            <i class="fas fa-exclamation-triangle me-2"></i>{{ session('error') }}
                            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        </div>
                    @endif

                    <div class="alert alert-info">
                        <i class="fas fa-info-circle me-2"></i>
                        <strong>Note:</strong> Manage your subscription plans here. Each plan can have multiple features and pricing in AED.
                    </div>

                    @if($plans->count() > 0)
                        <div class="table-responsive">
                            <table class="table table-hover table-striped">
                                <thead class="table-dark">
                                    <tr>
                                        <th><i class="fas fa-tag me-2"></i>Title</th>
                                        <th><i class="fas fa-align-left me-2"></i>Description</th>
                                        <th class="text-center"><i class="fas fa-dollar-sign me-2"></i>Price (AED)</th>
                                        <th class="text-center"><i class="fas fa-list me-2"></i>Features</th>
                                        <th class="text-center"><i class="fas fa-toggle-on me-2"></i>Status</th>
                                        <th class="text-center"><i class="fas fa-calendar me-2"></i>Created</th>
                                        <th class="text-center"><i class="fas fa-cogs me-2"></i>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($plans as $plan)
                                        <tr class="align-middle">
                                            <td>
                                                <div class="fw-bold text-dark">{{ $plan->title }}</div>
                                                <small class="text-muted">ID: {{ $plan->id }}</small>
                                            </td>
                                            <td>
                                                <div style="max-width: 300px; line-height: 1.4;">
                                                    {!! Str::limit(strip_tags($plan->description), 100) !!}
                                                    @if(strlen(strip_tags($plan->description)) > 100)
                                                        <a href="{{ route('admin.plans.show', $plan) }}" class="text-primary ms-1" title="View full description">
                                                            <small>Read more...</small>
                                                        </a>
                                                    @endif
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <span class="badge bg-success fs-6 px-3 py-2">
                                                    <strong>{{ number_format($plan->price, 2) }}</strong>
                                                </span>
                                            </td>
                                            <td class="text-center">
                                                <span class="badge bg-primary">{{ $plan->features->count() }}</span>
                                                <div class="small text-muted mt-1">
                                                    @if($plan->features->count() > 0)
                                                        @foreach($plan->features->take(2) as $feature)
                                                            <div>• {{ Str::limit($feature->feature, 20) }}</div>
                                                        @endforeach
                                                        @if($plan->features->count() > 2)
                                                            <div class="text-primary">+{{ $plan->features->count() - 2 }} more</div>
                                                        @endif
                                                    @endif
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                @if($plan->is_active)
                                                    <span class="badge bg-success px-3 py-2">
                                                        <i class="fas fa-check me-1"></i>Active
                                                    </span>
                                                @else
                                                    <span class="badge bg-secondary px-3 py-2">
                                                        <i class="fas fa-pause me-1"></i>Inactive
                                                    </span>
                                                @endif
                                            </td>
                                            <td class="text-center">
                                                <div class="small text-muted">{{ $plan->created_at->format('M d, Y') }}</div>
                                                <div class="small text-muted">{{ $plan->created_at->format('H:i') }}</div>
                                            </td>
                                            <td class="text-center">
                                                <div class="btn-group" role="group">
                                                    <a href="{{ route('admin.plans.show', $plan) }}" class="btn btn-sm btn-outline-info" title="View Details" data-bs-toggle="tooltip">
                                                        <i class="fas fa-eye"></i>
                                                    </a>
                                                    <a href="{{ route('admin.plans.edit', $plan) }}" class="btn btn-sm btn-outline-primary" title="Edit Plan" data-bs-toggle="tooltip">
                                                        <i class="fas fa-edit"></i>
                                                    </a>
                                                    <form action="{{ route('admin.plans.destroy', $plan) }}" method="POST" class="d-inline" onsubmit="return confirm('Are you sure you want to delete this plan? This action cannot be undone.')">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" class="btn btn-sm btn-outline-danger" title="Delete Plan" data-bs-toggle="tooltip">
                                                            <i class="fas fa-trash"></i>
                                                        </button>
                                                    </form>
                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    @else
                        <div class="text-center py-5">
                            <i class="fas fa-tags fa-3x text-muted mb-3"></i>
                            <h5 class="text-muted">No Plans Found</h5>
                            <p class="text-muted">Create your first subscription plan to get started.</p>
                            <a href="{{ route('admin.plans.create') }}" class="btn btn-custom">
                                <i class="fas fa-plus me-2"></i>Create First Plan
                            </a>
                        </div>
                    @endif
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

    // Auto-dismiss success and error alerts after 2 seconds
    setTimeout(function() {
        $('.alert-success, .alert-danger').fadeOut('slow', function() {
            $(this).remove();
        });
    }, 2000);
});
</script>
@endsection
