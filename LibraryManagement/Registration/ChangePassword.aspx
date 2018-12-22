<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="LibraryManagement.Registration.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript" src="Scripts/Validations.js"></script>
</head>
<body>
    <div id="MainLogo" class="jumbotron" style="margin-bottom: 0px;">
        <h4>LIBRARY MANAGER </h4>
        <p>Read your world Easier...</p>
    </div>
    <form id="form1" runat="server">
        <div style="max-width: 400px; margin: 50px 20% 0px 20%; border: 1px solid blue; padding: 5px; background-color: rgba(3, 169, 244, 0.1)">
            <div class="rounded mb-0" style="background-color: darkgrey; padding-left: 0px">
                <h2 class="form-signin-heading">Change Password/>
            </div>
            <label for="txtNewPassword">New Password</label>
            <asp:TextBox ID="txtNewPassword" CssClass="form-control" runat="server" onblur="GetAlert();" placeHolder="New Password" />
            <asp:RequiredFieldValidator class="text-danger" ID="NewPasswordValidator" ControlToValidate="txtNewPassword" runat="server" ErrorMessage="Please provide the Password" />
            <span class="text-danger" id="PasswordValidatorError" runat="server"></span>
            <br />
            <label for="txtConfirmPassword">Confirm Password</label>
            <asp:TextBox ID="txtConfirmPassword" CssClass="form-control" runat="server" placeHolder="Confirm Password" />
            <asp:RequiredFieldValidator class="text-danger" ID="ConfirmPasswordValidator" ControlToValidate="txtConfirmPassword" runat="server" ErrorMessage="Please provide the Confirm Password" />
            <span class="text-danger" id="ConfirmPasswordError" runat="server" />
            <br />
            <asp:CompareValidator ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword" runat="server"  ErrorMessage="Password Does not match"/>

            <div style="max-width: 500px; margin: 0px 20% 0px 20%; padding: 5px">
                <asp:Button ID="btnChangePassword" Text="Change Password" runat="server" CssClass="btn btn-primary  btn-block" OnClick="btnChangePassword_Click" />
            </div>
        </div>
    </form>
</body>
</html>
