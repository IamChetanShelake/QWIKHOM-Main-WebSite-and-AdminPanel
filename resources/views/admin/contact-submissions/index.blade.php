@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- Contact Submissions Management -->
            <div class="section-card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <div>
                        <i class="fas fa-envelope-open-text me-2"></i>Get In Touch Updates
                        <span class="badge bg-info ms-2">{{ $submissions->total() }} submissions</span>
                    </div>
                    @if($submissions->count() > 0)
                        <div class="d-flex gap-2">
                            <button type="button" class="btn btn-outline-primary btn-sm" data-bs-toggle="modal" data-bs-target="#bulkActionModal">
                                <i class="fas fa-tasks me-1"></i>Bulk Actions
                            </button>
                        </div>
                    @endif
                </div>
                <div class="card-body">
                    @if(session('success'))
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <i class="fas fa-check-circle me-2"></i>{{ session('success') }}
                            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        </div>
                    @endif

                    <!-- Status Filter Badges -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <div class="d-flex flex-wrap gap-2 align-items-center">
                                <span class="text-muted fw-bold me-2">Filter by Status:</span>
                                <a href="{{ route('admin.contact-submissions.index') }}" class="badge {{ !$request->status ? 'bg-primary' : 'bg-secondary' }} text-decoration-none">
                                    All ({{ $statusCounts['new'] + $statusCounts['read'] + $statusCounts['replied'] + $statusCounts['archived'] }})
                                </a>
                                <a href="{{ route('admin.contact-submissions.index', ['status' => 'new']) }}" class="badge {{ $request->status === 'new' ? 'bg-danger' : 'bg-secondary' }} text-decoration-none">
                                    New ({{ $statusCounts['new'] }})
                                </a>
                                <a href="{{ route('admin.contact-submissions.index', ['status' => 'read']) }}" class="badge {{ $request->status === 'read' ? 'bg-warning' : 'bg-secondary' }} text-decoration-none">
                                    Read ({{ $statusCounts['read'] }})
                                </a>
                                <a href="{{ route('admin.contact-submissions.index', ['status' => 'replied']) }}" class="badge {{ $request->status === 'replied' ? 'bg-success' : 'bg-secondary' }} text-decoration-none">
                                    Replied ({{ $statusCounts['replied'] }})
                                </a>
                                <a href="{{ route('admin.contact-submissions.index', ['status' => 'archived']) }}" class="badge {{ $request->status === 'archived' ? 'bg-info' : 'bg-secondary' }} text-decoration-none">
                                    Archived ({{ $statusCounts['archived'] }})
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- Search Form -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <form method="GET" action="{{ route('admin.contact-submissions.index') }}" class="d-flex gap-2">
                                <input type="hidden" name="status" value="{{ $request->status }}">
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-search"></i></span>
                                    <input type="text" name="search" class="form-control" placeholder="Search by name, email, phone, or message..." value="{{ $request->search }}">
                                    <button type="submit" class="btn btn-primary">
                                        <i class="fas fa-search me-1"></i>Search
                                    </button>
                                    @if($request->search)
                                        <a href="{{ route('admin.contact-submissions.index', ['status' => $request->status]) }}" class="btn btn-outline-secondary">
                                            <i class="fas fa-times me-1"></i>Clear
                                        </a>
                                    @endif
                                </div>
                            </form>
                        </div>
                    </div>

                    @if($submissions->count() > 0)
                        <!-- Submissions Table -->
                        <div class="table-responsive">
                            <table class="table table-hover table-striped">
                                <thead class="table-dark">
                                    <tr>
                                        <th>
                                            <input type="checkbox" id="selectAll" class="form-check-input">
                                        </th>
                                        <th><i class="fas fa-user me-2"></i>Name</th>
                                        <th><i class="fas fa-envelope me-2"></i>Email</th>
                                        <th><i class="fas fa-phone me-2"></i>Phone</th>
                                        <th><i class="fas fa-tag me-2"></i>Service</th>
                                        <th class="text-center"><i class="fas fa-circle me-2"></i>Status</th>
                                        <th><i class="fas fa-calendar me-2"></i>Submitted</th>
                                        <th class="text-center"><i class="fas fa-cogs me-2"></i>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($submissions as $submission)
                                        <tr class="align-middle {{ $submission->status === 'new' ? 'table-warning' : '' }}">
                                            <td>
                                                <input type="checkbox" class="form-check-input submission-checkbox" value="{{ $submission->id }}">
                                            </td>
                                            <td>
                                                <div class="fw-bold">{{ $submission->name }}</div>
                                                @if($submission->status === 'new')
                                                    <span class="badge bg-danger">New</span>
                                                @endif
                                            </td>
                                            <td>
                                                <a href="mailto:{{ $submission->email }}" class="text-decoration-none">
                                                    {{ Str::limit($submission->email, 25) }}
                                                </a>
                                            </td>
                                            <td>
                                                @if($submission->phone)
                                                    <a href="tel:{{ $submission->phone }}" class="text-decoration-none">
                                                        {{ $submission->phone }}
                                                    </a>
                                                @else
                                                    <span class="text-muted">Not provided</span>
                                                @endif
                                            </td>
                                            <td>
                                                @if($submission->service_type)
                                                    <span class="badge bg-info">{{ $submission->service_type }}</span>
                                                @else
                                                    <span class="text-muted">-</span>
                                                @endif
                                            </td>
                                            <td class="text-center">
                                                @switch($submission->status)
                                                    @case('new')
                                                        <span class="badge bg-danger">
                                                            <i class="fas fa-circle me-1"></i>New
                                                        </span>
                                                        @break
                                                    @case('read')
                                                        <span class="badge bg-warning">
                                                            <i class="fas fa-eye me-1"></i>Read
                                                        </span>
                                                        @break
                                                    @case('replied')
                                                        <span class="badge bg-success">
                                                            <i class="fas fa-reply me-1"></i>Replied
                                                        </span>
                                                        @break
                                                    @case('archived')
                                                        <span class="badge bg-secondary">
                                                            <i class="fas fa-archive me-1"></i>Archived
                                                        </span>
                                                        @break
                                                @endswitch
                                            </td>
                                            <td>
                                                <small class="text-muted">
                                                    {{ $submission->created_at->format('M d, Y') }}<br>
                                                    {{ $submission->created_at->format('h:i A') }}
                                                </small>
                                                @if($submission->read_at)
                                                    <br><small class="text-success">Read: {{ $submission->read_at->diffForHumans() }}</small>
                                                @endif
                                            </td>
                                            <td class="text-center">
                                                <div class="btn-group" role="group">
                                                    <a href="{{ route('admin.contact-submissions.show', $submission) }}" class="btn btn-sm btn-outline-info" title="View Details" data-bs-toggle="tooltip">
                                                        <i class="fas fa-eye"></i>
                                                    </a>
                                                    @if($submission->status === 'new')
                                                        <form action="{{ route('admin.contact-submissions.mark-read', $submission) }}" method="POST" class="d-inline">
                                                            @csrf
                                                            @method('POST')
                                                            <button type="submit" class="btn btn-sm btn-outline-warning" title="Mark as Read" data-bs-toggle="tooltip">
                                                                <i class="fas fa-eye"></i>
                                                            </button>
                                                        </form>
                                                    @elseif($submission->status === 'read')
                                                        <form action="{{ route('admin.contact-submissions.mark-replied', $submission) }}" method="POST" class="d-inline">
                                                            @csrf
                                                            @method('POST')
                                                            <button type="submit" class="btn btn-sm btn-outline-success" title="Mark as Replied" data-bs-toggle="tooltip">
                                                                <i class="fas fa-reply"></i>
                                                            </button>
                                                        </form>
                                                    @endif
                                                    <form action="{{ route('admin.contact-submissions.archive', $submission) }}" method="POST" class="d-inline" onsubmit="return confirm('Are you sure you want to archive this submission?')">
                                                        @csrf
                                                        @method('POST')
                                                        <button type="submit" class="btn btn-sm btn-outline-secondary" title="Archive" data-bs-toggle="tooltip">
                                                            <i class="fas fa-archive"></i>
                                                        </button>
                                                    </form>
                                                    <form action="{{ route('admin.contact-submissions.destroy', $submission) }}" method="POST" class="d-inline" onsubmit="return confirm('Are you sure you want to permanently delete this submission?')">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" class="btn btn-sm btn-outline-danger" title="Delete" data-bs-toggle="tooltip">
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

                        <!-- Pagination -->
                        <div class="d-flex justify-content-center mt-4">
                            {{ $submissions->appends(request()->query())->links() }}
                        </div>
                    @else
                        <div class="text-center py-5">
                            <i class="fas fa-envelope-open-text fa-3x text-muted mb-3"></i>
                            <h5 class="text-muted">No Contact Submissions Found</h5>
                            <p class="text-muted">
                                @if($request->status || $request->search)
                                    No submissions match your current filters.
                                    <a href="{{ route('admin.contact-submissions.index') }}">Clear filters</a>
                                @else
                                    Contact form submissions will appear here when users submit inquiries through your website.
                                @endif
                            </p>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
</main>

<!-- Bulk Action Modal -->
<div class="modal fade" id="bulkActionModal" tabindex="-1" aria-labelledby="bulkActionModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="bulkActionModalLabel">Bulk Actions</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="{{ route('admin.contact-submissions.bulk-action') }}" method="POST">
                @csrf
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="bulkAction" class="form-label fw-bold">Select Action:</label>
                        <select name="action" id="bulkAction" class="form-select" required>
                            <option value="">Choose an action...</option>
                            <option value="mark_read">Mark as Read</option>
                            <option value="mark_replied">Mark as Replied</option>
                            <option value="archive">Archive</option>
                            <option value="delete">Delete</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label fw-bold">Selected Submissions:</label>
                        <div id="selectedSubmissions" class="text-muted">
                            No submissions selected
                        </div>
                    </div>
                    <input type="hidden" name="submissions" id="selectedSubmissionsInput">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary" id="bulkActionBtn" disabled>Apply Action</button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection

@section('scripts')
<script>
$(document).ready(function() {
    // Initialize tooltips
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl);
    });

    // Select all checkbox functionality
    $('#selectAll').on('change', function() {
        $('.submission-checkbox').prop('checked', $(this).prop('checked'));
        updateBulkActionButton();
    });

    $('.submission-checkbox').on('change', function() {
        updateBulkActionButton();
    });

    function updateBulkActionButton() {
        const selectedCount = $('.submission-checkbox:checked').length;
        const selectedIds = $('.submission-checkbox:checked').map(function() {
            return $(this).val();
        }).get();

        $('#selectedSubmissionsInput').val(JSON.stringify(selectedIds));

        if (selectedCount > 0) {
            $('#selectedSubmissions').text(`${selectedCount} submission(s) selected`);
            $('#bulkActionBtn').prop('disabled', false);
        } else {
            $('#selectedSubmissions').text('No submissions selected');
            $('#bulkActionBtn').prop('disabled', true);
        }
    }

    // Auto-dismiss success alerts
    setTimeout(function() {
        $('.alert-success').fadeOut('slow', function() {
            $(this).remove();
        });
    }, 2000);
});
</script>
@endsection
