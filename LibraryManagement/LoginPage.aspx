<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="LibraryManagement.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Login Page</title>

    <script type="text/javascript" src="Scripts/Validations.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
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
                        <h1>LIBRARY MANAGER </h1>
                        <p>Read your world Easier...</p>
                    </div>
    <form id="form1" runat="server">
   <div  style="max-width:400px; margin:50px 20% 0px 20%; border:1px solid blue; padding:5px;background-color:darkgrey" >
                        <h2 class="form-signin-heading">User Login</h2>
                        <label for="txtUserName">User Name</label>
                        <asp:TextBox ID="txtUserId" CssClass="form-control"   runat="server" onblur="GetAlert();" placeHolder="User Name" />
                        <asp:RequiredFieldValidator class="text-danger" id="userNameValidator" ControlToValidate="txtUserId" runat="server" ErrorMessage="Please provide the user name"/>
                        <span class="text-danger" id="UserNameError" runat="server"></span>
                        <br />
                        <label for="txtPassword">Password</label>
                        <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" placeHolder="Password"/>
                        <asp:RequiredFieldValidator class="text-danger" id="passwordValidator" ControlToValidate="txtPassword" runat="server" ErrorMessage="Please provide the password"/>
                        <span class="text-danger" id="PasswordError" runat="server" />
                    </div>

                    <div class="form-check" style="max-width:500px; margin:10px 20% 2px 20%; padding:5px">
                        <asp:CheckBox ID="chkRememberMe" Text="Remember Me" runat="server" />
                    </div>
                    
                    <div style="max-width:500px; margin:0px 20% 0px 20%; padding:5px">
                        <asp:Button ID="btnLogin" Text="Login" runat="server" CssClass="btn btn-primary" OnClick="btnLogin_Click"/>
                    </div>
    </form>
</body>
</html>
