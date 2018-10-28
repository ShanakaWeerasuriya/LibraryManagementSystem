///* Focus handling in the Loging Page
//*/

////document.getElementById("txtUserId").focus();




///*
//    Login form validations
//*/

//function UserNameValidation() {
    
//   // alert("hiiiiiiiiiiiiiiiiiiiiii");

//    var userName = document.getElementById("<%=txtUserId.ClientID%>").value;
      
//    if (userName== null) {
//            document.getElementById("UserNameError").innerHTML = "User name Required";
//        } else {
//            if (userName.length < 8) {
//                document.getElementById("UserNameError").innerHTML = "User name should be greater than 8 characters";
//            }
//        }
//    }


//function PassWordValidation() {

    

//        var passWord = document.getElementById("txtPassword");

//        if (passWord.value == "") {
//            document.getElementById("PasswordError").innerHTML = "Password Required";
//        } else {
//            if (userName.lenth < 8) {
//                document.getElementById("PasswordError").innerHTML = "Password should be greater than 8 characters";
//            }
//        }
//    }



function GetAlert() {

    var TestVar = document.getElementById('<%=txtUserId.ClientID%>').value;

    if (TestVar == "") {
        document.getElementById('<%=UserNameError.ClientID%>').innerHTML = "User name Required";
    }
}

