$(document).on('click', '.formsubmitbutton', function(e) {
    e.preventDefault();
    $.ajax({
        type: "POST",
        url: $("Login.jsp").attr('Login'),
        data: $(".Login.jsp").serialize(),
        success: function(response) {
             if (response === "success") {
                  window.reload;
             } else {
                   alert("invalid username/password.  Please try again");
             }
        }
    });
}); 
 