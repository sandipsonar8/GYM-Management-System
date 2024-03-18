using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace GYM_4._1.Trainers_Panel
{
    public partial class TrainerSetPlan : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["gymdb"].ConnectionString);

        SqlCommand cmd = null;

        SqlDataAdapter da = null;

        DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                setData();
            }
        }

        public void setData()
        {
            if (Request.QueryString["id"] != null)
            {

                con.Open();

                cmd = new SqlCommand("select * from TblMembers where memberid = @id", con);

                cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Request.QueryString["id"]));

                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                da.Fill(dt);

                if (dt.Rows.Count == 1)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        txtMon.Text = dr["mon"].ToString();
                        txtTues.Text = dr["tues"].ToString();
                        txtWed.Text = dr["wed"].ToString();
                        txtThu.Text = dr["thu"].ToString();
                        txtFri.Text = dr["fri"].ToString();
                        txtSatu.Text = dr["satu"].ToString();
                        txtSun.Text = dr["sun"].ToString();
                    }
                }

                con.Close();
            }
        }
        protected void btnSet_Click(object sender, EventArgs e)
        {
            con.Open();


            cmd = new SqlCommand("update TblMembers set mon=@mon,tues=@tues,wed=@wed,thu=@thu,fri=@fri,satu=@satu,sun=@sun where memberid = @id", con);


            cmd.Parameters.AddWithValue("@mon", txtMon.Text);
            cmd.Parameters.AddWithValue("@tues", txtTues.Text);
            cmd.Parameters.AddWithValue("@wed", txtWed.Text);
            cmd.Parameters.AddWithValue("@thu", txtThu.Text);
            cmd.Parameters.AddWithValue("@fri", txtFri.Text);
            cmd.Parameters.AddWithValue("@satu", txtSatu.Text);
            cmd.Parameters.AddWithValue("@sun", txtSun.Text);

            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Request.QueryString["id"]));

            cmd.ExecuteNonQuery();



            Response.Write("<script>alert('Member Plan Updated Successfully..')</script>");

            Server.Transfer("TrainerViewMembers.aspx");

            con.Close();
        }
    }
}