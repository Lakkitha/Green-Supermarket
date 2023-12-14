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
            window.location.replace("http://localhost:8080/WebDevNSBM/PaymentSuccess.jsp")
        });
    },
    onCancel: function(data){
        window.location.replace("http://localhost:8080/WebDevNSBM/PaymentCancel.jsp")
    }
}).render('#paypal-button');