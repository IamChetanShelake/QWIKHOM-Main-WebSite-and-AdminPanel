@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- Edit Service -->
            <div class="section-card">
                <div class="card-header">
                    <i class="fas fa-edit me-2"></i>Edit Service
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.services.update', $service) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')

                        <!-- Basic Information Section -->
                        <div class="mb-4">
                            <h5 class="mb-3 text-primary">
                                <i class="fas fa-info-circle me-2"></i>Service Information
                            </h5>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <label for="title" class="form-label fw-bold">
                                            <i class="fas fa-tag me-2 text-primary"></i>Service Title <span class="text-danger">*</span>
                                        </label>
                                        <input type="text" name="title" id="title" class="form-control form-control-lg" value="{{ old('title', $service->title) }}" placeholder="Enter the service name" required>
                                        <div class="form-text">This will be displayed as the main service heading</div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <label for="description" class="form-label fw-bold">
                                            <i class="fas fa-align-left me-2 text-primary"></i>Description <span class="text-danger">*</span>
                                        </label>
                                        <textarea name="description" id="description" class="form-control" rows="6" placeholder="Describe what this service offers, its benefits, and what customers can expect..." required>{{ old('description', $service->description) }}</textarea>
                                        <div class="form-text">Provide a detailed description of the service and its value proposition</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Image Section -->
                        <div class="mb-4">
                            <h5 class="mb-3 text-success">
                                <i class="fas fa-image me-2"></i>Service Image
                            </h5>
                            <div class="alert alert-info">
                                <i class="fas fa-lightbulb me-2"></i>
                                <strong>Tip:</strong> Upload a high-quality image that represents this service. Leave the field empty to keep the current image.
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="card border-success">
                                        <div class="card-body text-center">
                                            <div class="mb-3">
                                                <i class="fas fa-image fa-3x text-success"></i>
                                            </div>
                                            <label for="image" class="form-label fw-bold">Service Image</label>
                                            <input type="file" name="image" id="image" class="form-control" accept="image/*" onchange="previewImage(this, 'preview')">
                                            <div class="form-text">Upload a new image to replace the current one</div>
                                            <div id="preview" class="mt-2 {{ $service->image ? '' : 'd-none' }}">
                                                <img id="img-preview" class="img-fluid rounded" style="max-height: 200px;" src="{{ $service->image ? asset($service->image) : '' }}" alt="Current Image">
                                                @if($service->image)
                                                    <div class="mt-1">
                                                        <small class="text-muted">Current image - upload new to replace</small>
                                                    </div>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card border-info">
                                        <div class="card-body">
                                            <h6 class="card-title text-info">
                                                <i class="fas fa-cogs me-2"></i>Publication Settings
                                            </h6>
                                            <div class="mb-3">
                                                <div class="form-check form-switch">
                                                    <input type="checkbox" name="is_active" id="is_active" class="form-check-input" value="1" {{ old('is_active', $service->is_active) ? 'checked' : '' }}>
                                                    <label for="is_active" class="form-check-label fw-bold">
                                                        <span class="badge bg-success me-2">Active</span> Make this service visible on the website
                                                    </label>
                                                </div>
                                                <div class="form-text">Uncheck to hide from public view</div>
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
                                                <i class="fas fa-save me-2 text-primary"></i>
                                                <strong>Ready to update this service?</strong>
                                                <br>
                                                <small class="text-muted">Last updated: {{ $service->updated_at->format('M d, Y \a\t h:i A') }}</small>
                                            </div>
                                            <div class="d-flex gap-2">
                                                <button type="submit" class="btn btn-success btn-lg">
                                                    <i class="fas fa-sync me-2"></i>Update Service
                                                </button>
                                                <a href="{{ route('admin.services.index') }}" class="btn btn-outline-secondary btn-lg">
                                                    <i class="fas fa-times me-2"></i>Cancel
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>
@endsection

@section('scripts')
<script>
$(document).ready(function() {
    // Image preview function
    function previewImage(input, previewId) {
        const preview = document.getElementById(previewId);
        const imgPreview = document.getElementById('img-' + previewId);

        if (input.files && input.files[0]) {
            const reader = new FileReader();
            reader.onload = function(e) {
                imgPreview.src = e.target.result;
                preview.classList.remove('d-none');
            };
            reader.readAsDataURL(input.files[0]);
        } else {
            preview.classList.add('d-none');
        }
    }

    // Make previewImage function global
    window.previewImage = previewImage;

    // Form validation feedback
    $('form').on('submit', function(e) {
        // Show loading state
        const submitBtn = $(this).find('button[type="submit"]');
        const originalText = submitBtn.html();
        submitBtn.html('<i class="fas fa-spinner fa-spin me-2"></i>Updating...').prop('disabled', true);

        // Re-enable after 10 seconds (in case of error)
        setTimeout(function() {
            submitBtn.html(originalText).prop('disabled', false);
        }, 10000);
    });
});
</script>
@endsection
