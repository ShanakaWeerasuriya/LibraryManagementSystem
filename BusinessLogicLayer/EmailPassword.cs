using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;
using System.Web.Security;

namespace BusinessLogicLayer
{
    public class EmailPassword
    {
        DataAccess DAl = new DataAccess();
        #region Password Reset Methods

        public void CheckUserName(string userName)
        {
            
            

            string Email = "", UniqueId = "";
            DAl.ResetPassword(userName, out Email, out UniqueId);
            SendPasswordResetEmail(Email, userName ,UniqueId);
            
        } 


       
        private void SendPasswordResetEmail(string ToEmail,string LibraryUser,string UniqueID)
        {
            
            //Calling Mail class constructor 
            MailMessage mailMesseage = new MailMessage("shanakadesilva46@gmail.com", ToEmail);

            StringBuilder sbEmailBody = new StringBuilder();
            sbEmailBody.Append("Dear" + "  " + LibraryUser + ",<br/><br>");
            sbEmailBody.Append("Please click on the following link to reset your password");
            sbEmailBody.Append("<br/>");
            sbEmailBody.Append("http://localhost:55794/Registration/ChangePassword.aspx?uid=" + UniqueID);
            sbEmailBody.Append("<br/><br/>");
            sbEmailBody.Append("<b> Library Manager - Your Library");

            mailMesseage.IsBodyHtml = true;

            mailMesseage.Body = sbEmailBody.ToString();
            mailMesseage.Subject = "Reset you password";
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            

            //giving password and username of the sending email id
            smtpClient.Credentials = new NetworkCredential()
            {
                UserName="shanakadesilva46@gmail.com",
                Password= "HimaTery@1992"
            };


            smtpClient.EnableSsl = true;
            smtpClient.Send(mailMesseage);



        }


        public bool IsPasswordResetLinkValid(string uniqueId)
        {

            List<SqlParameter> paramList = new List<SqlParameter>()
            {
                new SqlParameter()
                {
                    ParameterName="@GUID",
                    Value=uniqueId
                }
            };

           return DAl.spExecuteWithReturnValues("spCheckUniqueIdValidity",paramList);
        }

        public bool  IsPasswordChanged(string uniquId,string Password)
        {
            List<SqlParameter> paramList = new List<SqlParameter>()
            {

                new SqlParameter()
                {
                    ParameterName="@Password",
                    Value=FormsAuthentication.HashPasswordForStoringInConfigFile(Password,"SHA1")
                },

                new SqlParameter()
                {
                    ParameterName="@GUID",
                    Value=uniquId
                }

                
            };

            return DAl.spExecuteWithReturnValues("spChangePassword", paramList);
        }



        #endregion



    }
}
