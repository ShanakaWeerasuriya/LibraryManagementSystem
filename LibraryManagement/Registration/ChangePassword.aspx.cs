using BusinessLogicLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement.Registration
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        EmailPassword reset = new EmailPassword();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            txtNewPassword.Focus();
           

            if (!IsPostBack)
            {
                string userId = Request.QueryString["uid"].ToString();
                if (!reset.IsPasswordResetLinkValid(userId))
                {
                    Response.Write("<script>alert('Password Change Link Expired');</script>");
                    Response.Redirect("~/Registration/ResetPassword.aspx");
                }


            }
            
            

        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {

            if (reset.IsPasswordChanged(Request.QueryString["uid"].ToString(), txtConfirmPassword.Text))
            {
                Response.Write("<script>alert('Password Succesfully Changed');</script>");
                Response.Redirect("~/LoginPage.aspx");
            }

            
        }
    }
}