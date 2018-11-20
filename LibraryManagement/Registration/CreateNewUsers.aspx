<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Library.Master" CodeBehind="CreateNewUsers.aspx.cs" Inherits="LibraryManagement.Registration.CreateNewUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigatedPath_PlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="Body_PlaceHolder" runat="server">
    <form id="form1" runat="server">

        <table>
            <tr>
                <td colspan="2">
                    <div class="rounded mb-0" style="background-color: darkgrey; padding-left: 0px">
                        <h2 class="form-signin-heading">Create New Users</h2>
                    </div>
                    
                   
                    <div>
                        <label for="txtUserId">User ID</label>
                        
                        <br />

                        <label for="">First Name</label>
                        <asp:TextBox ID="txtFirstName" runat="server" placeholder="First Name..."></asp:TextBox>
                    </div>

                    
                </td>
                <br/>
                <td><asp:TextBox ID="txtUserId" Enabled="false" runat="server" ></asp:TextBox></td>
                <td></td>
            </tr>
        </table>

    </form>

</asp:Content>

