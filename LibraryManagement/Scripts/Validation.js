
/* ==========================LOGIN PAGE VALIDATIONS=================================*/
//User name field auto focus
$(document).ready(function () {
    $("#txtUserId").focus();
});


// user name and password field validations in login
$(document).ready(function () {


    $("#txtUserId").keyup(function () {

        if ($("#txtUserId").val() = '') {

            $("#UserNameError").toggleClass("text-danger");
            $("#UserNameError").text("Please enter a valid user name");

        }


    });
    


});




/* ==========================LOGIN PAGE VALIDATIONS=================================*/