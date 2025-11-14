@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- View Service -->
            <div class="section-card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <span><i class="fas fa-eye me-2"></i>View Service</span>
                    <div>
                        <a href="{{ route('admin.services.edit', $service) }}" class="btn btn-custom btn-sm">
                            <i class="fas fa-edit me-1"></i>Edit
                        </a>
                        <a href="{{ route('admin.services.index') }}" class="btn btn-outline-secondary btn-sm">
                            <i class="fas fa-arrow-left me-1"></i>Back to List
                        </a>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-4">
                                <h5 class="text-muted mb-2">
                                    <i class="fas fa-id-badge me-2"></i>ID: {{ $service->id }}
                                </h5>
                                <div class="mb-2">
                                    <strong>Status:</strong>
                                    @if($service->is_active)
                                        <span class="badge bg-success">Active</span>
                                    @else
                                        <span class="badge bg-secondary">Inactive</span>
                                    @endif
                                </div>
                                <div class="mb-2">
                                    <strong>Created:</strong> {{ $service->created_at->format('M d, Y \a\t h:i A') }}
                                </div>
                                <div class="mb-2">
                                    <strong>Last Updated:</strong> {{ $service->updated_at->format('M d, Y \a\t h:i A') }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-4">
                                <h5><i class="fas fa-tag me-2"></i>Service Title</h5>
                                <div class="border rounded p-3 bg-light">
                                    <h3 class="mb-0">{{ $service->title }}</h3>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-4">
                                <h5><i class="fas fa-align-left me-2"></i>Description</h5>
                                <div class="border rounded p-3 bg-light">
                                    {!! nl2br(e($service->description)) !!}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <h5><i class="fas fa-image me-2"></i>Service Image</h5>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="card h-100">
                                        <div class="card-body text-center">
                                            @if($service->image)
                                                <img src="{{ asset($service->image) }}" alt="{{ $service->title }}" class="img-fluid rounded mb-3" style="max-height: 300px; object-fit: cover;">
                                                <div class="mt-2">
                                                    <small class="text-muted">{{ basename($service->image) }}</small>
                                                </div>
                                                <div class="mt-2">
                                                    <span class="badge bg-success">Image Available</span>
                                                </div>
                                            @else
                                                <div class="text-center text-muted py-4">
                                                    <i class="fas fa-image fa-4x mb-3"></i>
                                                    <h6>No Image</h6>
                                                    <p class="small">No image has been uploaded for this service</p>
                                                </div>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card h-100">
                                        <div class="card-body">
                                            <h6 class="card-title">
                                                <i class="fas fa-info-circle me-2 text-info"></i>Service Details
                                            </h6>
                                            <div class="row g-3">
                                                <div class="col-12">
                                                    <div class="border-start border-primary border-4 ps-3">
                                                        <strong>Title:</strong> {{ $service->title }}
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="border-start border-success border-4 ps-3">
                                                        <strong>Status:</strong>
                                                        @if($service->is_active)
                                                            <span class="badge bg-success ms-2">Active</span>
                                                        @else
                                                            <span class="badge bg-secondary ms-2">Inactive</span>
                                                        @endif
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="border-start border-info border-4 ps-3">
                                                        <strong>Description Length:</strong> {{ strlen($service->description) }} characters
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="border-start border-warning border-4 ps-3">
                                                        <strong>Created:</strong> {{ $service->created_at->format('M d, Y') }}
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="border-start border-danger border-4 ps-3">
                                                        <strong>Last Updated:</strong> {{ $service->updated_at->format('M d, Y') }}
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
        </div>
    </div>
</main>
@endsection
