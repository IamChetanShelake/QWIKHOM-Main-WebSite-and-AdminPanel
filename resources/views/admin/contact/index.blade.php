@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- Contact Information Management -->
            <div class="section-card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <div>
                        <i class="fas fa-address-card me-2"></i>Contact Information Management
                        <span class="badge bg-info ms-2">{{ $contacts->total() }} contacts</span>
                    </div>
                    <a href="{{ route('admin.contact.create') }}" class="btn btn-custom btn-sm">
                        <i class="fas fa-plus me-1"></i>Add Contact
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
                        <strong>Note:</strong> Manage contact information entries (location and phone) here. Each entry represents a different contact point for your business.
                    </div>

                    @if($contacts->count() > 0)
                        <!-- Contacts Table -->
                        <div class="table-responsive">
                            <table class="table table-hover table-striped">
                                <thead class="table-dark">
                                    <tr>
                                        <th><i class="fas fa-hashtag me-2"></i>ID</th>
                                        <th><i class="fas fa-map-marker-alt me-2"></i>Location/Address</th>
                                        <th><i class="fas fa-phone me-2"></i>Phone Number</th>
                                        <th><i class="fas fa-envelope me-2"></i>Email Address</th>
                                        <th class="text-center"><i class="fas fa-calendar me-2"></i>Created</th>
                                        <th class="text-center"><i class="fas fa-cogs me-2"></i>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($contacts as $contact)
                                        <tr class="align-middle">
                                            <td>
                                                <span class="badge bg-primary">{{ $contact->id }}</span>
                                            </td>
                                            <td>
                                                <i class="fas fa-map-marker-alt text-primary me-2"></i>
                                                {{ Str::limit($contact->location, 50) }}
                                            </td>
                                            <td>
                                                <i class="fas fa-phone text-success me-2"></i>
                                                <a href="tel:{{ $contact->phone }}" class="text-decoration-none">
                                                    {{ $contact->phone }}
                                                </a>
                                            </td>
                                            <td>
                                                <i class="fas fa-envelope text-warning me-2"></i>
                                                <a href="mailto:{{ $contact->email }}" class="text-decoration-none">
                                                    {{ Str::limit($contact->email, 30) }}
                                                </a>
                                            </td>
                                            <td class="text-center">
                                                <small class="text-muted">{{ $contact->created_at->format('M d, Y') }}</small>
                                            </td>
                                            <td class="text-center">
                                                <div class="btn-group" role="group">
                                                    <a href="{{ route('admin.contact.show', $contact) }}" class="btn btn-sm btn-outline-info" title="View Details" data-bs-toggle="tooltip">
                                                        <i class="fas fa-eye"></i>
                                                    </a>
                                                    <a href="{{ route('admin.contact.edit', $contact) }}" class="btn btn-sm btn-outline-primary" title="Edit Contact" data-bs-toggle="tooltip">
                                                        <i class="fas fa-edit"></i>
                                                    </a>
                                                    <form action="{{ route('admin.contact.destroy', $contact) }}" method="POST" class="d-inline" onsubmit="return confirm('Are you sure you want to delete this contact information?')">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" class="btn btn-sm btn-outline-danger" title="Delete Contact" data-bs-toggle="tooltip">
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
                            {{ $contacts->links() }}
                        </div>
                    @else
                        <div class="text-center py-5">
                            <i class="fas fa-address-card fa-3x text-muted mb-3"></i>
                            <h5 class="text-muted">No Contact Information Found</h5>
                            <p class="text-muted">Add your first contact information entry to get started.</p>
                            <a href="{{ route('admin.contact.create') }}" class="btn btn-custom">
                                <i class="fas fa-plus me-2"></i>Add Contact Information
                            </a>
                        </div>
                    @endif
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
