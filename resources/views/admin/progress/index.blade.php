@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- Progress Counter Section Management -->
            <div class="section-card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <div>
                        <i class="fas fa-chart-line me-2"></i>Progress Counter Section Management
                        <span class="badge bg-info ms-2">{{ $statistics->count() }}/4 statistics</span>
                    </div>
                    @if($statistics->count() < 4)
                        <a href="{{ route('admin.progress.create') }}" class="btn btn-custom btn-sm">
                            <i class="fas fa-plus me-1"></i>Add Statistic
                        </a>
                    @endif
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
                        <strong>Note:</strong> Manage your progress statistics here. Each statistic shows with + for numbers or % for percentages.
                    </div>

                    @if($statistics->count() > 0)
                        <!-- Statistics Preview -->
                        <div class="row mb-4">
                            <div class="col-md-12">
                                <h5 class="mb-3 text-primary">
                                    <i class="fas fa-eye me-2"></i>Statistics Preview
                                </h5>
                                <div class="row">
                                    @foreach($statistics as $stat)
                                        <div class="col-md-3 mb-3">
                                            <div class="stats-card">
                                                <div class="icon">
                                                    <i class="{{ $stat->logo }}"></i>
                                                </div>
                                                <h3>
                                                    {{ number_format($stat->value, $stat->type === 'percentage' ? 1 : 0) }}
                                                    <span class="text-primary">{{ $stat->type === 'percentage' ? '%' : '+' }}</span>
                                                </h3>
                                                <p>{{ $stat->title }}</p>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>

                        <!-- Statistics Management Table -->
                        <div class="row">
                            <div class="col-md-12">
                                <h5 class="mb-3 text-warning">
                                    <i class="fas fa-cogs me-2"></i>Statistics Management
                                </h5>
                                <div class="table-responsive">
                                    <table class="table table-hover table-striped">
                                        <thead class="table-dark">
                                            <tr>
                                                <th><i class="fas fa-hashtag me-2"></i>Order</th>
                                                <th><i class="fas fa-image me-2"></i>Logo/Icon</th>
                                                <th><i class="fas fa-tag me-2"></i>Title</th>
                                                <th class="text-center"><i class="fas fa-calculator me-2"></i>Value</th>
                                                <th class="text-center"><i class="fas fa-percentage me-2"></i>Type</th>
                                                <th class="text-center"><i class="fas fa-toggle-on me-2"></i>Status</th>
                                                <th class="text-center"><i class="fas fa-cogs me-2"></i>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($statistics as $stat)
                                                <tr class="align-middle">
                                                    <td>
                                                        <span class="badge bg-primary">{{ $stat->sort_order }}</span>
                                                    </td>
                                                    <td>
                                                        <i class="{{ $stat->logo }} fa-2x text-primary me-2"></i>
                                                        <code class="small">{{ $stat->logo }}</code>
                                                    </td>
                                                    <td>
                                                        <div class="fw-bold">{{ $stat->title }}</div>
                                                    </td>
                                                    <td class="text-center">
                                                        <span class="badge bg-success fs-6">
                                                            {{ number_format($stat->value, $stat->type === 'percentage' ? 1 : 0) }}
                                                        </span>
                                                    </td>
                                                    <td class="text-center">
                                                        @if($stat->type === 'percentage')
                                                            <span class="badge bg-warning">Percentage (%)</span>
                                                        @else
                                                            <span class="badge bg-info">Number (+)</span>
                                                        @endif
                                                    </td>
                                                    <td class="text-center">
                                                        @if($stat->is_active)
                                                            <span class="badge bg-success">
                                                                <i class="fas fa-check me-1"></i>Active
                                                            </span>
                                                        @else
                                                            <span class="badge bg-secondary">
                                                                <i class="fas fa-pause me-1"></i>Inactive
                                                            </span>
                                                        @endif
                                                    </td>
                                                    <td class="text-center">
                                                        <div class="btn-group" role="group">
                                                            <a href="{{ route('admin.progress.show', $stat) }}" class="btn btn-sm btn-outline-info" title="View Details" data-bs-toggle="tooltip">
                                                                <i class="fas fa-eye"></i>
                                                            </a>
                                                            <a href="{{ route('admin.progress.edit', $stat) }}" class="btn btn-sm btn-outline-primary" title="Edit Statistic" data-bs-toggle="tooltip">
                                                                <i class="fas fa-edit"></i>
                                                            </a>
                                                            <form action="{{ route('admin.progress.destroy', $stat) }}" method="POST" class="d-inline" onsubmit="return confirm('Are you sure you want to delete this statistic? This action cannot be undone.')">
                                                                @csrf
                                                                @method('DELETE')
                                                                <button type="submit" class="btn btn-sm btn-outline-danger" title="Delete Statistic" data-bs-toggle="tooltip">
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
                            </div>
                        </div>
                    @else
                        <div class="text-center py-5">
                            <i class="fas fa-chart-line fa-3x text-muted mb-3"></i>
                            <h5 class="text-muted">No Statistics Found</h5>
                            <p class="text-muted">Create your first progress statistic to get started.</p>
                            <a href="{{ route('admin.progress.create') }}" class="btn btn-custom">
                                <i class="fas fa-plus me-2"></i>Create First Statistic
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
