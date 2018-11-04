<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="LibraryManagement.Registration.ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript" src="Scripts/Validations.js"></script>

    <style type="text/css">
        .auto-style2 {
            height: 29px;
        }

        #login {
            width: 673px;
        }
    </style>
</head>
<body>
    <div id="MainLogo" class="jumbotron" style="margin-bottom: 0px;">
        <h4>LIBRARY MANAGER </h4>
        <p>Read your world Easier...</p>
    </div>
    <form id="form1" runat="server">
        <div style="max-width: 400px; margin: 50px 20% 0px 20%; border: 1px solid blue; padding: 5px; background-color: rgba(3, 169, 244, 0.1)">
            <div class="rounded mb-0" style="background-color: darkgrey; padding-left: 0px">
                <h2 class="form-signin-heading">Reset Password</h2>
            </div>
            <label for="txtUserName">User Name</label>
            <asp:TextBox ID="txtUserId" CssClass="form-control" runat="server" onblur="GetAlert();" placeHolder="User Name" />
            <asp:RequiredFieldValidator class="text-danger" ID="userNameValidator" ControlToValidate="txtUserId" runat="server" ErrorMessage="Please provide the user name" />
            <span class="text-danger" id="UserNameError" runat="server"></span>
            <br />
            <label for="txtEmail">Email ID</label>
            <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" placeHolder="Email ID" />
            <asp:RequiredFieldValidator class="text-danger" ID="txtEmailValidator" ControlToValidate="txtEmail" runat="server" ErrorMessage="Please provide the Email ID" />
            <span class="text-danger" id="EmailError" runat="server" />

            <div style="max-width: 500px; margin: 0px 20% 0px 20%; padding: 5px">
                <asp:Button ID="Button1" Text="Reset Password" runat="server" CssClass="btn btn-primary  btn-block" OnClick="Button1_Click" />
            </div>
        </div>
    </form>
</body>
</html>
