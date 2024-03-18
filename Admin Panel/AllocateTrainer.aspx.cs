using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace GYM_4._1.Admin_Panel
{
    public partial class AllocateTrainer : System.Web.UI.Page
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["gymdb"].ConnectionString);

        SqlCommand cmd = null;

        SqlDataAdapter da = null;

        DataTable dt, dt2 = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAllocateTrainer_Click(object sender, EventArgs e)
        {
            con.Open();

            cmd = new SqlCommand("select * from TblTrainerAllocation where trainerid = @traineremail and memberid = @memberemail", con);

            cmd.Parameters.AddWithValue("@traineremail", ddlTrainerEmailId.SelectedValue);

            cmd.Parameters.AddWithValue("@memberemail", ddlMemberEmailId.SelectedValue);

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            da.Fill(dt);

            if (dt.Rows.Count >= 1)
            {
                Response.Write("<script>alert('Already Allocated..')</script>");
            }
            else
            {
                cmd = new SqlCommand("insert into TblTrainerAllocation (trainerid,memberid,date) values (@traineremail,@memberemail,@date)", con);

                cmd.Parameters.AddWithValue("@traineremail", ddlTrainerEmailId.SelectedValue);

                cmd.Parameters.AddWithValue("@memberemail", ddlMemberEmailId.SelectedValue);
                cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString());
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Allocation Successfully..')</script>");
            }

            con.Close();
        }
    }
}