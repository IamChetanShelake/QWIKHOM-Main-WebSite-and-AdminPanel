@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- Create Plan -->
            <div class="section-card">
                <div class="card-header">
                    <i class="fas fa-plus me-2"></i>Create New Subscription Plan
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.plans.store') }}" method="POST">
                        @csrf

                        <!-- Basic Information Section -->
                        <div class="mb-4">
                            <h5 class="mb-3 text-primary">
                                <i class="fas fa-info-circle me-2"></i>Plan Information
                            </h5>
                            <div class="row">
                                <div class="col-md-8">
                                    <div class="mb-3">
                                        <label for="title" class="form-label fw-bold">
                                            <i class="fas fa-tag me-2 text-primary"></i>Plan Title <span class="text-danger">*</span>
                                        </label>
                                        <input type="text" name="title" id="title" class="form-control form-control-lg" value="{{ old('title') }}" placeholder="Enter plan title (e.g., Basic Plan, Premium Plan)" required>
                                        <div class="form-text">This will be displayed as the main heading for this plan</div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label for="price" class="form-label fw-bold">
                                            <i class="fas fa-dollar-sign me-2 text-success"></i>Price (AED) <span class="text-danger">*</span>
                                        </label>
                                        <div class="input-group">
                                            <span class="input-group-text">AED</span>
                                            <input type="number" name="price" id="price" class="form-control form-control-lg" value="{{ old('price') }}" placeholder="0.00" step="0.01" min="0" required>
                                        </div>
                                        <div class="form-text">Enter the monthly price in AED</div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <label for="description" class="form-label fw-bold">
                                            <i class="fas fa-align-left me-2 text-primary"></i>Description <span class="text-danger">*</span>
                                        </label>
                                        <textarea name="description" id="description" class="form-control" rows="4" required>{{ old('description') }}</textarea>
                                        <div class="form-text">Provide a detailed description of what this plan offers</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Plan Features Section -->
                        <div class="mb-4">
                            <h5 class="mb-3 text-warning">
                                <i class="fas fa-list-check me-2"></i>Plan Features
                            </h5>
                            <div class="alert alert-info">
                                <i class="fas fa-lightbulb me-2"></i>
                                <strong>Features:</strong> Add the key features and benefits included in this plan. You can add as many features as needed.
                            </div>

                            <div id="features-container">
                                <div class="feature-item mb-3">
                                    <div class="input-group">
                                        <span class="input-group-text">
                                            <i class="fas fa-check text-success"></i>
                                        </span>
                                        <input type="text" name="features[]" class="form-control" placeholder="Enter a plan feature (e.g., 5 Services per month)" value="{{ old('features.0') }}">
                                        <button type="button" class="btn btn-outline-danger remove-feature" style="display: none;">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <div class="mb-3">
                                <button type="button" id="add-feature" class="btn btn-outline-primary">
                                    <i class="fas fa-plus me-2"></i>Add Another Feature
                                </button>
                            </div>
                        </div>

                        <!-- Settings Section -->
                        <div class="mb-4">
                            <h5 class="mb-3 text-info">
                                <i class="fas fa-cog me-2"></i>Plan Settings
                            </h5>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="form-check form-switch">
                                                <input type="checkbox" name="is_active" id="is_active" class="form-check-input" value="1" {{ old('is_active', true) ? 'checked' : '' }}>
                                                <label for="is_active" class="form-check-label fw-bold">
                                                    <span class="badge bg-success me-2">Active</span> Make this plan available for purchase
                                                </label>
                                            </div>
                                            <div class="form-text">Uncheck to hide this plan from customers</div>
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
                                                <strong>Ready to create this subscription plan?</strong>
                                            </div>
                                            <div class="d-flex gap-2">
                                                <button type="submit" class="btn btn-success btn-lg">
                                                    <i class="fas fa-plus me-2"></i>Create Plan
                                                </button>
                                                <a href="{{ route('admin.plans.index') }}" class="btn btn-outline-secondary btn-lg">
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
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">

<script>
$(document).ready(function() {
    // Initialize Summernote
    $('#description').summernote({
        height: 150,
        toolbar: [
            ['style', ['bold', 'italic', 'underline', 'clear']],
            ['font', ['strikethrough', 'superscript', 'subscript']],
            ['fontsize', ['fontsize']],
            ['color', ['color']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['height', ['height']],
            ['insert', ['link', 'picture']],
            ['view', ['fullscreen', 'codeview']]
        ]
    });

    // Add more features functionality
    let featureCount = 1;

    $('#add-feature').click(function() {
        featureCount++;
        const featureHtml = `
            <div class="feature-item mb-3">
                <div class="input-group">
                    <span class="input-group-text">
                        <i class="fas fa-check text-success"></i>
                    </span>
                    <input type="text" name="features[]" class="form-control" placeholder="Enter a plan feature (e.g., Priority customer support)">
                    <button type="button" class="btn btn-outline-danger remove-feature">
                        <i class="fas fa-trash"></i>
                    </button>
                </div>
            </div>
        `;
        $('#features-container').append(featureHtml);
        updateRemoveButtons();
    });

    // Remove feature functionality
    $(document).on('click', '.remove-feature', function() {
        $(this).closest('.feature-item').remove();
        featureCount--;
        updateRemoveButtons();
    });

    function updateRemoveButtons() {
        const removeButtons = $('.remove-feature');
        if (featureCount > 1) {
            removeButtons.show();
        } else {
            removeButtons.hide();
        }
    }

    // Form validation feedback
    $('form').on('submit', function(e) {
        // Show loading state
        const submitBtn = $(this).find('button[type="submit"]');
        const originalText = submitBtn.html();
        submitBtn.html('<i class="fas fa-spinner fa-spin me-2"></i>Creating...').prop('disabled', true);

        // Re-enable after 10 seconds (in case of error)
        setTimeout(function() {
            submitBtn.html(originalText).prop('disabled', false);
        }, 10000);
    });
});
</script>
@endsection
