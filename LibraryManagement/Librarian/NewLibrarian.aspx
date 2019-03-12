<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewLibrarian.aspx.cs" Inherits="LibraryManagement.Librarian.NewLibrarian" MasterPageFile="~/Main.Master" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    
    <link href="../CustomCSS/Custom%20Sheet.css" rel="stylesheet" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    
    
    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.js"></script>
    <script src="http://ajax.microsoft.com/ajax/jquery.validate/1.11.1/additional-methods.js"></script>
    <script src="../Scripts/Validation.js"></script>
    <script src="../js/bootstrap.min.js"></script>
     
</asp:Content>
<asp:Content ID="NewMember" ContentPlaceHolderID="body" runat="server">
    <br />
    <div class="card ml-md-4 mb-4 w-25" >
         <h5 class="card-header  bg-info white-text text-center py-3"  id="CardHeader">
            <strong>Librarian Registration</strong>
        </h5>
        <div class="card-body px-lg-5 pt-0" id="MyForm">
            <form name="NewLibrarian" id="NewLibrarian" class="md-form" style="color: #757575;" method="post" action="#">
                <br/>
                <label for="txtFirstName">First Name</label>+
                <input type="text" id="txtFirstName" class="form-control">
                
                <label for="txtLastName">Last Name</label>
                <input type="text" id="txtLastName" class="form-control">
                
                <label for="txtAge">Age</label>
                <input type="text" id="txtAge" class="form-control" placeholder="">

                <label for="txtAddress">Address</label>
                <input type="text" id="txtAddress" class="form-control" placeholder="">

                <label for="txtEmail">E-mail</label>
                <input name="email" type="email"id="txtEmail" class="form-control">

                <label for="txUserName">User Name</label>
                <input type="text" id="txUserName" class="form-control">

                <label for="txtPassword">Password</label>
                <input type="password" id="txtPassword" class="form-control" aria-describedby="PasswordHelpBlock">
                <small id="PasswordHelpBlock" class="form-text  text-danger mb-2 text-danger">**At least 8 characters and 1 digit
                </small>
                
                <label for="txtpasswordConfirm">Confirm Password</label>
                <input type="password" id="txtpasswordConfirm" class="form-control" placeholder="" aria-describedby="PasswordConfirmHelpBlock">
                <small id="PasswordConfirmHelpBlock" class="form-text text-danger mb-2">**At least 8 characters and 1 digit
                </small>

                <label for="txtMobile">Mobile number</label>
                <input type="text" id="txtMobile" class="form-control">
               
                <div class="form-check mb-1">
                    <input type="radio" class="form-check-input" id="radiobtnMale" name="defaultName">
                    <label class="form-check-label" for="radiobtn">Male</label>
                </div>
                <div class="form-check mb-1">
                    <input type="radio" class="form-check-input" id="radiobtnFemale" name="defaultName">
                    <label class="form-check-label" for="radiobtn">Female</label>
                </div>

                <button class="btn btn-outline-info btn-rounded btn-block my-3 waves-effect z-depth-0 btn-sm" type="submit">Sign in</button>
                    <p>
                        By clicking
                    <em>Sign up</em> you agree to our
                    <a href="#" target="_blank">terms of service</a> and
                    <a href="#" target="_blank">terms of service</a>.
                    </p>
            </form>
        </div>
    </div>
    <br />
    
    
    <br />
</asp:Content>