@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- View How It Works Item -->
            <div class="section-card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <span><i class="fas fa-eye me-2"></i>View How It Works Item</span>
                    <div>
                        <a href="{{ route('admin.howitworks.edit', $howItWork) }}" class="btn btn-custom btn-sm">
                            <i class="fas fa-edit me-1"></i>Edit
                        </a>
                        <a href="{{ route('admin.howitworks.index') }}" class="btn btn-outline-secondary btn-sm">
                            <i class="fas fa-arrow-left me-1"></i>Back to List
                        </a>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-4">
                                <h5 class="text-muted mb-2">
                                    <i class="fas fa-id-badge me-2"></i>ID: {{ $howItWork->id }}
                                </h5>
                                <div class="mb-2">
                                    <strong>Order:</strong>
                                    <span class="badge bg-primary fs-6">{{ $howItWork->order }}</span>
                                </div>
                                <div class="mb-2">
                                    <strong>Status:</strong>
                                    @if($howItWork->is_active)
                                        <span class="badge bg-success">Active</span>
                                    @else
                                        <span class="badge bg-secondary">Inactive</span>
                                    @endif
                                </div>
                                <div class="mb-2">
                                    <strong>Created:</strong> {{ $howItWork->created_at->format('M d, Y \a\t h:i A') }}
                                </div>
                                <div class="mb-2">
                                    <strong>Last Updated:</strong> {{ $howItWork->updated_at->format('M d, Y \a\t h:i A') }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-4">
                                <h5><i class="fas fa-tag me-2"></i>Title</h5>
                                <div class="border rounded p-3 bg-light">
                                    <h3 class="mb-0">{{ $howItWork->title }}</h3>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-4">
                                <h5><i class="fas fa-align-left me-2"></i>Description</h5>
                                <div class="border rounded p-3 bg-light">
                                    {!! $howItWork->description !!}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <h5><i class="fas fa-info-circle me-2"></i>Item Details</h5>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="card h-100">
                                        <div class="card-body">
                                            <h6 class="card-title">
                                                <i class="fas fa-sort-numeric-down me-2 text-primary"></i>Display Order
                                            </h6>
                                            <div class="row g-3">
                                                <div class="col-12">
                                                    <div class="border-start border-primary border-4 ps-3">
                                                        <strong>Order Number:</strong> {{ $howItWork->order }}
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="border-start border-info border-4 ps-3">
                                                        <strong>Display Position:</strong> Step {{ $howItWork->order }} of 4
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card h-100">
                                        <div class="card-body">
                                            <h6 class="card-title">
                                                <i class="fas fa-cogs me-2 text-success"></i>Publication Status
                                            </h6>
                                            <div class="row g-3">
                                                <div class="col-12">
                                                    <div class="border-start border-success border-4 ps-3">
                                                        <strong>Status:</strong>
                                                        @if($howItWork->is_active)
                                                            <span class="badge bg-success ms-2">Active</span>
                                                        @else
                                                            <span class="badge bg-secondary ms-2">Inactive</span>
                                                        @endif
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="border-start border-warning border-4 ps-3">
                                                        <strong>Visibility:</strong>
                                                        @if($howItWork->is_active)
                                                            Visible on website
                                                        @else
                                                            Hidden from public
                                                        @endif
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
