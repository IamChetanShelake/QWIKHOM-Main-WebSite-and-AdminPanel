@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- How It Works Section Management -->
            <div class="section-card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <div>
                        <i class="fas fa-play-circle me-2"></i>How It Works Section Management
                        <span class="badge bg-info ms-2">{{ $howItWorks->count() }}/4</span>
                    </div>
                    @if($howItWorks->count() < 4)
                        <a href="{{ route('admin.howitworks.create') }}" class="btn btn-custom btn-sm">
                            <i class="fas fa-plus me-1"></i>Add Step
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
                        <strong>Note:</strong> You can create a maximum of 4 "How It Works" items. Each item has a unique order number (1-4) for display sequencing.
                    </div>

                    @if($howItWorks->count() > 0)

                        <div class="table-responsive">
                            <table class="table table-hover table-striped">
                                <thead class="table-dark">
                                    <tr>
                                        <th class="text-center" style="width: 80px;"><i class="fas fa-sort-numeric-down me-2"></i>Step</th>
                                        <th><i class="fas fa-heading me-2"></i>Title</th>
                                        <th><i class="fas fa-align-left me-2"></i>Description</th>
                                        <th class="text-center" style="width: 100px;"><i class="fas fa-toggle-on me-2"></i>Status</th>
                                        <th class="text-center" style="width: 120px;"><i class="fas fa-calendar me-2"></i>Created</th>
                                        <th class="text-center" style="width: 150px;"><i class="fas fa-cogs me-2"></i>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($howItWorks as $item)
                                        <tr class="align-middle">
                                            <td class="text-center">
                                                <div class="d-flex flex-column align-items-center">
                                                    <span class="badge bg-primary fs-6 mb-1" style="width: 35px; height: 35px; border-radius: 50%; display: flex; align-items: center; justify-content: center;">
                                                        {{ $item->order }}
                                                    </span>
                                                    <small class="text-muted">Step {{ $item->order }}</small>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="fw-bold text-dark mb-1">{{ $item->title }}</div>
                                                <small class="text-muted">ID: {{ $item->id }}</small>
                                            </td>
                                            <td>
                                                <div style="max-width: 400px; line-height: 1.4;">
                                                    {!! Str::limit(strip_tags($item->description), 150) !!}
                                                    @if(strlen(strip_tags($item->description)) > 150)
                                                        <a href="{{ route('admin.howitworks.show', $item) }}" class="text-primary ms-1" title="View full description">
                                                            <small>Read more...</small>
                                                        </a>
                                                    @endif
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                @if($item->is_active)
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
                                                <div class="small text-muted">{{ $item->created_at->format('M d, Y') }}</div>
                                                <div class="small text-muted">{{ $item->created_at->format('H:i') }}</div>
                                            </td>
                                            <td class="text-center">
                                                <div class="btn-group" role="group">
                                                    <a href="{{ route('admin.howitworks.show', $item) }}" class="btn btn-sm btn-outline-info" title="View Details" data-bs-toggle="tooltip">
                                                        <i class="fas fa-eye"></i>
                                                    </a>
                                                    <a href="{{ route('admin.howitworks.edit', $item) }}" class="btn btn-sm btn-outline-primary" title="Edit Item" data-bs-toggle="tooltip">
                                                        <i class="fas fa-edit"></i>
                                                    </a>
                                                    <form action="{{ route('admin.howitworks.destroy', $item) }}" method="POST" class="d-inline" onsubmit="return confirm('Are you sure you want to delete this step? This action cannot be undone.')">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" class="btn btn-sm btn-outline-danger" title="Delete Item" data-bs-toggle="tooltip">
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

                        @if($howItWorks->count() < 4)
                            <div class="mt-3">
                                <a href="{{ route('admin.howitworks.create') }}" class="btn btn-custom">
                                    <i class="fas fa-plus me-2"></i>Add New How It Works Item ({{ $howItWorks->count() }}/4)
                                </a>
                            </div>
                        @else
                            <div class="alert alert-warning mt-3">
                                <i class="fas fa-exclamation-triangle me-2"></i>
                                <strong>Maximum Limit Reached:</strong> You have reached the maximum of 4 "How It Works" items. Delete an existing item to add a new one.
                            </div>
                        @endif
                    @else
                        <div class="text-center py-5">
                            <i class="fas fa-play-circle fa-3x text-muted mb-3"></i>
                            <h5 class="text-muted">No How It Works Items Found</h5>
                            <p class="text-muted">Create your first "How It Works" item to get started.</p>
                            <a href="{{ route('admin.howitworks.create') }}" class="btn btn-custom">
                                <i class="fas fa-plus me-2"></i>Create First Item
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
