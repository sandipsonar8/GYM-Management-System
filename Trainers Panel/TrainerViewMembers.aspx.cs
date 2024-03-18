using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace GYM_4._1.Trainers_Panel
{
    public partial class TrainerViewMembers : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["gymdb"].ConnectionString);

        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

            getUser("");
        }
        public void getUser(string SearchMember)
        {
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("select * from TblMembers where memberid in (select memberid from TblTrainerAllocation where trainerid = " + Convert.ToInt32(Session["TrainerId"]) + ")", con);

            DataTable dt = new DataTable();

            da.Fill(dt);

            RepeaterDB.DataSource = dt;

            RepeaterDB.DataBind();

            con.Close();
        }
    }
}