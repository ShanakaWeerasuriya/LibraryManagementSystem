<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewMember.aspx.cs" Inherits="LibraryManagement.Members.NewMember" MasterPageFile="~/Main.Master" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <link href="../CustomCSS/Custom%20Sheet.css" rel="stylesheet" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="NewMember" ContentPlaceHolderID="body" runat="server">
    <br />
    <div class="card ml-md-4 mb-4 w-25">
         <h5 class="card-header  bg-info white-text text-center py-3" id="CardHeader">
            <strong>Member Registration</strong>
        </h5>
        <div class="card-body px-lg-5 pt-0" id="MyForm">
            <form class="md-form" style="color: #757575;">
                <br/>
                <label for="txtFirstName">First name</label>
                <input type="text" id="txtFirstName" class="form-control" name="firstname">
                
                <label for="txtLastName">Last name</label>
                <input type="text" id="txtLastName" class="form-control" name="lastname">
                
                <label for="txtAge">Age</label>
                <input type="text" id="txtAge" class="form-control" placeholder="" name="age">

                <label for="txtAddress">Address</label>
                <input type="text" id="txtAddress" class="form-control" placeholder="" name="address">

                <label for="txtEmail">E-mail</label>
                <input type="email" id="txtEmail" class="form-control" name="email">

                <label for="txUserName">User Name</label>
                <input type="text" id="txUserName" class="form-control" name="username">
               
                <label for="txtPassword">Password</label>
                <input type="password" id="txtPassword" class="form-control" aria-describedby="PasswordHelpBlock" name="password">
                <small id="PasswordHelpBlock" class="form-text  text-danger mb-2 text-danger">**At least 8 characters and 1 digit
                </small>
                
                <label for="txtpasswordConfirm">Confirm Password</label>
                <input type="password" id="txtpasswordConfirm" class="form-control" placeholder="" aria-describedby="PasswordConfirmHelpBlock" name="confirmpassword">
                <small id="PasswordConfirmHelpBlock" class="form-text text-danger mb-2">**At least 8 characters and 1 digit
                </small>

                <label for="txtMobile">Mobile number</label>
                <input type="text" id="txtMobile" class="form-control" name="mobilenumber">
               
                <div class="form-check mb-1">
                    <input type="radio" class="form-check-input" id="radiobtnMale" name="Gender" >
                    <label class="form-check-label" for="radiobtn">Male</label>
                </div>
                <div class="form-check mb-1">
                    <input type="radio" class="form-check-input" id="radiobtnFemale" name="Gender">
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
    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <br />
</asp:Content>



