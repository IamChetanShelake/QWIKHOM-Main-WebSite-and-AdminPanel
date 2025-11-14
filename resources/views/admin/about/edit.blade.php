@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- Edit About Section -->
            <div class="section-card">
                <div class="card-header">
                    <i class="fas fa-edit me-2"></i>Edit About Section
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.about.update', $aboutSection) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')

                        <!-- Basic Information Section -->
                        <div class="mb-4">
                            <h5 class="mb-3 text-primary">
                                <i class="fas fa-info-circle me-2"></i>Basic Information
                            </h5>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <label for="title" class="form-label fw-bold">
                                            <i class="fas fa-heading me-2 text-primary"></i>Section Title <span class="text-danger">*</span>
                                        </label>
                                        <input type="text" name="title" id="title" class="form-control form-control-lg" value="{{ old('title', $aboutSection->title) }}" placeholder="Enter the main title for this about section" required>
                                        <div class="form-text">This will be displayed as the main heading</div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <label for="description" class="form-label fw-bold">
                                            <i class="fas fa-align-left me-2 text-primary"></i>Description <span class="text-danger">*</span>
                                        </label>
                                        <textarea name="description" id="description" class="form-control" rows="4" placeholder="Describe your company, mission, or what makes you unique..." required>{{ old('description', $aboutSection->description) }}</textarea>
                                        <div class="form-text">Provide a compelling description that tells visitors about your business</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Images Section -->
                        <div class="mb-4">
                            <h5 class="mb-3 text-success">
                                <i class="fas fa-images me-2"></i>Section Images
                            </h5>
                            <div class="alert alert-info">
                                <i class="fas fa-lightbulb me-2"></i>
                                <strong>Tip:</strong> Upload high-quality images that represent your brand and services. Leave fields empty to keep current images.
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="card border-primary">
                                        <div class="card-body text-center">
                                            <div class="mb-3">
                                                <i class="fas fa-image fa-2x text-primary"></i>
                                            </div>
                                            <label for="image1" class="form-label fw-bold">Primary Image</label>
                                            <input type="file" name="image1" id="image1" class="form-control" accept="image/*" onchange="previewImage(this, 'preview1')">
                                            <div class="form-text">Main hero image for the about section</div>
                                            <div id="preview1" class="mt-2 {{ $aboutSection->image1 ? '' : 'd-none' }}">
                                                <img id="img-preview1" class="img-fluid rounded" style="max-height: 150px;" src="{{ $aboutSection->image1 ? asset($aboutSection->image1) : '' }}" alt="Current Image">
                                                @if($aboutSection->image1)
                                                    <div class="mt-1">
                                                        <small class="text-muted">Current image - upload new to replace</small>
                                                    </div>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card border-success">
                                        <div class="card-body text-center">
                                            <div class="mb-3">
                                                <i class="fas fa-image fa-2x text-success"></i>
                                            </div>
                                            <label for="image2" class="form-label fw-bold">Secondary Image</label>
                                            <input type="file" name="image2" id="image2" class="form-control" accept="image/*" onchange="previewImage(this, 'preview2')">
                                            <div class="form-text">Supporting image or team photo</div>
                                            <div id="preview2" class="mt-2 {{ $aboutSection->image2 ? '' : 'd-none' }}">
                                                <img id="img-preview2" class="img-fluid rounded" style="max-height: 150px;" src="{{ $aboutSection->image2 ? asset($aboutSection->image2) : '' }}" alt="Current Image">
                                                @if($aboutSection->image2)
                                                    <div class="mt-1">
                                                        <small class="text-muted">Current image - upload new to replace</small>
                                                    </div>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Contact & Settings Section -->
                        <div class="mb-4">
                            <h5 class="mb-3 text-warning">
                                <i class="fas fa-cogs me-2"></i>Contact & Settings
                            </h5>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="help_phone" class="form-label fw-bold">
                                            <i class="fas fa-phone me-2 text-warning"></i>Help/Support Phone
                                        </label>
                                        <input type="text" name="help_phone" id="help_phone" class="form-control" value="{{ old('help_phone', $aboutSection->help_phone) }}" placeholder="+1 (555) 123-4567">
                                        <div class="form-text">Optional: Phone number for customer support</div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label fw-bold">
                                            <i class="fas fa-toggle-on me-2 text-info"></i>Publication Status
                                        </label>
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="form-check form-switch">
                                                    <input type="checkbox" name="is_active" id="is_active" class="form-check-input" value="1" {{ old('is_active', $aboutSection->is_active) ? 'checked' : '' }}>
                                                    <label for="is_active" class="form-check-label fw-bold">
                                                        <span class="badge bg-success me-2">Active</span> Make this section visible on the website
                                                    </label>
                                                </div>
                                                <div class="form-text">Uncheck to hide from public view</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Key Points Section -->
                        <div class="mb-4">
                            <h5 class="mb-3 text-danger">
                                <i class="fas fa-list me-2"></i>Key Points & Features
                            </h5>
                            <div class="alert alert-warning">
                                <i class="fas fa-exclamation-triangle me-2"></i>
                                <strong>Important:</strong> Key points help visitors quickly understand your unique value propositions. Each point should highlight a key benefit or feature.
                            </div>

                            <div class="card border-danger">
                                <div class="card-header bg-light">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <h6 class="mb-0">
                                            <i class="fas fa-edit me-2 text-danger"></i>Manage Key Points
                                            <span class="badge bg-danger ms-2">{{ $aboutSection->keyPoints->count() }}</span>
                                        </h6>
                                        <button type="button" id="add-key-point" class="btn btn-danger btn-sm">
                                            <i class="fas fa-plus me-1"></i>Add New Point
                                        </button>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div id="key-points-container">
                                        <!-- Existing key points will be loaded here -->
                                        @foreach($aboutSection->keyPoints as $index => $keyPoint)
                                            <div class="key-point-item card border-warning mb-3" data-index="{{ $index }}">
                                                <div class="card-header bg-warning bg-opacity-10 d-flex justify-content-between align-items-center">
                                                    <h6 class="mb-0 text-warning">
                                                        <i class="fas fa-star me-2"></i>Key Point {{ $index + 1 }}
                                                    </h6>
                                                    <button type="button" class="btn btn-outline-danger btn-sm remove-key-point" title="Remove this key point">
                                                        <i class="fas fa-times"></i>
                                                    </button>
                                                </div>
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label class="form-label fw-bold">
                                                                    <i class="fas fa-tag me-2 text-warning"></i>Title <span class="text-danger">*</span>
                                                                </label>
                                                                <input type="text" name="key_points[{{ $index }}][title]" class="form-control" value="{{ old('key_points.' . $index . '.title', $keyPoint->title) }}" placeholder="e.g., Professional Service" required>
                                                                <div class="form-text">A short, catchy title for this key point</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label class="form-label fw-bold">
                                                                    <i class="fas fa-image me-2 text-success"></i>Icon/Image
                                                                </label>
                                                                <input type="file" name="key_points[{{ $index }}][image]" class="form-control" accept="image/*" onchange="previewKeyPointImage(this, {{ $index }})">
                                                                <div class="form-text">Optional: Upload an icon or image (PNG, JPG, SVG)</div>
                                                                <div id="keypoint-preview-{{ $index }}" class="mt-2 {{ $keyPoint->image ? '' : 'd-none' }}">
                                                                    <img id="keypoint-img-{{ $index }}" class="img-fluid rounded" style="max-height: 80px;" src="{{ $keyPoint->image ? asset($keyPoint->image) : '' }}" alt="Current Key Point Image">
                                                                    @if($keyPoint->image)
                                                                        <div class="mt-1">
                                                                            <small class="text-muted">Current image - upload new to replace</small>
                                                                        </div>
                                                                    @endif
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="mb-3">
                                                                <label class="form-label fw-bold">
                                                                    <i class="fas fa-align-left me-2 text-info"></i>Description <span class="text-danger">*</span>
                                                                </label>
                                                                <textarea name="key_points[{{ $index }}][description]" class="form-control" rows="3" placeholder="Describe what makes this key point valuable to your customers..." required>{{ old('key_points.' . $index . '.description', $keyPoint->description) }}</textarea>
                                                                <div class="form-text">Explain the benefit or feature in detail</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>

                                    <div class="text-center mt-3" id="empty-state" style="{{ $aboutSection->keyPoints->count() > 0 ? 'display: none;' : '' }}">
                                        <i class="fas fa-list fa-2x text-muted mb-2"></i>
                                        <p class="text-muted">No key points added yet. Click "Add New Point" to get started.</p>
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
                                                <strong>Ready to update?</strong>
                                                <br>
                                                <small class="text-muted">Last updated: {{ $aboutSection->updated_at->format('M d, Y \a\t h:i A') }}</small>
                                            </div>
                                            <div class="d-flex gap-2">
                                                <button type="submit" class="btn btn-success btn-lg">
                                                    <i class="fas fa-sync me-2"></i>Update & Publish
                                                </button>
                                                <a href="{{ route('admin.about.index') }}" class="btn btn-outline-secondary btn-lg">
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
    let keyPointIndex = {{ $aboutSection->keyPoints->count() }};

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

    // Key point image preview function
    window.previewKeyPointImage = function(input, index) {
        const preview = document.getElementById('keypoint-preview-' + index);
        const imgPreview = document.getElementById('keypoint-img-' + index);

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
    };

    // Function to create a key point form
    function createKeyPointForm(index, data = {}) {
        const pointNumber = index + 1;
        return '<div class="key-point-item card border-warning mb-3" data-index="' + index + '">' +
            '<div class="card-header bg-warning bg-opacity-10 d-flex justify-content-between align-items-center">' +
                '<h6 class="mb-0 text-warning">' +
                    '<i class="fas fa-star me-2"></i>Key Point ' + pointNumber +
                '</h6>' +
                '<button type="button" class="btn btn-outline-danger btn-sm remove-key-point" title="Remove this key point">' +
                    '<i class="fas fa-times"></i>' +
                '</button>' +
            '</div>' +
            '<div class="card-body">' +
                '<div class="row">' +
                    '<div class="col-md-6">' +
                        '<div class="mb-3">' +
                            '<label class="form-label fw-bold">' +
                                '<i class="fas fa-tag me-2 text-warning"></i>Title <span class="text-danger">*</span>' +
                            '</label>' +
                            '<input type="text" name="key_points[' + index + '][title]" class="form-control" value="' + (data.title || '') + '" placeholder="e.g., Professional Service" required>' +
                            '<div class="form-text">A short, catchy title for this key point</div>' +
                        '</div>' +
                    '</div>' +
                    '<div class="col-md-6">' +
                        '<div class="mb-3">' +
                            '<label class="form-label fw-bold">' +
                                '<i class="fas fa-image me-2 text-success"></i>Icon/Image' +
                            '</label>' +
                            '<input type="file" name="key_points[' + index + '][image]" class="form-control" accept="image/*" onchange="previewKeyPointImage(this, ' + index + ')">' +
                            '<div class="form-text">Optional: Upload an icon or image (PNG, JPG, SVG)</div>' +
                            '<div id="keypoint-preview-' + index + '" class="mt-2 d-none">' +
                                '<img id="keypoint-img-' + index + '" class="img-fluid rounded" style="max-height: 80px;" alt="Preview">' +
                            '</div>' +
                        '</div>' +
                    '</div>' +
                '</div>' +
                '<div class="row">' +
                    '<div class="col-md-12">' +
                        '<div class="mb-3">' +
                            '<label class="form-label fw-bold">' +
                                '<i class="fas fa-align-left me-2 text-info"></i>Description <span class="text-danger">*</span>' +
                            '</label>' +
                            '<textarea name="key_points[' + index + '][description]" class="form-control" rows="3" placeholder="Describe what makes this key point valuable to your customers..." required>' + (data.description || '') + '</textarea>' +
                            '<div class="form-text">Explain the benefit or feature in detail</div>' +
                        '</div>' +
                    '</div>' +
                '</div>' +
            '</div>' +
        '</div>';
    }

    // Add key point button click
    $('#add-key-point').click(function() {
        const newPoint = createKeyPointForm(keyPointIndex);
        $('#key-points-container').append(newPoint);
        $('#empty-state').hide();
        keyPointIndex++;

        // Update point numbers
        updatePointNumbers();
    });

    // Remove key point button click
    $(document).on('click', '.remove-key-point', function() {
        $(this).closest('.key-point-item').remove();

        // Show empty state if no points left
        if ($('.key-point-item').length === 0) {
            $('#empty-state').show();
        }

        // Update point numbers
        updatePointNumbers();
    });

    // Update point numbers after adding/removing
    function updatePointNumbers() {
        $('.key-point-item').each(function(index) {
            const pointNumber = index + 1;
            $(this).find('.card-header h6').html('<i class="fas fa-star me-2"></i>Key Point ' + pointNumber);
        });
    }

    // Form validation feedback
    $('form').on('submit', function(e) {
        const keyPoints = $('.key-point-item').length;
        if (keyPoints === 0) {
            e.preventDefault();
            alert('Please add at least one key point before saving.');
            return false;
        }

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
