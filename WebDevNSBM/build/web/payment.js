/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


paypal.Buttons({
    createOrder:function(data,actions){
        return actions.order.create({
            purchase_units : [{
                    amount : {
                        value: '1'
                    }
            }]
        });
    },
    onApprove: function (data,actions){
        return actions.order.capture ().then(function(details){
            console.log(details);
            var paymentId = details.id;
            var status = details.status;
            var amount = details.purchase_units[0].amount.value; // Assuming there is only one purchase unit

        // Redirect to PaymentSuccess.jsp with additional information as query parameters
        window.location.replace("http://localhost:8080/WebDevNSBM/PaymentSuccess.jsp?paymentId=" + paymentId + "&status=" + status + "&amount=" + amount);
        });
    },
    onCancel: function(data){
        // Redirect to PaymentCancel.jsp with additional information as query parameters
        window.location.replace("http://localhost:8080/WebDevNSBM/PaymentCancel.jsp?cancelReason=User Canceled");
    }

}).render('#paypal-button');