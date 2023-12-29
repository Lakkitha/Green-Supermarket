<%-- 
    Document   : feedback
    Created on : Dec 26, 2023, 11:56:47?AM
    Author     : Gagana
--%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Gagana">
        <meta name="description" content="Feedback | Green Supermarket">
        <title>Feedback Form</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="RegLog/CSS/feedback.css">
    </head>

    <body>

        <div id="feedback-form-wrapper">
            <div id="floating-icon">
                <button type="button" class="btn btn-success btn-sm rounded-0" data-toggle="modal"
                        data-target="#exampleModal">
                    Feedback
                </button>
            </div>

            <div id="feedback-form-modal">
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content rounded-0">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Feedback Form</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <!-- Set color to red -->
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <form>
                                    <div class="form-group">
                                        <label for="exampleFormControlTextarea1">How likely you would like to recommend us
                                            to your friends? ? </label>
                                        <div class="rating-input-wrapper d-flex justify-content-between mt-2">
                                            <label><input type="radio" name="rating" required /><span
                                                    class="border px-3 py-2 rounded-0">1</span></label>
                                            <!-- Repeat for other radio buttons -->
                                            <label><input type="radio" name="rating" required /><span
                                                    class="border  px-3 py-2 rounded-0">2</span></label>
                                            <label><input type="radio" name="rating" required /><span
                                                    class="border  px-3 py-2 rounded-0">3</span></label>
                                            <label><input type="radio" name="rating" required /><span
                                                    class="border  px-3 py-2 rounded-0">4</span></label>
                                            <label><input type="radio" name="rating" required /><span
                                                    class="border  px-3 py-2 rounded-0">5</span></label>
                                            <label><input type="radio" name="rating" required /><span
                                                    class="border  px-3 py-2 rounded-0">6</span></label>
                                            <label><input type="radio" name="rating" required /><span
                                                    class="border  px-3 py-2 rounded-0">7</span></label>
                                            <label><input type="radio" name="rating" required /><span
                                                    class="border  px-3 py-2 rounded-0">8</span></label>
                                            <label><input type="radio" name="rating" required /><span
                                                    class="border  px-3 py-2 rounded-0">9</span></label>
                                            <label><input type="radio" name="rating" required /><span
                                                    class="border  px-3 py-2 rounded-0">10</span></label>
                                        </div>

                                        <div class="rating-labels d-flex justify-content-between mt-1">
                                            <label> <i> Very unlikely </i></label>
                                            <label> <i> Very likely </i> </label>
                                        </div> <br>
                                    </div>
                                    <div class="form-group">
                                        <label for="input-two">Tell us about your shopping experience? ? </label>
                                        <textarea class="form-control rounded-0" id="input-two" rows="3"></textarea>
                                    </div>

                                </form>
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger rounded-0" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-success rounded-0">Submit</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>

</html>
