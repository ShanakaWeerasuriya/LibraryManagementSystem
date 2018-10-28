using BusinessLogicLayer;
using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                txtUserId.Focus();
                txtPassword.Attributes["type"] ="password";
            }
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            User user = new User();
            user.UserName = txtUserId.Text;
            user.Password = txtPassword.Text;

            DataAccess DAL = new DataAccess();
           
            if (DAL.Login(user.UserName, user.Password))
            {
                Response.Redirect("~/Home.aspx");
                Session["UserName"] = user.UserName;

            }else
            {
                Response.Write("alert('Invalid Credentials');");
            }

        }

    }
}