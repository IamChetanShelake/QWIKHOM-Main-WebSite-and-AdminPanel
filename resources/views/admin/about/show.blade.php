@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- View About Section -->
            <div class="section-card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <span><i class="fas fa-eye me-2"></i>View About Section</span>
                    <div>
                        <a href="{{ route('admin.about.edit', $aboutSection) }}" class="btn btn-custom btn-sm">
                            <i class="fas fa-edit me-1"></i>Edit
                        </a>
                        <a href="{{ route('admin.about.index') }}" class="btn btn-outline-secondary btn-sm">
                            <i class="fas fa-arrow-left me-1"></i>Back to List
                        </a>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-4">
                                <h5 class="text-muted mb-2">
                                    <i class="fas fa-id-badge me-2"></i>ID: {{ $aboutSection->id }}
                                </h5>
                                <div class="mb-2">
                                    <strong>Status:</strong>
                                    @if($aboutSection->is_active)
                                        <span class="badge bg-success">Active</span>
                                    @else
                                        <span class="badge bg-secondary">Inactive</span>
                                    @endif
                                </div>
                                <div class="mb-2">
                                    <strong>Help Phone:</strong> {{ $aboutSection->help_phone ?? 'Not set' }}
                                </div>
                                <div class="mb-2">
                                    <strong>Created:</strong> {{ $aboutSection->created_at->format('M d, Y \a\t h:i A') }}
                                </div>
                                <div class="mb-2">
                                    <strong>Last Updated:</strong> {{ $aboutSection->updated_at->format('M d, Y \a\t h:i A') }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-4">
                                <h5><i class="fas fa-heading me-2"></i>Title</h5>
                                <div class="border rounded p-3 bg-light">
                                    {{ $aboutSection->title }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-4">
                                <h5><i class="fas fa-align-left me-2"></i>Description</h5>
                                <div class="border rounded p-3 bg-light">
                                    {!! nl2br(e($aboutSection->description)) !!}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <h5><i class="fas fa-images me-2"></i>Images</h5>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <div class="card h-100">
                                        <div class="card-body text-center">
                                            <h6 class="card-title">Image 1</h6>
                                            @if($aboutSection->image1)
                                                <img src="{{ asset($aboutSection->image1) }}" alt="About Image 1" class="img-fluid rounded" style="max-height: 200px; object-fit: cover;">
                                                <div class="mt-2">
                                                    <small class="text-muted">{{ basename($aboutSection->image1) }}</small>
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
                                <div class="col-md-6 mb-3">
                                    <div class="card h-100">
                                        <div class="card-body text-center">
                                            <h6 class="card-title">Image 2</h6>
                                            @if($aboutSection->image2)
                                                <img src="{{ asset($aboutSection->image2) }}" alt="About Image 2" class="img-fluid rounded" style="max-height: 200px; object-fit: cover;">
                                                <div class="mt-2">
                                                    <small class="text-muted">{{ basename($aboutSection->image2) }}</small>
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
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <h5><i class="fas fa-list me-2"></i>Key Points ({{ $aboutSection->keyPoints->count() }})</h5>
                            @if($aboutSection->keyPoints->count() > 0)
                                <div class="row">
                                    @foreach($aboutSection->keyPoints as $keyPoint)
                                        <div class="col-md-6 mb-3">
                                            <div class="card h-100">
                                                <div class="card-body">
                                                    <div class="d-flex align-items-start">
                                                        @if($keyPoint->image)
                                                            <img src="{{ asset($keyPoint->image) }}" alt="Key Point Image" class="me-3 rounded" style="width: 60px; height: 60px; object-fit: cover;">
                                                        @else
                                                            <div class="me-3 rounded bg-light d-flex align-items-center justify-content-center" style="width: 60px; height: 60px;">
                                                                <i class="fas fa-list fa-lg text-muted"></i>
                                                            </div>
                                                        @endif
                                                        <div class="flex-grow-1">
                                                            <h6 class="card-title mb-2">{{ $keyPoint->title }}</h6>
                                                            <p class="card-text text-muted small">{{ Str::limit($keyPoint->description, 100) }}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            @else
                                <div class="text-center py-4 text-muted">
                                    <i class="fas fa-list fa-2x mb-2"></i>
                                    <p>No key points added yet.</p>
                                </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
@endsection
