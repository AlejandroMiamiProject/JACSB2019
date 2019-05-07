using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JACSBcafg
{
    public partial class CreateLearningSite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            try
            {
                string DbConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=LearningSites;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                using (var conn = new SqlConnection(DbConnectionString))
                using (var cmd = conn.CreateCommand())
                {
                    conn.Open();
                    cmd.CommandText = @"INSERT INTO AddLearningSiteInfo Values (@lsName, @userId, @lsOwnerName, @lsEmail, @lsPhoneNumber, @lsWebAddress, @lsIsApproved";

                    Random rnd = new Random();
                    int userId = rnd.Next(1, 999999);

                    cmd.Parameters.AddWithValue("@lsName", lsName);
                    cmd.Parameters.AddWithValue("@userId", userId);
                    cmd.Parameters.AddWithValue("@lsOwnerName", lsOwnerName);
                    cmd.Parameters.AddWithValue("@lsEmail", lsEmail);
                    cmd.Parameters.AddWithValue("@lsPhoneNumber", lsPhoneNumber);
                    cmd.Parameters.AddWithValue("@lsWebAddress", lsWebAddress);
                    cmd.Parameters.AddWithValue("@lsIsApproved", true);

                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                // TODO: Log the exception and propagate it
                throw ex;
            }
        }
    }

}