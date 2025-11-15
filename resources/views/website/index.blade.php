@extends('website.layouts.masterlayout')

@section('content')
    <!-- Hero Section -->
    <section class="hero" id="home">
        <div class="hero-content">
            <h1 class="hero-title">
                Enjoy the best cleaning
                <span class="animated-services">
                    <span>S</span><span>E</span><span>R</span><span>V</span><span>I</span><span>C</span><span>E</span>
                </span>
                & stay safe
            </h1>
            <p class="hero-description">From leaky taps to deep cleaning, QwikHom is your neighborhood solution for
                reliable, professional home services — delivered with care, backed by law, and rooted in trust.</p>
            <button class="download-btn">Download App</button>
            <div class="rating-container">
                <img src="{{ asset('assets/images/google_icon.svg') }}" alt="Google Icon" class="google-play-icon">
                <div class="rating-info">
                    <img src="{{ asset('assets/images/rating_stars.svg') }}" alt="4.9 stars">
                    <div class="rating-text">
                        <span>Review</span>
                        <span>4.9/5.0</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="hero-image-container">
            <img src="{{ asset('assets/images/bannerImg1.png') }}" class="img img-top-right">
            <img src="{{ asset('assets/images/bannerImg4.png') }}" class="img img-top-left">
            <img src="{{ asset('assets/images/bannerImg3.png') }}" class="img img-bottom-left">
            <img src="{{ asset('assets/images/bannerImg2.png') }}" class="img img-bottom-right">
        </div>
    </section>

    {{-- why qwikhom ?  --}}
    <section class="container my-5 py-5">
        <div class="row align-items-center">

            <!-- LEFT SIDE -->
            <div class="col-lg-6 mb-4">

                <!-- Years of Experience -->
                <h1 class="fw-bold" style="font-weight: 600;font-size:72px;color:#004271;">1+</h1>
                <p class="text-muted">Years of Experience</p>

                <!-- Images Wrapper -->
                <div class="position-relative mt-4">
                    <img src="{{ asset('assets/images/front-view-woman-cleaning-home 1.png') }}" class="img-fluid main-img"
                        alt="">
                    <img src="{{ asset('assets/images/women-cleaning.png') }}" class="img-fluid overlay-img" alt="">
                </div>

            </div>

            <!-- RIGHT SIDE -->
            <div class="col-lg-6">

                <h3 class="fw-bold mb-3">Why QwikHom?</h3>

                <p class="text-muted">
                    Many service providers operate as unlicensed freelancers, often not approved by municipal
                    authorities. QwikHom bridges this gap — offering fully verified, trained, and accountable
                    professionals.
                </p>

                <!-- Feature Card 1 -->
                <div class="p-3 mt-4 feature-box d-flex align-items-start">
                    <div class="icon-box me-3">
                        <i class="bi bi-shield-check fs-2"></i>
                    </div>
                    <div>
                        <h5 class="fw-semibold">Trusted Experts</h5>
                        <p class="text-muted mb-0">
                            All service partners are background-checked and verified.
                        </p>
                    </div>
                </div>

                <!-- Feature Card 2 -->
                <div class="p-3 mt-3 feature-box d-flex align-items-start">
                    <div class="icon-box me-3">
                        <i class="bi bi-geo-alt fs-2"></i>
                    </div>
                    <div>
                        <h5 class="fw-semibold">App-Enabled Tracking</h5>
                        <p class="text-muted mb-0">
                            Book, track, and rate every service in real time.
                        </p>
                    </div>
                </div>

            </div>
        </div>
    </section>


    <section class="how-it-works-flow" id="how-it-works-flow">
        <div class="container">
            <div class="how-it-works-content">
                <div class="how-it-works-image">
                    <img src="{{ asset('assets/images/how_it_works_phone.png') }}" alt="How it works">
                </div>
                <div class="how-it-works-steps">
                    <div class="step">
                        <div class="step-number-container">
                            <div class="step-number">1</div>
                        </div>
                        <div class="step-text">
                            <h4>Download The App</h4>
                            <p>Download the QwikHom App to bring reliable home services to your fingertips. Sign up in
                                seconds, browse trusted professionals, and book services designed for Wasl Village
                                residents.</p>
                        </div>
                    </div>
                    <div class="step">
                        <div class="step-number-container">
                            <div class="step-number">2</div>
                        </div>
                        <div class="step-text">
                            <h4>Select Your Service</h4>
                            <p>Choose from a wide range of services — cleaning, maintenance, salon, pest control, pet
                                grooming, and more. Every service is handled by verified professionals you can trust.
                            </p>
                        </div>
                    </div>
                    <div class="step">
                        <div class="step-number-container">
                            <div class="step-number">3</div>
                        </div>
                        <div class="step-text">
                            <h4>Set Your Schedule</h4>
                            <p>Pick a date and time that works best for you — QwikHom fits around your lifestyle, not
                                the other way around. Schedule services in advance or book instantly for same-day
                                assistance.</p>
                        </div>
                    </div>
                    <div class="step">
                        <div class="step-number-container">
                            <div class="step-number">4</div>
                        </div>
                        <div class="step-text">
                            <h4>Pay Securely & Relax</h4>
                            <p>Make safe, cashless payments directly through the QwikHom app. Every transaction is
                                protected, documented, and linked to your service record for total transparency.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="app-features" id="app-features">
        <div class="app-features-container">
            <div class="app-features-images">
                <img src="{{ asset('assets/images/phone_mockup_1.png') }}" alt="App on phone" class="app-feature-main-img">
                <img src="{{ asset('assets/images/phone_mockup_2.png') }}" alt="App screenshot"
                    class="app-feature-secondary-img">
            </div>
            <div class="app-features-text">
                <h2 class="features-title">Your Home. One App. Complete Peace of Mind.</h2>
                <p class="features-description">Experience complete control over your home services. Book, track, and
                    pay securely — all within the QwikHom app.</p>
                <div class="app-download-buttons">
                    <img src="{{ asset('assets/images/google_play.png') }}" alt="Get it on Google Play">
                    <img src="{{ asset('assets/images/app_store.png') }}" alt="Download on the App Store">
                </div>
            </div>
        </div>
    </section>

    <!-- Services Section -->
    <section class="services" id="services">
        <div class="container">
            <h2 class="section-title">Everything Your Home Needs</h2>
            <p class="section-subtitle">From small repairs to full maintenance — all under one trusted roof.</p>

            <div class="services-grid">
                <div class="service-card">
                    <img src="{{ asset('assets/images/service_core.png') }}" alt="Core Home Service"
                        class="service-image">
                    <div class="service-card-overlay"></div>
                    <h3 class="service-title">Core Home Service</h3>
                </div>
                <div class="service-card">
                    <img src="{{ asset('assets/images/service_family.png') }}" alt="Family Support"
                        class="service-image">
                    <div class="service-card-overlay"></div>
                    <h3 class="service-title">Family Support</h3>
                </div>
                <div class="service-card">
                    <img src="{{ asset('assets/images/service_personal.png') }}" alt="Personal Care"
                        class="service-image">
                    <div class="service-card-overlay"></div>
                    <h3 class="service-title">Personal Care</h3>
                </div>
                <div class="service-card">
                    <img src="{{ asset('assets/images/service_maintenance.png') }}" alt="Home Maintenance"
                        class="service-image">
                    <div class="service-card-overlay"></div>
                    <h3 class="service-title">Home Maintenance</h3>
                </div>
                <div class="service-card">
                    <img src="{{ asset('assets/images/service_vehicle.png') }}" alt="Vehicle Service"
                        class="service-image">
                    <div class="service-card-overlay"></div>
                    <h3 class="service-title">Vehicle Service</h3>
                </div>
                <div class="service-card">
                    <img src="{{ asset('assets/images/service_legal.png') }}" alt="Legal Service" class="service-image">
                    <div class="service-card-overlay"></div>
                    <h3 class="service-title">Legal Service</h3>
                </div>
                <div class="service-card">
                    <img src="{{ asset('assets/images/service_events.png') }}" alt="Events" class="service-image">
                    <div class="service-card-overlay"></div>
                    <h3 class="service-title">Events</h3>
                </div>
                <div class="service-card">
                    <img src="{{ asset('assets/images/service_pet.png') }}" alt="Pet Care & Grooming"
                        class="service-image">
                    <div class="service-card-overlay"></div>
                    <h3 class="service-title">Pet Care & Grooming</h3>
                </div>
            </div>
        </div>
    </section>

    <!-- Pricing Plans Section -->
    <section class="pricing" id="plans">
        <div class="container">
            <h2 class="section-title">Choose a Plan That Works for You</h2>
            <p class="section-subtitle">Whether you need weekly support or one-time help, QwikHom brings verified
                professionals to your doorstep — on your schedule.</p>

            <div class="how-it-works-section">
                <p class="pricing-subtitle">We've simplified every step — so you can enjoy reliable home services with
                    total confidence.</p>
                <h3 class="how-it-works-title">How It Works</h3>
            </div>

            <div class="pricing-grid">
                <div class="pricing-card">
                    <div class="plan-header">
                        <h4 class="plan-title">One-Time Quick Fix</h4>
                        <p class="plan-description">Perfect for urgent, one-time help.</p>
                    </div>
                    <div class="plan-price">AED 1,999</div>
                    <div class="plan-features">
                        <div class="feature-item">
                            <img src="{{ asset('assets/images/tick_icon.svg') }}" alt="tick">
                            <span>Emergency repairs</span>
                        </div>
                        <div class="feature-item">
                            <img src="{{ asset('assets/images/tick_icon.svg') }}" alt="tick">
                            <span>Move-in or move-out cleaning</span>
                        </div>
                        <div class="feature-item">
                            <img src="{{ asset('assets/images/tick_icon.svg') }}" alt="tick">
                            <span>Appliance or AC servicing</span>
                        </div>
                        <div class="feature-item">
                            <img src="{{ asset('assets/images/tick_icon.svg') }}" alt="tick">
                            <span>Short-term rentals / one-day maintenance</span>
                        </div>
                    </div>
                    <button class="plan-btn">Book Now</button>
                </div>

                <div class="pricing-card">
                    <div class="plan-header">
                        <h4 class="plan-title">QwikCare Monthly</h4>
                        <p class="plan-description">Convenient monthly service, tailored to your routine.</p>
                    </div>
                    <div class="plan-price">AED 9,999</div>
                    <div class="plan-features">
                        <div class="feature-item">
                            <img src="{{ asset('assets/images/tick_icon.svg') }}" alt="tick">
                            <span>Regular home upkeep</span>
                        </div>
                        <div class="feature-item">
                            <img src="{{ asset('assets/images/tick_icon.svg') }}" alt="tick">
                            <span>Families with active schedules</span>
                        </div>
                        <div class="feature-item">
                            <img src="{{ asset('assets/images/tick_icon.svg') }}" alt="tick">
                            <span>Apartments and villas needing frequent service</span>
                        </div>
                        <div class="feature-item">
                            <img src="{{ asset('assets/images/tick_icon.svg') }}" alt="tick">
                            <span>Those seeking fixed-cost convenience</span>
                        </div>
                    </div>
                    <button class="plan-btn">Book Now</button>
                </div>

                <div class="pricing-card">
                    <div class="plan-header">
                        <h4 class="plan-title">QwikCare Weekly</h4>
                        <p class="plan-description">Weekly comfort, consistent care.</p>
                    </div>
                    <div class="plan-price">AED 3,999</div>
                    <div class="plan-features">
                        <div class="feature-item">
                            <img src="{{ asset('assets/images/tick_icon.svg') }}" alt="tick">
                            <span>Busy working families</span>
                        </div>
                        <div class="feature-item">
                            <img src="{{ asset('assets/images/tick_icon.svg') }}" alt="tick">
                            <span>Shared apartments</span>
                        </div>
                        <div class="feature-item">
                            <img src="{{ asset('assets/images/tick_icon.svg') }}" alt="tick">
                            <span>Routine upkeep & recurring cleaning</span>
                        </div>
                        <div class="feature-item">
                            <img src="{{ asset('assets/images/tick_icon.svg') }}" alt="tick">
                            <span>Residents who want short-term flexibility</span>
                        </div>
                    </div>
                    <button class="plan-btn">Book Now</button>
                </div>

                <div class="pricing-card">
                    <div class="plan-header">
                        <h4 class="plan-title">QwikCare Annual</h4>
                        <p class="plan-description">Year-round service, exclusive savings.</p>
                    </div>
                    <div class="plan-price">AED 15,999</div>
                    <div class="plan-features">
                        <div class="feature-item">
                            <img src="{{ asset('assets/images/tick_icon.svg') }}" alt="tick">
                            <span>Long-term residents</span>
                        </div>
                        <div class="feature-item">
                            <img src="{{ asset('assets/images/tick_icon.svg') }}" alt="tick">
                            <span>Families who want full-service peace of mind</span>
                        </div>
                        <div class="feature-item">
                            <img src="{{ asset('assets/images/tick_icon.svg') }}" alt="tick">
                            <span>Villas and large households</span>
                        </div>
                        <div class="feature-item">
                            <img src="{{ asset('assets/images/tick_icon.svg') }}" alt="tick">
                            <span>Those who prefer annual budgeting and premium support</span>
                        </div>
                    </div>
                    <button class="plan-btn">Book Now</button>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section class="about" id="about">
        <div class="about-container">
            <div class="about-images">
                <img src="{{ asset('assets/images/about_image.png') }}" alt="Team Collaboration"
                    class="about-main-image">
                <div class="experience-badge">
                    <div class="experience-content">
                        <span class="experience-number">1+</span>
                        <span class="experience-text">Years of Experience</span>
                    </div>
                </div>
                <div class="about-contact-widget">
                    <img src="{{ asset('assets/images/call_icon.svg') }}" alt="call icon">
                    <div>
                        <p>Need Your Help</p>
                        <p>1234567890</p>
                    </div>
                </div>
            </div>
            <div class="about-text-content">
                <h3 class="why-qwikhom-title">Why QwikHom?</h3>
                <p class="about-description">Many service providers in Wasl Village operate as unlicensed freelancers,
                    often not approved by Dubai Municipality. QwikHom bridges this gap — offering fully verified,
                    trained, and accountable professionals.</p>
                <div class="feature-boxes">
                    <div class="feature-box">
                        <div class="feature-icon-wrapper">
                            <img src="{{ asset('assets/images/customer_support.svg') }}" alt="customer support icon">
                        </div>
                        <div class="feature-text">
                            <h4>Built for Wasl Village</h4>
                            <p>Local support and community-driven service.</p>
                        </div>
                    </div>
                    <div class="feature-box">
                        <div class="feature-icon-wrapper">
                            <img src="{{ asset('assets/images/workspace_trusted.svg') }}" alt="trusted experts icon">
                        </div>
                        <div class="feature-text">
                            <h4>Trusted Experts</h4>
                            <p>All service partners are background-checked and verified.</p>
                        </div>
                    </div>
                    <div class="feature-box">
                        <div class="feature-icon-wrapper">
                            <img src="{{ asset('assets/images/map_location.svg') }}" alt="app tracking icon">
                        </div>
                        <div class="feature-text">
                            <h4>App-Enabled Tracking</h4>
                            <p>Book, track, and rate every service in real time.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Statistics Section -->
    <section class="statistics">
        <div class="container">
            <div class="stats-container">
                <div class="stat-item">
                    <div class="stat-icon">
                        <img src="{{ asset('assets/images/stat_staff.png') }}" alt="Team">
                    </div>
                    <div class="stat-text">
                        <h3 class="stat-number" data-target="1400">0+</h3>
                        <p class="stat-label">Total Member</p>
                    </div>
                </div>
                <div class="stat-item">
                    <div class="stat-icon">
                        <img src="{{ asset('assets/images/stat_completed.png') }}" alt="Projects">
                    </div>
                    <div class="stat-text">
                        <h3 class="stat-number" data-target="2400">0+</h3>
                        <p class="stat-label">Completed Project</p>
                    </div>
                </div>
                <div class="stat-item">
                    <div class="stat-icon">
                        <img src="{{ asset('assets/images/stat_rating.png') }}" alt="Rating">
                    </div>
                    <div class="stat-text">
                        <h3 class="stat-number" data-target="100">0%</h3>
                        <p class="stat-label">Customer Ratings</p>
                    </div>
                </div>
                <div class="stat-item">
                    <div class="stat-icon">
                        <img src="{{ asset('assets/images/stat_services.png') }}" alt="Services">
                    </div>
                    <div class="stat-text">
                        <h3 class="stat-number" data-target="20">0+</h3>
                        <p class="stat-label">Our Services</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
