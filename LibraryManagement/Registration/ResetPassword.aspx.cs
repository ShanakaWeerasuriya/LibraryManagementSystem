using BusinessLogicLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace LibraryManagement.Registration
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUserId.Focus();         }

        protected void Button1_Click(object sender, EventArgs e)
        {
            User user = new User();
            user.UserName = txtUserId.Text;
            EmailPassword email = new EmailPassword();
            email.CheckUserName(user.UserName);
        }
    }
}