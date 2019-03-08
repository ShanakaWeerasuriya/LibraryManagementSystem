using BusinessLogicLayer;
using System;
using System.Web.UI;

namespace LibraryManagement
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                
                //txtPassword.Attributes["type"] = "password";
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            User user = new User();
            user.UserName = txtUserId.Text;
            user.Password = txtPassword.Text;

            if (!user.UserLogin())
            {
                Response.Write("alert('Invalid Credentials');");
            }
            else
            {
                Session["UserName"] = user.UserName;
                int userType = user.UserType();
                switch (userType)
                {
                    case 1:
                        Session["UserType"] = "Admin";
                       
                        break;

                    case 2:
                        Session["UserType"]= "Librarian";
                        break;

                    case 3:
                        Session["UserType"] = "Member";
                        break;

                    default:
                        Response.Write("alert('Invalid User Authentication.Please Contact Administrator')");
                        break;
                }
                Response.Redirect("~/HomePage.aspx");
            }
        }
    }
}