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
        string connection = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
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
                cmd.Parameters.AddRange(values);

                foreach (var fields in fieldNames)
                {
                    cmd.Parameters.Add(fields);
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

        public bool Login(string username, string password)
        {
            try
            {
                using (con = new SqlConnection(connection))
                {
                    cmd = new SqlCommand("SPValidateUser", con);
                    cmd.CommandType = CommandType.StoredProcedure;


                    //Adding parameters


                    SqlParameter ParamUserName = new SqlParameter("@userName", username);
                    SqlParameter Parampassword = new SqlParameter("@password", password);
                    cmd.Parameters.Add(ParamUserName);
                    cmd.Parameters.Add(Parampassword);

                    con.Open();
                    int Result = (int)cmd.ExecuteScalar();
                    return Result == 1 ? true : false;
                }
            }
            catch (Exception)
            {

                throw;

            }
        }
    }
}
