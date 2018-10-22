<%@ Page Title="" Language="C#" MasterPageFile="~/Library.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LibraryManagement.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 29px;
        }
        #login {
            width: 673px;
        }
    </style>
</asp:Content>
<asp:Content ID="Login" ContentPlaceHolderID="Body_PlaceHolder" runat="server">
    
                <form id="login" runat="server">
                    <div style="max-width:400px; margin:50px 20% 0px 20%; border:1px solid blue; padding:5px;background-color:darkgrey" >
                        <h2 class="form-signin-heading">User Login</h2>
                        <label for="txtUserName">User Name</label>
                        <asp:TextBox ID="txtUserId" CssClass="form-control"   runat="server" placeHolder="Type User Name Here..." required="required" />
                        <br />
                        <label for="txtPassword">PassWord</label>
                        <asp:TextBox ID="txtPassword" CssClass="form-control" TextMode="Password" runat="server" placeholder="Type PassWord Here..." required="required"  />
                    </div>

                    <div class="custom-checkbox" style="max-width:500px; margin:10px 20% 2px 20%; padding:5px">
                        <asp:CheckBox ID="chkRememberMe" Text="Remember Me" runat="server" />
                    </div>
                    
                    <div style="max-width:500px; margin:0px 20% 0px 20%; padding:5px">
                        <asp:Button ID="btnLogin" Text="Login" runat="server" CssClass="btn btn-primary" />
                    </div>
                    
                </form>
</asp:Content>
