using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace GYM_4._1.Trainers_Panel
{
    public partial class TrainerDashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["gymdb"].ConnectionString);

        SqlCommand cmd = null;

        SqlDataAdapter da = null;

        DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            getCounting();
        }
        public void getCounting()
        {
            con.Open();

            da = new SqlDataAdapter("select * from TblTrainerAllocation where trainerid = " + Convert.ToInt32(Session["TrainerId"]) + "", con);

            dt = new DataTable();

            da.Fill(dt);
            Print_totalmembers.Text = dt.Rows.Count.ToString();
            con.Close();
        }
    }
}