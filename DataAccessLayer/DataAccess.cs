using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace DataAccessLayer
{
    public class DataAccess
    {
        #region Properties & Variable Declarations
        private string connection = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        #endregion

        #region Properties

        public string Connection
        {
            get
            {
                return connection;
            }

            set
            {
                connection = value;
            }
        }



        #endregion

        #region Methods For CRUD Operations

        /// <summary>
        /// Use for all insertions 
        /// </summary>
        /// <param name="spName"></param>
        /// <param name="parameters"></param>
        /// <returns></returns>
        public int Execute_Insert(string spName, string tableName, List<string> fieldNames, object[] values)
        {

            try
            {

                con = new SqlConnection(connection);
                cmd = new SqlCommand(spName);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandTimeout = 300;


                //Adding parameters
                cmd.Parameters.Add(tableName);
                cmd.Parameters.AddRange(values);

                foreach (var fields in fieldNames)
                {
                    cmd.Parameters.Add(fields);
                }

                using (con)
                {
                    int result = cmd.ExecuteNonQuery();
                    return result; //return true or false based on the submition
                }


            }
            catch (Exception ex)
            {
                ex.ToString();
                return 0;
            }


        }

        /// <summary>
        /// Use for Search options without PARMETERS
        /// </summary>
        /// <param name="spName"></param>
        /// <returns></returns>
        public DataSet Execute_Select(string spName)
        {
            try
            {
                con = new SqlConnection(connection);
                cmd = new SqlCommand(spName);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandTimeout = 300;
                da = new SqlDataAdapter();
                ds = new DataSet();

                using (con)
                {
                    da.Fill(ds);
                }

                return ds != null ? ds : null;

            }
            catch (Exception)
            {

                throw;

            }
        }


        /// <summary>
        /// Use for Search options with PARMETERS
        /// </summary>
        /// <param name="spName"></param>
        /// <param name="parameters"></param>
        /// <param name="condition"></param>
        /// <returns></returns>
        public DataSet Execute_Select(string spName, string tableName, List<string> fieldNames, object[] values)
        {
            try
            {
                con = new SqlConnection(connection);
                cmd = new SqlCommand(spName);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandTimeout = 300;
                da = new SqlDataAdapter();
                ds = new DataSet();


                //Adding parameters
                cmd.Parameters.Add(tableName);
               

                foreach (var fields in fieldNames)
                {
                    cmd.Parameters.Add(fields);
                }

                foreach (var vals in values)
                {
                    cmd.Parameters.Add(vals);
                }



                using (con)
                {
                    da.Fill(ds);
                }

                return ds != null ? ds : null;

            }
            catch (Exception)
            {

                throw;

            }
        }


        /// <summary>
        /// To All Updates
        /// </summary>
        /// <param name="spName"></param>
        /// <param name="tableName"></param>
        /// <param name="fieldNames"></param>
        /// <param name="values"></param>
        /// <returns></returns>
        public int Execute_Update(string spName, string tableName, List<string> fieldNames, object[] values)
        {
            try
            {
                con = new SqlConnection(connection);
                cmd = new SqlCommand(spName);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandTimeout = 300;



                //Adding parameters
                cmd.Parameters.Add(tableName);
                cmd.Parameters.AddRange(values);

                foreach (var fields in fieldNames)
                {
                    cmd.Parameters.Add(fields);
                }




                using (con)
                {
                    int result = cmd.ExecuteNonQuery();
                    return result;

                }



            }
            catch (Exception)
            {

                return 0;

            }
        }


        /// <summary>
        /// Delete with values
        /// </summary>
        /// <param name="spName"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        public int Execute_Delete(string spName, string table, string FieldName, int value)
        {

            try
            {
                con = new SqlConnection(connection);
                cmd = new SqlCommand(spName);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandTimeout = 300;

                //Adding Parameters
                cmd.Parameters.Add(table);
                cmd.Parameters.Add(FieldName);
                cmd.Parameters.Add(value);



                using (con)
                {
                    int result = cmd.ExecuteNonQuery();
                    return result;
                }
            }
            catch (Exception)
            {

                return 0;
            }



        }

        #endregion


        #region Login/Reset User Password/Check Reset Password Link Validation

        public void ResetPassword(string userName,out string Email,out string UniqueId)
        {
            try
            {
                string mail = "", id = "";
                using(con = new SqlConnection(connection))
                {
                    cmd = new SqlCommand("spResetPassword", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter ParamUserName = new SqlParameter("@UserName", userName);
                    cmd.Parameters.Add(ParamUserName);
                    con.Open();

                    SqlDataReader DR = cmd.ExecuteReader();

                    while (DR.Read())
                    {
                        if (Convert.ToBoolean(DR["RetunCode"]))
                        {
                            id = DR["UniqueId"].ToString();
                            mail = DR["Email"].ToString();
                        }

                        else
                        {
                            mail = null;
                            id = null;
                        }
                    }

                    Email = mail;
                    UniqueId = id;

                }
            }
            catch (Exception)
            {

                throw;
            }
        }


        public bool spExecuteWithReturnValues(string spName,List<SqlParameter> spParameters)
        {
            try
            {
                using (con = new SqlConnection(connection))
                {
                    cmd = new SqlCommand(spName, con);
                    cmd.CommandType = CommandType.StoredProcedure;


                    foreach (SqlParameter parameter in spParameters)
                    {
                        cmd.Parameters.Add(parameter);
                    }

                    con.Open();
                    return (Convert.ToBoolean(cmd.ExecuteNonQuery()));
                    
                }
            }
            catch (Exception)
            {

                throw;
            }

        }

        public int SelectUserType(string spName, List<SqlParameter> spParameters)
        {
            try
            {
                using (con = new SqlConnection(connection))
                {
                    cmd = new SqlCommand(spName, con);
                    cmd.CommandType = CommandType.StoredProcedure;


                    foreach (SqlParameter parameter in spParameters)
                    {
                        cmd.Parameters.Add(parameter);
                    }

                    con.Open();
                    return cmd.ExecuteNonQuery();

                }
            }
            catch (Exception)
            {

                throw;
            }
        }
        #endregion

    }
}
