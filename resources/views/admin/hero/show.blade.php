@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- View Hero Section -->
            <div class="section-card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <span><i class="fas fa-eye me-2"></i>View Hero Section</span>
                    <div>
                        <a href="{{ route('admin.hero.edit', $heroSection) }}" class="btn btn-custom btn-sm">
                            <i class="fas fa-edit me-1"></i>Edit
                        </a>
                        <a href="{{ route('admin.hero.index') }}" class="btn btn-outline-secondary btn-sm">
                            <i class="fas fa-arrow-left me-1"></i>Back to List
                        </a>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-4">
                                <h5 class="text-muted mb-2">
                                    <i class="fas fa-id-badge me-2"></i>ID: {{ $heroSection->id }}
                                </h5>
                                <div class="mb-2">
                                    <strong>Status:</strong>
                                    @if($heroSection->is_active)
                                        <span class="badge bg-success">Active</span>
                                    @else
                                        <span class="badge bg-secondary">Inactive</span>
                                    @endif
                                </div>
                                <div class="mb-2">
                                    <strong>Created:</strong> {{ $heroSection->created_at->format('M d, Y \a\t h:i A') }}
                                </div>
                                <div class="mb-2">
                                    <strong>Last Updated:</strong> {{ $heroSection->updated_at->format('M d, Y \a\t h:i A') }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-4">
                                <h5><i class="fas fa-heading me-2"></i>Main Title</h5>
                                <div class="border rounded p-3 bg-light">
                                    {!! $heroSection->main_title !!}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-4">
                                <h5><i class="fas fa-align-left me-2"></i>Description</h5>
                                <div class="border rounded p-3 bg-light">
                                    {!! $heroSection->description !!}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <h5><i class="fas fa-images me-2"></i>Images</h5>
                            <div class="row">
                                @for($i = 1; $i <= 4; $i++)
                                    <div class="col-md-3 mb-3">
                                        <div class="card h-100">
                                            <div class="card-body text-center">
                                                <h6 class="card-title">Image {{ $i }}</h6>
                                                @if($heroSection->{'image'.$i})
                                                    <img src="{{ asset($heroSection->{'image'.$i}) }}" alt="Hero Image {{ $i }}" class="img-fluid rounded" style="max-height: 150px; object-fit: cover;">
                                                    <div class="mt-2">
                                                        <small class="text-muted">{{ basename($heroSection->{'image'.$i}) }}</small>
                                                    </div>
                                                @else
                                                    <div class="text-center text-muted">
                                                        <i class="fas fa-image fa-3x mb-2"></i>
                                                        <p>No image uploaded</p>
                                                    </div>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                @endfor
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
@endsection
