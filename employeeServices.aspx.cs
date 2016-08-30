using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class employeeServices : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            
        }

        protected void getData_Click(object sender, EventArgs e)
        {

            int id = int.Parse(getdata1.Text.ToString());

            SqlConnection con = new SqlConnection(@"Data Source=inchnilpdb02\mssqlserver1;Initial Catalog=CHN12_MMS73_TEST;Integrated Security=False;User ID=mms73user;Password=mms73user;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            try
            {
                cmd = new SqlCommand("getEmployeeGrp4", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@id", id ));
                da.SelectCommand = cmd;
                da.Fill(dt);
                dataviewgrid.DataSource = dt;
                dataviewgrid.DataBind();

            }
            catch (Exception x)
            {

            }
            finally
            {
                cmd.Dispose();
                con.Close();
            }
          

        }
    }
    
}