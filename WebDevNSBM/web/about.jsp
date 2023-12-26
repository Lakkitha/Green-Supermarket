<%-- 
    Document   : about
    Created on : Dec 24, 2023, 1:06:35?PM
    Author     : Gagana
--%>

<!DOCTYPE HTML>
<html lang="en-US">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="RegLog/CSS/aboutus.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
    <title>About Us</title>
</head>

<body>

    <header>
        <jsp:include page="navbar.jsp" />
        <!-- Banner -->
        <div class="banner-container">
            <img src="Images/aboutbanner.jpg" alt="Banner Image" class="banner-image">
            <div class="overlay"></div>
            <div class="banner-text">
                <h1>About Us </h1>
                <p>How we Elevate Everyday Shopping with Innovation! </p>
            </div>
        </div>
    </header>
    <main>
        <div class="about-section">
            <div class="inner-container">
                <h1>Welcome to <strong>Green Supermarket</strong></h1>
                <p class="text">
                    At <strong>Green Supermarket</strong>, we take pride in being a trailblazer in the supermarket
                    industry, committed to providing an unparalleled shopping experience for our valued customers. Since
                    our inception, we have evolved with the changing times, and now we are excited to introduce a
                    state-of-the-art website and desktop application that reflects our dedication to innovation and
                    customer satisfaction.
                    <br><br>Our journey began with a simple vision ? to redefine the way you shop for your everyday
                    needs.
                    Over
                    the years, we have grown into a leading supermarket, and today, we are thrilled to present you with
                    a modern and sophisticated online platform that brings convenience and efficiency to your
                    fingertips.
                </p>
            </div>
        </div>
        <section class="store py-3 bg-light text-center">
            <div class="container py-5">
                <div class="row">
                    <div class="col-lg-6 m-auto">
                        <h1>Why Choose Us?</h1>
                    </div>
                    <div class="line my-4"></div>
                </div>
                <div class="row">
                    <div class="col-lg-3 mt-2">
                        <div class="card py-3">
                            <div class="card-body">
                                <span><i class="bi bi-collection"></i></span>
                                <h5 class="head1 py-3">Unmatched Variety</h5>
                                <p class="per1">Explore diverse, high-quality products, from fresh produce to
                                    essentials,
                                    all under one virtual roof.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 mt-2">
                        <div class="card py-3">
                            <div class="card-body">
                                <span><i class="bi bi-credit-card"></i></span>
                                <h5 class="head1 py-3">Secure Online Payments</h5>
                                <p class="per1">Experience secure transactions with PayPal Sandbox for peace of mind in
                                    online payments.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 mt-2">
                        <div class="card py-3">
                            <div class="card-body">
                                <span><i class="bi bi-gear"></i></span>
                                <h5 class="head1 py-3">Cutting-Edge Technology</h5>
                                <p class="per1">Our platform, powered by Java Servlet and JSP technologies, ensures a
                                    seamless, responsive experience.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 mt-2">
                        <div class="card py-3">
                            <div class="card-body">
                                <span><i class="bi bi-bell"></i></span>
                                <h5 class="head1 py-3">Instant Notifications</h5>
                                <p class="per1">Stay informed with email notifications, managing purchases and
                                    cancellations
                                    effortlessly.</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <footer>
            <%--<jsp:include page="developers.jsp" /> --%>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
</body>

</html>