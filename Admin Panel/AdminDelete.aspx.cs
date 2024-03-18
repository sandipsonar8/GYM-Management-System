using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace GYM_4._1.Admin_Panel
{
    public partial class AdminDelete : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["gymdb"].ConnectionString);

        SqlCommand cmd = null;

        SqlDataAdapter da = null;

        DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                con.Open();

                if (Request.QueryString["tid"] != null && Request.QueryString["mid"] != null)
                {
                    cmd = new SqlCommand("delete from TblTrainerAllocation where trainerid = @tid and memberid = @mid", con);

                    cmd.Parameters.AddWithValue("@tid", Convert.ToInt32(Request.QueryString["tid"]));

                    cmd.Parameters.AddWithValue("@mid", Convert.ToInt32(Request.QueryString["mid"]));

                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Allocation Deleted Successfully..')</script>");

                    Server.Transfer("View_Allocate_Trainer.aspx");
                }

                if (Request.QueryString["type"].ToString() == "Member" && Request.QueryString["id"] != null)
                {

                    cmd = new SqlCommand("delete from TblMembers where memberid = @id", con);

                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Request.QueryString["id"]));

                    cmd.ExecuteNonQuery();

                    cmd = new SqlCommand("delete from TblTrainerAllocation where memberid = @mid", con);

                    cmd.Parameters.AddWithValue("@mid", Convert.ToInt32(Request.QueryString["id"]));

                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Member Deleted Successfully..')</script>");

                    Server.Transfer("ViewAllMembers.aspx");

                }
                else if (Request.QueryString["type"].ToString() == "Trainer" && Request.QueryString["id"] != null)
                {

                    cmd = new SqlCommand("delete from TblTrainers where trainerid = @id", con);

                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Request.QueryString["id"]));

                    cmd.ExecuteNonQuery();

                    cmd = new SqlCommand("delete from TblTrainerAllocation where trainerid = @tid", con);

                    cmd.Parameters.AddWithValue("@tid", Convert.ToInt32(Request.QueryString["id"]));

                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Trainer Deleted Successfully..')</script>");

                    Server.Transfer("ViewAllTrainers.aspx");

                }

                con.Close();
            }
        }
    }
}