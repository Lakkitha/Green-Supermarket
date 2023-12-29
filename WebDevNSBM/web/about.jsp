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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="RegLog/CSS/aboutus.css">
        <title>About Us</title>
    </head>
    <body>
        <nav>
            <jsp:include page="navbar.jsp" />
        </nav>
        <!-- Banner -->
        <div class="about-section">
            <div class="inner-container">
                <h1>Welcome to Green Supermarket</h1>
                <p class="text">
                    At <strong>Green Supermarket</strong>, we take pride in being a trailblazer in the supermarket
                    industry, committed to providing an unparalleled shopping experience for our valued customers. Since
                    our inception, we have evolved with the changing times, and now we are excited to introduce a
                    state-of-the-art website and desktop application that reflects our dedication to innovation and
                    customer satisfaction.
                    <br><br>Our journey began with a simple vision to redefine the way you shop for your everyday
                    needs.
                    Over
                    the years, we have grown into a leading supermarket, and today, we are thrilled to present you with
                    a modern and sophisticated online platform that brings convenience and efficiency to your
                    fingertips.
                </p>
                <div class="skills">
                    <span>Unmatched Variety</span>
                    <span>Secure Online Payments</span>
                    <span>Cutting-Edge Technology</span>
                    <span>Instant Notifications</span>
                </div>
            </div>
        </div>

        <jsp:include page="developers.jsp" />
        <footer>
            <jsp:include page="footer.jsp" />
        </footer>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
    </body>

</html>