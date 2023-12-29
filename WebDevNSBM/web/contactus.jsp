<%-- 
    Document   : contactus
    Created on : Dec 27, 2023, 1:22:59?PM
    Author     : Gagana
--%>

<!DOCTYPE HTML>
<html lang="en-US">

    <head>
        <meta charset="UTF-8">
        <meta name="author" content="Gagana">
        <meta name="description" content="Contact | Green Supermarket">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="RegLog/CSS/contactus.css">
        <link rel="stylesheet" href="RegLog/CSS/productpages.css">
        <title> Contact Page </title>
    </head>

    <body>
        <header>
            <jsp:include page="navbar.jsp"/>

            <!-- Banner -->
            <div class="banner-container">
                <img src="Home/images/contactbanner.jpg" alt="Banner Image" class="banner-image">
                <div class="overlay"></div>
                <div class="banner-text mt-4">
                    <h1> Contact Us </h1>
                    <p> Where Freshness and Friendliness Unite! </p>
                </div>
            </div>
        </header>
        <main>
            <!-- Contact Section -->
            <section class="contact spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                            <div class="contact__widget">
                                <span> <i class="fa-solid fa-phone"></i> </span>
                                <h4>Phone</h4>
                                <p> +94 112584855</p>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                            <div class="contact__widget">
                                <span> <i class="fa-solid fa-location-dot"></i> </span>
                                <h4>Address</h4>
                                <p>No. 10, Galle Road, Colombo</p>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                            <div class="contact__widget">
                                <span> <i class="fa-solid fa-clock"></i> </span>
                                <h4>Open Time</h4>
                                <p>09:00 AM to 22:00 PM</p>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                            <div class="contact__widget">
                                <span> <i class="fa-solid fa-envelope"></i> </span>
                                <h4>Email</h4>
                                <p>greensuperhub@gmail.com</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Map  -->
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1665.417289123989!2d79.86419948751234!3d6.884353343564906
                    !2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25bcf5c386e07%3A0x4263b558f8641469!2s44%20Elibank%20Roa
                    d!5e0!3m2!1sen!2slk!4v1643684042681!5m2!1sen!2slk" width="1338" height="450" style="border:0;" allowfullscreen="" 
                    loading="lazy"> </iframe>

            <section class="contact">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="contact__form__title">
                                <h2 class="text-uppercase mb-4">Inquiries</h2>
                                <p class="text-muted">We're here to assist you. Fill out the form below, and we'll get back to you shortly.</p>
                            </div>
                        </div>
                    </div>
                    <form class="row g-3">
                        <div class="col-md-6">
                            <label for="firstName" class="form-label">First Name</label>
                            <input type="text" class="form-control rounded-0" id="firstName" required>
                        </div>
                        <div class="col-md-6">
                            <label for="lastName" class="form-label">Last Name</label>
                            <input type="text" class="form-control rounded-0" id="lastName" required>
                        </div>
                        <div class="col-md-6">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control rounded-0" id="email" required>
                        </div>
                        <div class="col-md-6">
                            <label for="contactNo" class="form-label">Contact No.</label>
                            <input type="tel" class="form-control rounded-0" id="contactNo" required>
                        </div>
                        <div class="col-12">
                            <label for="address" class="form-label">Address</label>
                            <input type="text" class="form-control rounded-0" id="address">
                        </div>
                        <div class="mb-3">
                            <label for="message" class="form-label">Your Message</label>
                            <textarea class="form-control rounded-0" id="message" rows="3" required></textarea>
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn btn-success rounded-0">Submit Message</button>
                        </div>
                    </form>
                </div>
            </section>
        </main>

        <footer>
            <jsp:include page="footer.jsp"/>
        </footer>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
    </body>

</html>