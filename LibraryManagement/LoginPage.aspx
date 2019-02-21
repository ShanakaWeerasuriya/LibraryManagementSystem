<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="LibraryManagement.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Login Page</title>
    
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="jqueryui/jquery-ui.css" rel="stylesheet" />
    <link href="jqueryui/jquery-ui.structure.min.css" rel="stylesheet" />
    <link href="jqueryui/jquery-ui.theme.min.css" rel="stylesheet" />
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
                        <p>Knowledge At Your Finger Tips...</p>
                    </div>
  
   <form id="form1" runat="server" >
   <div  style="max-width:400px; margin:50px 20% 0px 20%; border:1px solid blue; padding:5px;background-color:rgba(3, 169, 244, 0.1)" >
       <div class="rounded mb-0" style="background-color:darkgrey;padding-left:0px">
             <h2 class="form-signin-heading">User Login</h2>
       </div>                 
     
                        <br />
                        <label for="txtUserName">User Name</label>
                        <asp:TextBox ID="txtUserId" CssClass="form-control"   runat="server"  />
                        <asp:RequiredFieldValidator class="text-danger" id="userNameValidator" ControlToValidate="txtUserId" runat="server" ErrorMessage="Please provide the user name"/>
                        <span  id="UserNameError" runat="server"></span>
                        <br />
                        <label for="txtPassword">Password</label>
                        <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" placeHolder="Password"/>
                        <asp:RequiredFieldValidator class="text-danger" id="passwordValidator" ControlToValidate="txtPassword" runat="server" ErrorMessage="Please provide the password"/>
                        <span  id="PasswordError" runat="server" />
                    </div>
                    <div class="form-check" style="max-width:500px; margin:10px 20% 2px 20%; padding:5px">
                        <asp:CheckBox ID="chkRememberMe" Text="Remember Me" runat="server" />
                        <a href="#" runat="server" style="margin-left:155px">Forgot Password</a>
                    </div>
                    
                    <div style="max-width:500px; margin:0px 20% 0px 20%; padding:5px">
                        <asp:Button ID="btnLogin" Text="Login" runat="server" CssClass="btn btn-primary btn" OnClick="btnLogin_Click"/>
                    </div>
    </form>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="jqueryui/jquery-ui.js"></script>
    <script src="jqueryui/jquery-ui.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="Scripts/Validation.js" type="text/javascript"></script>
    <script src="Scripts/Animation.js" type="text/javascript"></script>
    <script src="Scripts/UI.js"></script>
</body>
</html>
