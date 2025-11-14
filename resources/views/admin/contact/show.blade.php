@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- Contact Information Details -->
            <div class="section-card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <div>
                        <i class="fas fa-eye me-2"></i>Contact Information Details
                        <span class="badge bg-info ms-2">ID: {{ $contact->id }}</span>
                        @if($contact->is_active)
                            <span class="badge bg-success ms-2">Active</span>
                        @else
                            <span class="badge bg-secondary ms-2">Inactive</span>
                        @endif
                    </div>
                    <div class="d-flex gap-2">
                        <a href="{{ route('admin.contact.edit', $contact) }}" class="btn btn-primary btn-sm">
                            <i class="fas fa-edit me-1"></i>Edit Contact
                        </a>
                        <a href="{{ route('admin.contact.index') }}" class="btn btn-outline-secondary btn-sm">
                            <i class="fas fa-arrow-left me-1"></i>Back to Contacts
                        </a>
                    </div>
                </div>
                <div class="card-body">
                    <!-- Contact Information Preview -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <h5 class="mb-3 text-primary">
                                <i class="fas fa-eye me-2"></i>Contact Information Preview
                            </h5>
                            <div class="text-center p-5 border rounded bg-light">
                                <h3 class="mb-4">Contact Details</h3>
                                <div class="row justify-content-center">
                                    <div class="col-md-8">
                                        @if($contact->location)
                                            <div class="d-flex align-items-center justify-content-center mb-4">
                                                <i class="fas fa-map-marker-alt fa-3x text-primary me-4"></i>
                                                <div class="text-start">
                                                    <h5 class="mb-1">Location</h5>
                                                    <p class="mb-0 text-muted fs-5">{{ $contact->location }}</p>
                                                </div>
                                            </div>
                                        @endif

                                        @if($contact->phone)
                                            <div class="d-flex align-items-center justify-content-center mb-4">
                                                <i class="fas fa-phone fa-3x text-success me-4"></i>
                                                <div class="text-start">
                                                    <h5 class="mb-1">Phone</h5>
                                                    <p class="mb-0 text-muted fs-5">{{ $contact->phone }}</p>
                                                </div>
                                            </div>
                                        @endif

                                        @if($contact->email)
                                            <div class="d-flex align-items-center justify-content-center mb-4">
                                                <i class="fas fa-envelope fa-3x text-warning me-4"></i>
                                                <div class="text-start">
                                                    <h5 class="mb-1">Email</h5>
                                                    <p class="mb-0 text-muted fs-5">{{ $contact->email }}</p>
                                                </div>
                                            </div>
                                        @endif

                                        @if(!$contact->location && !$contact->phone && !$contact->email)
                                            <div class="text-center">
                                                <i class="fas fa-info-circle fa-2x text-muted mb-3"></i>
                                                <p class="text-muted">No contact information has been set for this entry.</p>
                                            </div>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Contact Information Details -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <h5 class="mb-3 text-info">
                                <i class="fas fa-info-circle me-2"></i>Contact Information Details
                            </h5>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="card h-100">
                                        <div class="card-body">
                                            <h6 class="card-title">
                                                <i class="fas fa-map-marker-alt me-2 text-primary"></i>Location/Address
                                            </h6>
                                            @if($contact->location)
                                                <p class="card-text">{{ $contact->location }}</p>
                                            @else
                                                <p class="card-text text-muted">Not set</p>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card h-100">
                                        <div class="card-body">
                                            <h6 class="card-title">
                                                <i class="fas fa-phone me-2 text-success"></i>Phone Number
                                            </h6>
                                            @if($contact->phone)
                                                <p class="card-text">{{ $contact->phone }}</p>
                                            @else
                                                <p class="card-text text-muted">Not set</p>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card h-100">
                                        <div class="card-body">
                                            <h6 class="card-title">
                                                <i class="fas fa-envelope me-2 text-warning"></i>Email Address
                                            </h6>
                                            @if($contact->email)
                                                <p class="card-text">{{ $contact->email }}</p>
                                            @else
                                                <p class="card-text text-muted">Not set</p>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Contact Statistics -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <h5 class="mb-3 text-warning">
                                <i class="fas fa-chart-bar me-2"></i>Contact Information Statistics
                            </h5>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="card text-center">
                                        <div class="card-body">
                                            <i class="fas fa-hashtag fa-2x text-primary mb-2"></i>
                                            <h4 class="card-title">{{ $contact->id }}</h4>
                                            <p class="card-text text-muted">Contact ID</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="card text-center">
                                        <div class="card-body">
                                            <i class="fas fa-toggle-on fa-2x text-info mb-2"></i>
                                            <h4 class="card-title">
                                                @if($contact->is_active)
                                                    <span class="badge bg-success">Active</span>
                                                @else
                                                    <span class="badge bg-secondary">Inactive</span>
                                                @endif
                                            </h4>
                                            <p class="card-text text-muted">Status</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="card text-center">
                                        <div class="card-body">
                                            <i class="fas fa-calendar-plus fa-2x text-success mb-2"></i>
                                            <h6 class="card-title">{{ $contact->created_at->format('M d, Y') }}</h6>
                                            <p class="card-text text-muted">Created</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="card text-center">
                                        <div class="card-body">
                                            <i class="fas fa-calendar-check fa-2x text-warning mb-2"></i>
                                            <h6 class="card-title">{{ $contact->updated_at->format('M d, Y') }}</h6>
                                            <p class="card-text text-muted">Last Updated</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Contact Information Summary -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <h5 class="mb-3 text-secondary">
                                <i class="fas fa-clipboard-list me-2"></i>Contact Information Summary
                            </h5>
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="d-flex align-items-center mb-2">
                                                <i class="fas fa-check-circle text-success me-2"></i>
                                                <span>Location: {{ $contact->location ? 'Set' : 'Not set' }}</span>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="d-flex align-items-center mb-2">
                                                <i class="fas fa-check-circle text-success me-2"></i>
                                                <span>Phone: {{ $contact->phone ? 'Set' : 'Not set' }}</span>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="d-flex align-items-center mb-2">
                                                <i class="fas fa-check-circle text-success me-2"></i>
                                                <span>Email: {{ $contact->email ? 'Set' : 'Not set' }}</span>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <strong>Total Information Fields Set:</strong>
                                            <span class="badge bg-primary ms-2">
                                                {{ ($contact->location ? 1 : 0) + ($contact->phone ? 1 : 0) + ($contact->email ? 1 : 0) }}/3
                                            </span>
                                        </div>
                                        <div class="col-md-6">
                                            <strong>Visibility Status:</strong>
                                            <span class="badge {{ $contact->is_active ? 'bg-success' : 'bg-secondary' }} ms-2">
                                                {{ $contact->is_active ? 'Visible on Website' : 'Hidden from Website' }}
                                            </span>
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
                                            <strong>Contact Information Management Actions</strong>
                                        </div>
                                        <div class="d-flex gap-2">
                                            <a href="{{ route('admin.contact.edit', $contact) }}" class="btn btn-primary">
                                                <i class="fas fa-edit me-2"></i>Edit Contact Info
                                            </a>
                                            <form action="{{ route('admin.contact.destroy', $contact) }}" method="POST" class="d-inline" onsubmit="return confirm('Are you sure you want to delete this contact information? This action cannot be undone.')">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-danger">
                                                    <i class="fas fa-trash me-2"></i>Delete Contact Info
                                                </button>
                                            </form>
                                            <a href="{{ route('admin.contact.index') }}" class="btn btn-outline-secondary">
                                                <i class="fas fa-arrow-left me-2"></i>Back to Contacts
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
