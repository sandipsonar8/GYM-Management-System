using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace GYM_4._1.Admin_Panel
{
    public partial class ViewAllMeembers : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["gymdb"].ConnectionString);

        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["type"] == "remaining")
            {
                getUser("select *,CONVERT(VARCHAR(10), dob, 105) as d,(totalfee - receivedfee) as remainingfee from TblMembers where (totalfee - receivedfee) != 0");
            }
            else if (Request.QueryString["type"] == "expired")
            {
                getUser("select *,CONVERT(VARCHAR(10), dob, 105) as d,(totalfee - receivedfee) as remainingfee from TblMembers where DATEDIFF(day,CONVERT(date, CONVERT(VARCHAR(10), getdate(), 103), 103),CONVERT(date, expiredate, 103)) <= 0");
            }
            else
            {
                getUser("select *,CONVERT(VARCHAR(10), dob, 105) as d,(totalfee - receivedfee) as remainingfee from TblMembers");
            }



        }

        public void getUser(string query)
        {
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter(query, con);

            DataTable dt = new DataTable();

            da.Fill(dt);

            RepeaterDB.DataSource = dt;

            RepeaterDB.DataBind();

            con.Close();
        }
    }
}