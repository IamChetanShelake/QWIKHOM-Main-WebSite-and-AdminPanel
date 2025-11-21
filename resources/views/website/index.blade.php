@extends('website.layouts.masterlayout')

@section('content')
    <!-- Services Section -->
    <style>
        .services {
            padding: 100px 0;
            background: var(--light-text);
        }

        .section-title {
            font-family: var(--dm-sans);
            font-size: 24px;
            font-weight: 700;
            color: var(--primary-blue);
            text-align: center;
            margin-bottom: 16px;
        }

        .section-subtitle {
            font-family: var(--dm-sans);
            font-size: 18px;
            font-weight: 400;
            color: var(--grey-text);
            text-align: center;
            margin-bottom: 80px;
            max-width: 557px;
            margin-left: auto;
            margin-right: auto;
        }

        .services-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 30px;
        }

        .service-card {
            position: relative;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
            width: 270px;
            height: 306px;
            cursor: pointer;
            transition: all 0.3s ease;
            filter: brightness(1.1);
        }

        .service-card:hover {
            /* transform: translateY(-10px); */
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.3);
        }

        .service-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 10px;
            transition: transform 0.3s ease;
        }

        /* .service-card:hover .service-image {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    transform: scale(1.05);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                } */

        .service-card-overlay {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(180deg,
                    rgba(255, 255, 255, 0) 0%,
                    rgba(0, 0, 0, 0.8) 100%);
            border-radius: 10px;
            transition: background 0.3s ease;
        }

        .service-card:hover .service-card-overlay {
            background: linear-gradient(180deg,
                    rgba(255, 255, 255, 0) 0%,
                    rgba(0, 0, 0, 0.9) 100%);
        }

        .service-content {
            position: absolute;
            bottom: 0px;
            left: 20px;
            right: 20px;
            padding: 0;
            text-align: center;
        }

        .service-title {
            position: absolute;
            bottom: 20px;
            left: 0;
            right: 0;
            text-align: center;
            font-family: var(--dm-sans);
            font-size: 20px;
            font-weight: 500;
            color: var(--light-text);
            margin: 0;
            transition: transform 0.4s ease;
        }

        .service-description {
            position: absolute;
            bottom: 20px;
            left: 0;
            right: 0;
            text-align: center;
            font-family: var(--dm-sans);
            font-size: 16px;
            font-weight: 400;
            color: var(--light-text);
            margin: 0;
            line-height: 1.4;
            opacity: 0;
            transition: opacity 0.7s ease;
        }

        .service-card:hover .service-title {
            transform: translateY(-80px);
        }

        .service-card:hover .service-description {
            opacity: 1;
        }

        /* how it works */
        .steps-wrapper {
            position: relative;
            width: 100%;
            max-width: 1100px;
            margin: 0 auto;
            padding: 80px 0;
        }

        /* iPhone Center */
        .steps-wrapper .iphone {
            width: 288px;
            height: 584px;
            position: relative;
            display: block;
            margin: 0 auto;
            z-index: 10;
            opacity: 0.5;
        }

        /* Step cards */
        .step-box {
            width: 294px;
            min-height: 237px;
            background: #fff;
            padding: 13px;
            border-radius: 10px;
            border: 2px solid rgb(212 212 212 / 50%);
            opacity: 0;
            animation: fadeInBox 0.8s forwards ease-out;
            position: absolute;
        }

        .num {
            background: #004f9e;
            color: #fff;
            display: inline-block;
            width: 32px;
            height: 32px;
            border-radius: 50%;
            text-align: center;
            line-height: 32px;
            font-weight: 600;
            margin-right: 8px;
            font-size: 16px;
        }

        .step-box h3 {
            font-size: 20px;
            margin: 10px 0;
        }

        /* Positioning Boxes */
        .step1 {
            top: 60px;
            left: 10px;
            animation-delay: 1s;
        }

        .step2 {
            bottom: 90px;
            left: 10px;
            animation-delay: 2.2s;
        }

        .step3 {
            top: 60px;
            right: 10px;
            animation-delay: 3.4s;
        }

        .step4 {
            bottom: 90px;
            right: 10px;
            animation-delay: 4.6s;
        }

        /* Lines */
        .line {
            position: absolute;
            background: rgba(133, 189, 229, 1);
            opacity: 0;
            animation: growLine 0.7s forwards ease-out;
        }

        /* Line positions */
        .line1 {
            width: 0;
            height: 2px;
            top: 150px;
            left: 65.3%;
            animation-delay: 0.3s;
        }

        .line2 {
            width: 0;
            height: 2px;
            bottom: 150px;
            left: 65.3%;
            animation-delay: 1.5s;
        }

        .line3 {
            width: 0;
            height: 2px;
            top: 150px;
            right: 65.3%;
            animation-delay: 2.7s;
        }

        .line4 {
            width: 0;
            height: 2px;
            bottom: 150px;
            right: 65.3%;
            animation-delay: 3.9s;
        }

        /* Dots */
        .dot {
            width: 10px;
            height: 10px;
            background: #0a5dac;
            border-radius: 50%;
            position: absolute;
            opacity: 0;
            animation: fadeInDot 0.3s forwards ease-out;
        }

        .dot1 {
            top: 147px;
            left: calc(35% - 9px);
            animation-delay: 0.9s;
            z-index: 99;
        }

        .dot2 {
            bottom: 145px;
            left: calc(35% - 9px);
            animation-delay: 2.1s;
            z-index: 99;
        }

        .dot3 {
            top: 145px;
            right: calc(35% - 12px);
            animation-delay: 3.3s;
            z-index: 99;
        }

        .dot4 {
            bottom: 145px;
            right: calc(35% - 12px);
            animation-delay: 4.5s;
            z-index: 99;
        }

        /* Vertical Line */
        .vertical-line {
            position: absolute;
            width: 2px;
            background: rgba(133, 189, 229, 1);
            opacity: 0;
            animation: growLineVert 0.7s forwards ease-out;
        }

        .vertical-left {
            left: calc(50% - 170px);
            top: 150px;
            height: 270px;
            animation-delay: 0s;
        }

        .vertical-right {
            left: calc(50% + 170px);
            top: 150px;
            height: 270px;
            animation-delay: 1.2s;
        }

        /* Horizontal End Lines */
        .horizontal-end {
            position: absolute;
            height: 2px;
            background: rgba(133, 189, 229, 1);
            width: 0px;
            opacity: 0;
            animation: growLineHoriz 0.7s forwards ease-out;
        }

        .horizontal-end-left {
            left: calc(50% - 135px - 34px);
            top: 360px;
            animation-delay: 0.6s;
        }

        .horizontal-end-left-dot {
            top: 356px;
            left: calc(35% - 9px);
            animation-delay: 0.9s;
            z-index: 99;
        }

        .horizontal-end-right-dot {
            top: 356px;
            right: calc(35% - 12px);
            animation-delay: 3.3s;
            z-index: 99;
        }

        .horizontal-end-right {
            left: calc(50% + 100px + 12px);
            top: 360px;
            animation-delay: 1.8s;
        }

        /* Animations */
        @keyframes growLine {
            to {
                width: 91px;
                opacity: 1;
            }
        }

        @keyframes growLineVert {
            to {
                height: 442px;
                opacity: 1;
            }
        }

        @keyframes growLineHoriz {
            to {
                width: 60px;
                opacity: 1;
            }
        }

        @keyframes fadeInDot {
            to {
                opacity: 1;
            }
        }

        @keyframes fadeInBox {
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Mobile Responsiveness */
        @media (max-width: 768px) {
            .steps-wrapper {
                padding: 40px 20px;
                max-width: 100%;
            }

            .steps-wrapper .iphone {
                width: 200px;
                height: 408px;
            }

            .vertical-line,
            .horizontal-end,
            .line,
            .dot {
                display: none;
            }

            .step-box {
                position: absolute !important;
                top: 0 !important;
                width: 100% !important;
                min-height: auto !important;
                opacity: 0;
                animation: none;
                /* Disable original animations */
                z-index: 20;
            }

            .step1 {
                animation: fadeInMobile 1s forwards;
                animation-delay: 0.5s;
            }

            .step2 {
                animation: fadeInMobile 1s forwards;
                animation-delay: 1.5s;
            }

            .step3 {
                animation: fadeInMobile 1s forwards;
                animation-delay: 2.5s;
            }

            .step4 {
                animation: fadeInMobile 1s forwards;
                animation-delay: 3.5s;
            }
        }

        @keyframes fadeInMobile {
            to {
                opacity: 1;
            }
        }



        @media (max-width: 768px) {
            .services {
                padding: 60px 0;
            }

            .section-title {
                font-size: 20px;
                margin-bottom: 12px;
            }

            .section-subtitle {
                font-size: 14px;
                margin-bottom: 40px;
            }

            .services-grid {
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
                gap: 20px;
            }

            .service-card {
                flex: 0 1 calc(50% - 10px);
                height: 250px;
            }

            .service-title {
                font-size: 16px;
            }
        }

        @media (max-width: 1024px) {
            .services-grid {
                grid-template-columns: repeat(3, 1fr);
            }
        }

        /* Plans section */
        .plans-section {
            --accent: #0a5dac;
            --card-bg: #e8f8fb;
            /* light inner area */
            --card-top: rgba(0, 66, 113, 1);
            /* top band */
            --text-dark: #083349;
            padding: 48px 20px;
            background: #ffffff;
            font-family: system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial;
        }

        /* decorative hero (optional) */
        .plans-hero-wrap {
            text-align: center;
            /* margin-bottom: 18px; */
        }

        .plans-hero {
            max-width: 780px;
            width: 100%;
            height: auto;
            display: none;
            opacity: 0.06;
        }

        /* Show the hero on wide screens only (optional) */
        @media (min-width:1200px) {
            .plans-hero {
                display: block;
            }
        }

        .plans-inner {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0px 80px;
        }

        .plans-header {
            text-align: center;
            margin-bottom: 28px;
        }

        .plans-header h2 {
            color: var(--accent);
            font-size: 28px;
            margin: 0 0 8px;
            font-weight: 700;
        }

        .plans-header p {
            color: #5d6b72;
            margin: 0 auto;
            max-width: 780px;
            font-size: 15px;
            line-height: 1.6;
        }

        /* grid of plans */
        .plans-grid {
            display: grid;
            gap: 22px;
            grid-template-columns: repeat(1, 1fr);
            align-items: stretch;
            margin-top: 18px;
        }

        /* large screens: 4 columns */
        @media (min-width: 992px) {
            .plans-grid {
                grid-template-columns: repeat(4, 1fr);
            }
        }

        /* card */
        .plan-card {
            width: 247px;
            /* height: 479px; */
            border-radius: 12px;
            background: var(--card-top);
            padding: 5px;
            overflow: hidden;
            display: flex;
            flex-direction: column;
            border: 2px solid rgba(10, 93, 172, 0.06);
        }

        /* top band label */
        .plan-top {
            background: var(--card-top);
            color: #fff;
            padding: 18px 20px;
            font-weight: 700;
            font-size: 18px;
            text-align: center;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        /* card body */
        .plan-body {
            padding: 20px;
            display: flex;
            flex-direction: column;
            gap: 12px;
            min-height: 420px;
            background: rgba(228, 249, 255, 1);
            border-radius: 10px;
            /* keeps cards same height */
        }

        /* short desc */
        .plan-desc {
            color: #526a73;
            font-size: 12px;
            margin: 0;
        }

        /* dashed price box */
        .price-wrap {

            margin: 10px 0;
            display: flex;
            justify-content: center;
        }

        .price {
            width: 199px;
            height: 51px;
            border: 2px dashed rgba(10, 93, 172, 0.35);
            padding: 20px 36px;
            border-radius: 10px;
            font-size: 21px;
            font-weight: 800;
            color: var(--card-top);
            background: rgba(15, 115, 160, 0.03);
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* features */
        .plan-features {
            list-style: none;
            padding: 0;
            margin: 0;
            color: #2f4a55;
            font-size: 14px;
            line-height: 1.8;
            flex: 1 1 auto;
            background: rgba(228, 249, 255, 1);
        }

        .plan-features li {
            padding-left: 22px;
            position: relative;
        }

        /* .plan-features li::before {
                                                                                                                                                                                                                content: "✓";
                                                                                                                                                                                                                position: absolute;
                                                                                                                                                                                                                left: 0;
                                                                                                                                                                                                                top: 0;
                                                                                                                                                                                                                color: var(--accent);
                                                                                                                                                                                                                font-weight: 700;
                                                                                                                                                                                                                font-size: 13px;
                                                                                                                                                                                                            } */

        /* button */
        .btn-book {
            display: inline-block;
            width: 100%;
            text-align: center;
            background: var(--card-top);
            color: #fff;
            padding: 14px 16px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: 700;
            box-shadow: inset 0 -4px 0 rgba(0, 0, 0, 0.06);
            transition: transform .12s ease, box-shadow .12s ease;
        }

        .btn-book:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 18px rgba(11, 91, 138, 0.12);
        }

        /* responsive */
        @media (max-width: 991px) {
            .plans-inner {
                padding: 0 14px;
            }

            .plan-body {
                min-height: auto;
            }

            .price {
                padding: 16px 20px;
                font-size: 18px;
            }
        }

        @media (max-width: 576px) {
            .main-img {
                width: 170px;
                height: auto;
            }

            .overlay-img {
                max-width: 38% !important;

            }
        }

        /* small screens stack nicely with some spacing */
        @media (max-width: 640px) {
            .plans-header h2 {
                font-size: 20px;
            }

            .plan-card {
                border-radius: 10px;
            }
        }

        /* why qwikhom ? */
        /* Feature Cards responsive */
        .feature-box {
            width: 489px;
        }

        @media (max-width: 576px) {
            .feature-box {
                width: 100%;
            }
        }
    </style>


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
    <section class="container py-5">
        <div class="row align-items-start">

            <!-- LEFT SIDE -->
            <div class="col-12 col-lg-6">

                <!-- Years of Experience -->
                <h1 class="fw-bold" style="font-weight: 600;font-size:72px;color:#004271;">1+</h1>
                <p class="text-muted">Years of Experience</p>

                <!-- Images Wrapper -->
                <div class="mt-2" style="position:relative;">

                    <img src="{{ asset('assets/images/front-view-woman-cleaning-home 1.png') }}" class="main-img"
                        alt="">
                    <img src="{{ asset('assets/images/women-cleaning.png') }}" class="img-fluid overlay-img" alt="">
                </div>

            </div>

            <!-- RIGHT SIDE -->
            <div class="col-12 col-lg-6">

                <h3 class="dm-semibold-600-16-28-1 mb-3 mx-3">Why QwikHom?</h3>

                <p class="dm-semibold-400-16-28-0 text-muted">
                    Many service providers operate as unlicensed freelancers, often not approved by municipal
                    authorities. QwikHom bridges this gap — offering fully verified, trained, and accountable
                    professionals.
                </p>

                <!-- Feature Card 1 -->
                <div class="p-3 mt-4 feature-box d-flex align-items-center">
                    <div class="icon-box me-3">
                        <img src="{{ asset('assets/images/trusted-icon.png') }}" alt="">
                    </div>
                    <div>
                        <h5 class="fw-semibold">Trusted Experts</h5>
                        <p class="text-muted mb-0">
                            All service partners are background-checked and verified.
                        </p>
                    </div>
                </div>

                <!-- Feature Card 2 -->
                <div class="p-3 mt-3 feature-box d-flex align-items-center">
                    <div class="icon-box me-3">
                        <img src="{{ asset('assets/images/map-tracking.png') }}" alt="">
                    </div>
                    <div>
                        <h5 class="fw-semibold">App-Enabled Tracking</h5>
                        <p class="text-muted mb-0">
                            Book, track, and rate every service in real time.
                        </p>
                    </div>
                </div>

                <!-- Feature Card 3 -->
                <div class="p-3 mt-3 feature-box d-flex align-items-center">
                    <div class="icon-box me-3">
                        <img src="{{ asset('assets/images/support-icon.png') }}" alt="">
                    </div>
                    <div>
                        <h5 class="fw-semibold">Built for Wasl Village</h5>
                        <p class="text-muted mb-0">
                            Local support and community-driven service.
                        </p>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <section class="services" id="services">
        <div class="container">
            <h2 class="section-title">Everything Your Home Needs</h2>
            <p class="section-subtitle">From small repairs to full maintenance — all under one trusted roof.</p>

            <div class="services-grid">
                <div class="service-card">
                    <img src="{{ asset('assets/images/service_core.png') }}" alt="Core Home Service" class="service-image">
                    <div class="service-card-overlay"></div>
                    <div class="service-content">
                        <h3 class="service-title">Core Home Service</h3>
                        <p class="service-description">Essential home repairs and maintenance services tailored for your
                            comfort.</p>
                    </div>
                </div>
                <div class="service-card">
                    <img src="{{ asset('assets/images/service_family.png') }}" alt="Family Support" class="service-image">
                    <div class="service-card-overlay"></div>
                    <div class="service-content">
                        <h3 class="service-title">Family Support</h3>
                        <p class="service-description">Comprehensive support for families, from childcare to household
                            assistance.</p>
                    </div>
                </div>
                <div class="service-card">
                    <img src="{{ asset('assets/images/service_personal.png') }}" alt="Personal Care" class="service-image">
                    <div class="service-card-overlay"></div>
                    <div class="service-content">
                        <h3 class="service-title">Personal Care</h3>
                        <p class="service-description">Professional personal care services including grooming, wellness, and
                            concierge tasks.</p>
                    </div>
                </div>
                <div class="service-card">
                    <img src="{{ asset('assets/images/service_maintenance.png') }}" alt="Home Maintenance"
                        class="service-image">
                    <div class="service-card-overlay"></div>
                    <div class="service-content">
                        <h3 class="service-title">Home Maintenance</h3>
                        <p class="service-description">Regular upkeep and repairs to keep your home in top condition
                            year-round.</p>
                    </div>
                </div>
                <div class="service-card">
                    <img src="{{ asset('assets/images/service_vehicle.png') }}" alt="Vehicle Service"
                        class="service-image">
                    <div class="service-card-overlay"></div>
                    <div class="service-content">
                        <h3 class="service-title">Vehicle Service</h3>
                        <p class="service-description">Complete vehicle care including detailing, repairs, and maintenance
                            services.</p>
                    </div>
                </div>
                <div class="service-card">
                    <img src="{{ asset('assets/images/service_legal.png') }}" alt="Legal Service" class="service-image">
                    <div class="service-card-overlay"></div>
                    <div class="service-content">
                        <h3 class="service-title">Legal Service</h3>
                        <p class="service-description">Legal consultation and documentation services for real estate and
                            family matters.</p>
                    </div>
                </div>
                <div class="service-card">
                    <img src="{{ asset('assets/images/service_events.png') }}" alt="Events" class="service-image">
                    <div class="service-card-overlay"></div>
                    <div class="service-content">
                        <h3 class="service-title">Events</h3>
                        <p class="service-description">Event planning and execution services including catering, decor, and
                            coordination.</p>
                    </div>
                </div>
                <div class="service-card">
                    <img src="{{ asset('assets/images/service_pet.png') }}" alt="Pet Care & Grooming"
                        class="service-image">
                    <div class="service-card-overlay"></div>
                    <div class="service-content">
                        <h3 class="service-title">Pet Care & Grooming</h3>
                        <p class="service-description">Complete pet care including grooming, walking, training, and health
                            services.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- How It Works Section -->
    <section class="steps-wrapper">

        <img src="{{ asset('assets/images/how_it_works__actual_iphone.png') }}" class="iphone" />

        <!-- Vertical and Horizontal extensions -->
        <div class="vertical-line vertical-left"></div>
        <div class="vertical-line vertical-right"></div>
        <div class="horizontal-end horizontal-end-left"></div>
        <div class="dot horizontal-end-left-dot"></div>
        <div class="dot horizontal-end-right-dot"></div>
        <div class="horizontal-end horizontal-end-right"></div>

        <!-- STEP 1 -->
        <div class="step-box step1 row">
            <div class="" style="display:flex;justify-content:center;align-items:center;">

                <div class="col-2">
                    <span class="num">1</span>
                </div>
                <div class="col-10">
                    <h3>Download The App</h3>
                </div>

            </div>
            <div class="col-12">

                <p>Download the QwikHom App to bring reliable home services to your fingertips.</p>
            </div>
        </div>
        <div class="line line1"></div>
        <div class="dot dot1"></div>

        <!-- STEP 2 -->
        <div class="step-box step2 row">
            <div class="" style="display:flex;justify-content:center;align-items:center;">
                <div class="col-2">
                    <span class="num">2</span>
                </div>
                <div class="col-10">
                    <h3>Select Your Service</h3>
                </div>
            </div>
            <div class="col-12">
                <p>Choose from a wide range of services — cleaning, maintenance, salon, and more.</p>
            </div>
        </div>
        <div class="line line2"></div>
        <div class="dot dot2"></div>

        <!-- STEP 3 -->
        <div class="step-box step3 row">
            <div class="" style="display:flex;justify-content:center;align-items:center;">
                <div class="col-2">
                    <span class="num">3</span>
                </div>
                <div class="col-10">
                    <h3>Set Your Schedule</h3>
                </div>
            </div>
            <div class="col-12">
                <p>Pick a date and time that works best for you.</p>
            </div>
        </div>
        <div class="line line3"></div>
        <div class="dot dot3"></div>

        <!-- STEP 4 -->
        <div class="step-box step4 row">
            <div class="" style="display:flex;justify-content:center;align-items:center;">
                <div class="col-2">
                    <span class="num">4</span>
                </div>
                <div class="col-10">
                    <h3>Pay Securely & Relax</h3>
                </div>
            </div>
            <div class="col-12">
                <p>Make safe & cashless payments directly in the QwikHom app.</p>
            </div>
        </div>
        <div class="line line4"></div>
        <div class="dot dot4"></div>

    </section>

    <!-- Plans Section (drop this into your blade) -->
    <section class="plans-section">

        <!-- optional decorative hero - remove if you don't need it -->
        <div class="plans-hero-wrap">
            <img src="/mnt/data/Group 2085664361.png" alt="plans-visual" class="plans-hero" />
        </div>

        <div class="plans-inner">
            <header class="plans-header">
                <h2>Choose a Plan That Works for You</h2>
                <p>Whether you need weekly support or one-time help, QwikHom brings verified professionals to your doorstep
                    — on your schedule.</p>
            </header>

            <div class="plans-grid">
                <!-- Card 1 -->
                <article class="plan-card">
                    <div class="plan-top">One-Time Quick Fix</div>
                    <div class="plan-body">
                        <p class="plan-desc">Perfect for urgent, one-time help.</p>

                        <div class="price-wrap">
                            <div class="price">AED 1,999</div>
                        </div>

                        <ul class="plan-features">
                            <li>
                                <div class="row">
                                    <div class="col-2">
                                        <img src="{{ asset('images/charm_circle-tick.png') }}" alt="Urgent Icon"
                                            style="width:16px; height:16px; margin-right:6px; vertical-align:middle;">
                                    </div>
                                    <div class="col-10">
                                        <p>

                                            Emergency repairs
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="row">
                                    <div class="col-2">
                                        <img src="{{ asset('images/charm_circle-tick.png') }}" alt="Urgent Icon"
                                            style="width:16px; height:16px; margin-right:6px; vertical-align:middle;">
                                    </div>
                                    <div class="col-10">
                                        <p>

                                            Emergency repairs
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="row">
                                    <div class="col-2">
                                        <img src="{{ asset('images/charm_circle-tick.png') }}" alt="Urgent Icon"
                                            style="width:16px; height:16px; margin-right:6px; vertical-align:middle;">
                                    </div>
                                    <div class="col-10">
                                        <p>

                                            Emergency repairs
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="row">
                                    <div class="col-2">
                                        <img src="{{ asset('images/charm_circle-tick.png') }}" alt="Urgent Icon"
                                            style="width:16px; height:16px; margin-right:6px; vertical-align:middle;">
                                    </div>
                                    <div class="col-10">
                                        <p>

                                            Emergency repairs
                                        </p>
                                    </div>
                                </div>
                            </li>
                        </ul>

                        <a class="btn-book" href="#">Book Now</a>
                    </div>
                </article>

                <!-- Card 2 -->
                <article class="plan-card">
                    <div class="plan-top">QwikCare Weekly</div>
                    <div class="plan-body">
                        <p class="plan-desc">Weekly comfort, consistent care.</p>

                        <div class="price-wrap">
                            <div class="price">AED 3,999</div>
                        </div>

                        <ul class="plan-features">
                            <li>
                                <div class="row">
                                    <div class="col-2">
                                        <img src="{{ asset('images/charm_circle-tick.png') }}" alt="Urgent Icon"
                                            style="width:16px; height:16px; margin-right:6px; vertical-align:middle;">
                                    </div>
                                    <div class="col-10">
                                        <p>

                                            Emergency repairs
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="row">
                                    <div class="col-2">
                                        <img src="{{ asset('images/charm_circle-tick.png') }}" alt="Urgent Icon"
                                            style="width:16px; height:16px; margin-right:6px; vertical-align:middle;">
                                    </div>
                                    <div class="col-10">
                                        <p>

                                            Emergency repairs
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="row">
                                    <div class="col-2">
                                        <img src="{{ asset('images/charm_circle-tick.png') }}" alt="Urgent Icon"
                                            style="width:16px; height:16px; margin-right:6px; vertical-align:middle;">
                                    </div>
                                    <div class="col-10">
                                        <p>

                                            Emergency repairs
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="row">
                                    <div class="col-2">
                                        <img src="{{ asset('images/charm_circle-tick.png') }}" alt="Urgent Icon"
                                            style="width:16px; height:16px; margin-right:6px; vertical-align:middle;">
                                    </div>
                                    <div class="col-10">
                                        <p>

                                            Emergency repairs
                                        </p>
                                    </div>
                                </div>
                            </li>
                        </ul>

                        <a class="btn-book" href="#">Book Now</a>
                    </div>
                </article>

                <!-- Card 3 -->
                <article class="plan-card">
                    <div class="plan-top">QwikCare Monthly</div>
                    <div class="plan-body">
                        <p class="plan-desc">Convenient monthly service, tailored to your routine.</p>

                        <div class="price-wrap">
                            <div class="price">AED 9,999</div>
                        </div>

                        <ul class="plan-features">
                            <li>
                                <div class="row">
                                    <div class="col-2">
                                        <img src="{{ asset('images/charm_circle-tick.png') }}" alt="Urgent Icon"
                                            style="width:16px; height:16px; margin-right:6px; vertical-align:middle;">
                                    </div>
                                    <div class="col-10">
                                        <p>

                                            Emergency repairs
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="row">
                                    <div class="col-2">
                                        <img src="{{ asset('images/charm_circle-tick.png') }}" alt="Urgent Icon"
                                            style="width:16px; height:16px; margin-right:6px; vertical-align:middle;">
                                    </div>
                                    <div class="col-10">
                                        <p>

                                            Emergency repairs
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="row">
                                    <div class="col-2">
                                        <img src="{{ asset('images/charm_circle-tick.png') }}" alt="Urgent Icon"
                                            style="width:16px; height:16px; margin-right:6px; vertical-align:middle;">
                                    </div>
                                    <div class="col-10">
                                        <p>

                                            Emergency repairs
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="row">
                                    <div class="col-2">
                                        <img src="{{ asset('images/charm_circle-tick.png') }}" alt="Urgent Icon"
                                            style="width:16px; height:16px; margin-right:6px; vertical-align:middle;">
                                    </div>
                                    <div class="col-10">
                                        <p>

                                            Emergency repairs
                                        </p>
                                    </div>
                                </div>
                            </li>
                        </ul>

                        <a class="btn-book" href="#">Book Now</a>
                    </div>
                </article>

                <!-- Card 4 -->
                <article class="plan-card">
                    <div class="plan-top">QwikCare Annual</div>
                    <div class="plan-body">
                        <p class="plan-desc">Year-round service, exclusive savings.</p>

                        <div class="price-wrap">
                            <div class="price">AED 15,999</div>
                        </div>

                        <ul class="plan-features">
                            <li>
                                <div class="row">
                                    <div class="col-2">
                                        <img src="{{ asset('images/charm_circle-tick.png') }}" alt="Urgent Icon"
                                            style="width:16px; height:16px; margin-right:6px; vertical-align:middle;">
                                    </div>
                                    <div class="col-10">
                                        <p>

                                            Emergency repairs
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="row">
                                    <div class="col-2">
                                        <img src="{{ asset('images/charm_circle-tick.png') }}" alt="Urgent Icon"
                                            style="width:16px; height:16px; margin-right:6px; vertical-align:middle;">
                                    </div>
                                    <div class="col-10">
                                        <p>

                                            Emergency repairs
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="row">
                                    <div class="col-2">
                                        <img src="{{ asset('images/charm_circle-tick.png') }}" alt="Urgent Icon"
                                            style="width:16px; height:16px; margin-right:6px; vertical-align:middle;">
                                    </div>
                                    <div class="col-10">
                                        <p>

                                            Emergency repairs
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="row">
                                    <div class="col-2">
                                        <img src="{{ asset('images/charm_circle-tick.png') }}" alt="Urgent Icon"
                                            style="width:16px; height:16px; margin-right:6px; vertical-align:middle;">
                                    </div>
                                    <div class="col-10">
                                        <p>

                                            Emergency repairs
                                        </p>
                                    </div>
                                </div>
                            </li>
                        </ul>

                        <a class="btn-book" href="#">Book Now</a>
                    </div>
                </article>
            </div>
        </div>
    </section>

    <!-- Statistics Section -->
    <section class="statistics mt-5 mb-5 position-relative">
        <img src="{{ asset('assets/images/bg_element_1.png') }}" alt="Statistics Background"
            class="statistics-bg-1 statistics-bg position-absolute"
            style="top: 0px;
    left: 0px;
    opacity: 0.5;
    width: 15%; /* full width of parent */
    height: auto;">
        <img src="{{ asset('assets/images/bg_element_2.png') }}" alt="Statistics Background"
            class="statistics-bg-2 statistics-bg position-absolute"
            style="top: 0px;
    right: 0px;
    opacity: 0.5;
     width: 25%; 
    height: auto;">
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



    {{-- <section class="how-it-works-flow" id="how-it-works-flow">
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
    </section> --}}


    <section class="app-features mt-5 mb-5" id="app-features">
        <div class="row">
            <div class="col-6">


                <div class="app-features-container">

                    <div class="app-features-text">
                        <h2 class="features-title">Your Home. One App. Complete Peace of Mind.</h2>
                        <p class="features-description">Experience complete control over your home services. Book, track,
                            and
                            pay securely — all within the QwikHom app.</p>

                        <div class="app-download-buttons row">
                            <div class=""
                                style="display: flex;
        align-items: center;
        justify-content: center;
    ">


                                <div class="col-5">
                                    <img src="{{ asset('assets/images/google_play.png') }}" alt="Get it on Google Play"
                                        style="    width: 208px;
        height: 86px;">
                                </div>

                                <div class="col-5">
                                    <img src="{{ asset('assets/images/app_store.png') }}"
                                        alt="Download on the App Store">

                                </div>
                                <div class="col-2">
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
            <div class="col-6">
                <div class="app-features-images">
                    <div class="row">
                        <div class="col-6"> <img
                                src="{{ asset('assets/images/how_it_works__actual_iphone-upper-top-section.png') }}"
                                alt="App on phone" class="app-feature-main-img"></div>
                        <div class="col-6"> <img
                                src="{{ asset('assets/images/how_it_works__actual_iphone-lower.png') }}"
                                alt="App screenshot" class="app-feature-secondary-img"></div>
                    </div>


                </div>
            </div>
        </div>
    </section>
@endsection
