
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


/* ==========================MEMBER CREATION VALIDATIONS VALIDATIONS=================================*/

    $(document).ready(function () {

      

    //form validations
    $("#NewLibrarian").validate({

        rules: {
            firstname: "required",
            lastname: "required",
            username: {
                required: true,
                minlength: 4
            },

            password: {
                required: true,
                minlength: 9
            },

            confirmpassword: {
                required: true,
                minlength: 9,
                equalTo:"#txtPassword"
            },

            email: {
                required: true,
                email: true
            },
            age: "required",
            address: "required",
            mobilenumber: "required",
            gender: "required"

        },

        messages:{

            firstname: "Enter First Name",
            lastname: "Enter Last Name",
            username: {
                required: "Enter User Name",
                minlength: "User Name should have minimum of 4 characters"
            },

            password: {
                required: "Please Enter Password",
                minlength: "Password should have minimum of 9 characters"
            },

            confirmpassword: {
                required: "Please Enter Password again",
                minlength: "password should have minimum of 9 characters",
                equalTo: "Please confirm the correct password"
            },

            email: {
                required: "Please Enter Email address",
                email: "Please Enter a valid Email address"
            },
            age: "Please Enter the Age",
            address: "Please Enter Address",
            mobilenumber: "Please Enter the Mobile Number",
            gender: "Please select the Gender"

        }

    });

    //userName Proposing Method.
        $("#txUserName").focus(function () {

        var FirstName = $().val();
        var SecondName = $().val();

        if (FirstName && lastname && !this.val)
        {
            this.val = FirstName + "." + SecondName;
        }

    });

});

