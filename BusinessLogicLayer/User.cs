using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccessLayer;
using BusinessLogicLayer;

namespace BusinessLogicLayer
{
    public class User
    {

        private string userName;
        private string password;

        public string UserName
        {
            get { return userName; }
            set { userName = value; }
        }

        public string Password
        {
            get { return password; }
            set { password = value; }
        }




        public bool UserLogin()
        {
            DataAccess DAL = new DataAccess();

            if (DAL.Login(UserName,Password))
            {
                return true;

            }
            else
            {
                return false;
            }
        }


    }
}
