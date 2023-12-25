<%-- 
    Document   : about
    Created on : Dec 24, 2023, 1:06:35?PM
    Author     : Gagana
--%>

<!DOCTYPE HTML>
<html lang="en-US">
    <head>
        <meta charset="UTF-8">
        <meta name="author" content="Gagana">
        <meta name="description" content="About Us | Green Supermarket">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="RegLog/CSS/aboutus.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <title> About Us </title>
    </head>    
    <body>
        
        <header>
            <jsp:include page="navbar.jsp"/>
            <!-- Banner -->
            <div class="banner-container">
                <img src="Home/images/aboutbanner.jpg" alt="Banner Image" class="banner-image">
                <div class="overlay"></div>
                <div class="banner-text">
                    <h1>About Us </h1>
                    <p> How we Elevate Eeveryday Shopping with Innovation and Excellence! </p>
                </div>
            </div>
        </header>
        <main>
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <img src="Home/images/shop.jpg" alt="Supermarket Image" style="margin-bottom: 32px;">
                        <img src="Home/images/vegsuperbanner.jpg" alt="Supermarket Image" style="margin-bottom: 32px;">
                        <img src="Home/images/shelfs.jpg" alt="Supermarket Image">
                    </div>
                    <div class="col-md-6  flex-column justify-content-center">
                        <p>Welcome to <strong>Green Supermarket</strong></p>

                        <p> At <strong>Green Supermarket</strong>, we take pride in being a trailblazer in the supermarket
                            industry, committed to providing an unparalleled shopping experience for our valued customers. Since
                            our inception, we have evolved with the changing times, and now we are excited to introduce a
                            state-of-the-art website and desktop application that reflects our dedication to innovation and
                            customer satisfaction. </p>

                        <p> Our journey began with a simple vision ? to redefine the way you shop for your everyday needs. Over
                            the years, we have grown into a leading supermarket, and today, we are thrilled to present you with
                            a modern and sophisticated online platform that brings convenience and efficiency to your
                            fingertips. </p> <br>

                        <p> <strong> Why Choose GREEN Supermarket? </strong> </p> <br>

                        <p> <strong> 1. Unmatched Variety </strong> </p>

                        <p> Explore an extensive range of high-quality products carefully curated to meet your diverse needs.
                            From fresh produce to household essentials, we have it all under one virtual roof. </p>

                        <p> <strong> 2. Secure Online Payments </strong> </p>
                        <p> Enjoy peace of mind with our integrated payment handling system via PayPal Sandbox configuration.
                            Experience secure transactions that prioritize your financial well-being.</p>

                        <p> <strong> 3. Cutting-Edge Technology </strong> </p>
                        <p> Powered by Java Servlet, and JSP advanced technologies, our platform is designed to provide a
                            seamless and responsive experience. </p>

                        <p> <strong> 4. Instant Notifications </strong> </p>
                        <p> Stay in the loop with Email notifications. Receive updates on your purchases, and have the
                            flexibility to manage cancellations effortlessly. </p>

                        <p> <strong> 5. Enhanced Security </strong> </p>
                        <p> Your online safety is our priority. With advanced security measures like email verification's in
                            place, you can shop with confidence. </p>
                    </div>
                </div>
            </div>
        </main>
        <footer>
            <%-- <jsp:include page="developers.jsp"/> --%>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>
