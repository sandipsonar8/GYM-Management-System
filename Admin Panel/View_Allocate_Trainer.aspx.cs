using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace GYM_4._1.Admin_Panel
{
    public partial class View_Allocate_Trainer : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["gymdb"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            getAllocation("");
        }
        public void getAllocation(string SearchOffer)
        {
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("select TblTrainers.email as temail,TblTrainers.trainerid, TblMembers.email as memail,TblTrainerAllocation.date,TblMembers.memberid from TblTrainerAllocation left join TblTrainers on TblTrainers.trainerid = TblTrainerAllocation.trainerid left join TblMembers on TblMembers.memberid = TblTrainerAllocation.memberid", con);

            DataTable dt = new DataTable();

            da.Fill(dt);

            RepeaterDB.DataSource = dt;

            RepeaterDB.DataBind();

            con.Close();
        }
    }
}