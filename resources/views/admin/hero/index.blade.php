@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- Hero Section Management -->
            <div class="section-card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <span><i class="fas fa-star me-2"></i>Hero Section Management</span>
                    <a href="{{ route('admin.hero.create') }}" class="btn btn-custom btn-sm">
                        <i class="fas fa-plus me-1"></i>Add New Hero Section
                    </a>
                </div>
                <div class="card-body">
                    @if(session('success'))
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <i class="fas fa-check-circle me-2"></i>{{ session('success') }}
                            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        </div>
                    @endif

                    @if($heroSections->count() > 0)
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th><i class="fas fa-id-badge me-2"></i>ID</th>
                                        <th><i class="fas fa-heading me-2"></i>Main Title</th>
                                        <th><i class="fas fa-images me-2"></i>Images</th>
                                        <th><i class="fas fa-toggle-on me-2"></i>Status</th>
                                        <th><i class="fas fa-calendar me-2"></i>Created</th>
                                        <th><i class="fas fa-cogs me-2"></i>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($heroSections as $hero)
                                        <tr>
                                            <td>{{ $hero->id }}</td>
                                            <td>
                                                <div style="max-width: 300px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
                                                    {!! strip_tags($hero->main_title) !!}
                                                </div>
                                            </td>
                                            <td>
                                                <div class="d-flex">
                                                    @for($i = 1; $i <= 4; $i++)
                                                        @if($hero->{'image'.$i})
                                                            <img src="{{ asset($hero->{'image'.$i}) }}" alt="Image {{ $i }}" style="width: 30px; height: 30px; object-fit: cover; margin-right: 5px; border-radius: 3px;">
                                                        @endif
                                                    @endfor
                                                </div>
                                            </td>
                                            <td>
                                                @if($hero->is_active)
                                                    <span class="badge bg-success">Active</span>
                                                @else
                                                    <span class="badge bg-secondary">Inactive</span>
                                                @endif
                                            </td>
                                            <td>{{ $hero->created_at->format('M d, Y') }}</td>
                                            <td>
                                                <div class="d-flex gap-1 justify-content-center">
                                                    <a href="{{ route('admin.hero.show', $hero) }}" class="btn btn-sm btn-info" title="View Details" data-bs-toggle="tooltip">
                                                        <i class="fas fa-eye"></i>
                                                    </a>
                                                    <a href="{{ route('admin.hero.edit', $hero) }}" class="btn btn-sm btn-custom" title="Edit Section" data-bs-toggle="tooltip">
                                                        <i class="fas fa-edit"></i>
                                                    </a>
                                                    <form action="{{ route('admin.hero.destroy', $hero) }}" method="POST" class="d-inline" onsubmit="return confirm('Are you sure you want to delete this hero section? This action cannot be undone.')">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" class="btn btn-sm btn-danger" title="Delete Section" data-bs-toggle="tooltip">
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
                            <i class="fas fa-star fa-3x text-muted mb-3"></i>
                            <h5 class="text-muted">No Hero Sections Found</h5>
                            <p class="text-muted">Create your first hero section to get started.</p>
                            <a href="{{ route('admin.hero.create') }}" class="btn btn-custom">
                                <i class="fas fa-plus me-2"></i>Create First Hero Section
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

    // Auto-dismiss success alerts after 2 seconds
    setTimeout(function() {
        $('.alert-success').fadeOut('slow', function() {
            $(this).remove();
        });
    }, 2000);
});
</script>
@endsection
