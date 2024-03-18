using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace GYM_4._1
{
    public partial class Login_Page : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["gymdb"].ConnectionString);

        SqlCommand cmd = null;
        SqlDataAdapter da = null;

        DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {

                if (Session["User"].ToString() == "Admin")
                {
                    Response.Redirect("~/Admin Panel/Dashboard.aspx");
                }
                else if (Session["User"].ToString() == "Trainer")
                {
                    Response.Redirect("~/Trainers Panel/TrainerDashboard.aspx");
                }
                else if (Session["User"].ToString() == "Member")
                {
                    Response.Redirect("~/Members Panel/MemberDashboard.aspx");
                }
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            con.Open();

            cmd = new SqlCommand("select * from TblMembers where email = @email and password = @pass", connection: con);

            cmd.Parameters.AddWithValue("@email", UserName.Text);

            cmd.Parameters.AddWithValue("@pass", Password.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            da.Fill(dt);

            if (dt.Rows.Count == 1)
            {
                Session["User"] = "Member";

                foreach (DataRow dr in dt.Rows)
                {
                    Session["MemberId"] = dr["memberid"].ToString();

                    Session["MemberName"] = dr["name"].ToString();

                }
                Session["Email"] = UserName.Text;

                Response.Redirect("~/Members Panel/MemberDashboard.aspx");
            }
            else
            {
                cmd = new SqlCommand("select * from TblTrainers where email = @email and password = @pass", con);

                cmd.Parameters.AddWithValue("@email", UserName.Text);

                cmd.Parameters.AddWithValue("@pass", Password.Text);

                SqlDataAdapter da2 = new SqlDataAdapter(cmd);

                DataTable dt2 = new DataTable();

                da2.Fill(dt2);

                if (dt2.Rows.Count == 1)
                {


                    Session["User"] = "Trainer";

                    Session["Email"] = UserName.Text;

                    foreach (DataRow dr in dt2.Rows)
                    {
                        Session["TrainerId"] = dr["trainerid"].ToString();

                        Session["TrainerName"] = dr["name"].ToString();
                    }

                    Response.Redirect("~/Trainers Panel/TrainerDashboard.aspx");
                }
                else
                {

                    if (UserName.Text == "Admin" && Password.Text == "2735")
                    {

                        Session["User"] = "Admin";

                        Session["Email"] = UserName.Text;

                        Response.Redirect("~/Admin Panel/Dashboard.aspx");

                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Username Or Password')</script>");
                    }
                }

            }

            con.Close();
        }
    }
}
