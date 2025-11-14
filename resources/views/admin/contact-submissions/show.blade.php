@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- Contact Submission Details -->
            <div class="section-card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <div>
                        <i class="fas fa-envelope-open-text me-2"></i>Contact Submission Details
                        <span class="badge bg-info ms-2">#{{ $contactSubmission->id }}</span>
                    </div>
                    <div class="d-flex gap-2">
                        <a href="{{ route('admin.contact-submissions.index') }}" class="btn btn-outline-secondary btn-sm">
                            <i class="fas fa-arrow-left me-1"></i>Back to List
                        </a>
                    </div>
                </div>
                <div class="card-body">
                    @if(session('success'))
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <i class="fas fa-check-circle me-2"></i>{{ session('success') }}
                            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        </div>
                    @endif

                    <!-- Status Badge -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="d-flex align-items-center gap-3">
                                    <h4 class="mb-0">{{ $contactSubmission->name }}</h4>
                                    @switch($contactSubmission->status)
                                        @case('new')
                                            <span class="badge bg-danger fs-6">
                                                <i class="fas fa-circle me-1"></i>New Submission
                                            </span>
                                            @break
                                        @case('read')
                                            <span class="badge bg-warning fs-6">
                                                <i class="fas fa-eye me-1"></i>Read
                                            </span>
                                            @break
                                        @case('replied')
                                            <span class="badge bg-success fs-6">
                                                <i class="fas fa-reply me-1"></i>Replied
                                            </span>
                                            @break
                                        @case('archived')
                                            <span class="badge bg-secondary fs-6">
                                                <i class="fas fa-archive me-1"></i>Archived
                                            </span>
                                            @break
                                    @endswitch
                                </div>
                                <div class="text-muted">
                                    <small>Submitted {{ $contactSubmission->created_at->format('M d, Y \a\t h:i A') }}</small>
                                    @if($contactSubmission->read_at)
                                        <br><small class="text-success">Read {{ $contactSubmission->read_at->diffForHumans() }}</small>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Contact Information -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <div class="card border-primary">
                                <div class="card-header bg-primary text-white">
                                    <i class="fas fa-user me-2"></i>Contact Information
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label fw-bold text-primary">
                                                    <i class="fas fa-user me-2"></i>Full Name
                                                </label>
                                                <div class="form-control-plaintext border p-2 rounded bg-light">
                                                    {{ $contactSubmission->name }}
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label fw-bold text-primary">
                                                    <i class="fas fa-envelope me-2"></i>Email Address
                                                </label>
                                                <div class="form-control-plaintext border p-2 rounded bg-light">
                                                    <a href="mailto:{{ $contactSubmission->email }}" class="text-decoration-none">
                                                        {{ $contactSubmission->email }}
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label fw-bold text-primary">
                                                    <i class="fas fa-phone me-2"></i>Phone Number
                                                </label>
                                                <div class="form-control-plaintext border p-2 rounded bg-light">
                                                    @if($contactSubmission->phone)
                                                        <a href="tel:{{ $contactSubmission->phone }}" class="text-decoration-none">
                                                            {{ $contactSubmission->phone }}
                                                        </a>
                                                    @else
                                                        <span class="text-muted">Not provided</span>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label fw-bold text-primary">
                                                    <i class="fas fa-tag me-2"></i>Service Type
                                                </label>
                                                <div class="form-control-plaintext border p-2 rounded bg-light">
                                                    @if($contactSubmission->service_type)
                                                        <span class="badge bg-info">{{ $contactSubmission->service_type }}</span>
                                                    @else
                                                        <span class="text-muted">Not specified</span>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Message Content -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <div class="card border-success">
                                <div class="card-header bg-success text-white">
                                    <i class="fas fa-comment me-2"></i>Message
                                </div>
                                <div class="card-body">
                                    <div class="bg-light p-3 rounded border">
                                        <pre class="mb-0 text-dark" style="white-space: pre-wrap; font-family: inherit;">{{ $contactSubmission->message }}</pre>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Quick Actions -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <div class="card border-warning">
                                <div class="card-header bg-warning text-dark">
                                    <i class="fas fa-bolt me-2"></i>Quick Actions
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-3 mb-2">
                                            <a href="mailto:{{ $contactSubmission->email }}" class="btn btn-outline-primary w-100">
                                                <i class="fas fa-reply me-2"></i>Email Reply
                                            </a>
                                        </div>
                                        @if($contactSubmission->phone)
                                            <div class="col-md-3 mb-2">
                                                <a href="tel:{{ $contactSubmission->phone }}" class="btn btn-outline-success w-100">
                                                    <i class="fas fa-phone me-2"></i>Call Now
                                                </a>
                                            </div>
                                        @endif
                                        <div class="col-md-3 mb-2">
                                            <form action="{{ route('admin.contact-submissions.mark-read', $contactSubmission) }}" method="POST" class="d-inline w-100">
                                                @csrf
                                                @method('POST')
                                                <button type="submit" class="btn btn-outline-warning w-100" {{ $contactSubmission->status !== 'new' ? 'disabled' : '' }}>
                                                    <i class="fas fa-eye me-2"></i>Mark as Read
                                                </button>
                                            </form>
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <form action="{{ route('admin.contact-submissions.mark-replied', $contactSubmission) }}" method="POST" class="d-inline w-100">
                                                @csrf
                                                @method('POST')
                                                <button type="submit" class="btn btn-outline-success w-100" {{ $contactSubmission->status === 'replied' ? 'disabled' : '' }}>
                                                    <i class="fas fa-reply me-2"></i>Mark as Replied
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Status Update Form -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <div class="card border-info">
                                <div class="card-header bg-info text-white">
                                    <i class="fas fa-edit me-2"></i>Update Status
                                </div>
                                <div class="card-body">
                                    <form action="{{ route('admin.contact-submissions.update-status', $contactSubmission) }}" method="POST">
                                        @csrf
                                        @method('PATCH')
                                        <div class="row">
                                            <div class="col-md-8">
                                                <label for="status" class="form-label fw-bold">Status:</label>
                                                <select name="status" id="status" class="form-select" required>
                                                    <option value="new" {{ $contactSubmission->status === 'new' ? 'selected' : '' }}>New</option>
                                                    <option value="read" {{ $contactSubmission->status === 'read' ? 'selected' : '' }}>Read</option>
                                                    <option value="replied" {{ $contactSubmission->status === 'replied' ? 'selected' : '' }}>Replied</option>
                                                    <option value="archived" {{ $contactSubmission->status === 'archived' ? 'selected' : '' }}>Archived</option>
                                                </select>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="form-label fw-bold">&nbsp;</label>
                                                <button type="submit" class="btn btn-info w-100">
                                                    <i class="fas fa-save me-2"></i>Update Status
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Danger Zone -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card border-danger">
                                <div class="card-header bg-danger text-white">
                                    <i class="fas fa-exclamation-triangle me-2"></i>Danger Zone
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="alert alert-warning">
                                                <h6 class="alert-heading">
                                                    <i class="fas fa-archive me-2"></i>Archive Submission
                                                </h6>
                                                <p class="mb-2">Move this submission to archive. You can still access it later.</p>
                                                <form action="{{ route('admin.contact-submissions.archive', $contactSubmission) }}" method="POST" class="d-inline">
                                                    @csrf
                                                    @method('POST')
                                                    <button type="submit" class="btn btn-warning btn-sm" onclick="return confirm('Are you sure you want to archive this submission?')">
                                                        <i class="fas fa-archive me-2"></i>Archive
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="alert alert-danger">
                                                <h6 class="alert-heading">
                                                    <i class="fas fa-trash me-2"></i>Delete Submission
                                                </h6>
                                                <p class="mb-2">Permanently delete this submission. This action cannot be undone.</p>
                                                <form action="{{ route('admin.contact-submissions.destroy', $contactSubmission) }}" method="POST" class="d-inline">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to permanently delete this submission? This action cannot be undone.')">
                                                        <i class="fas fa-trash me-2"></i>Delete Forever
                                                    </button>
                                                </form>
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
    </div>
</main>
@endsection

@section('scripts')
<script>
$(document).ready(function() {
    // Auto-dismiss success alerts
    setTimeout(function() {
        $('.alert-success').fadeOut('slow', function() {
            $(this).remove();
        });
    }, 2000);
});
</script>
@endsection
