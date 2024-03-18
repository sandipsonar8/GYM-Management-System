using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.DataVisualization.Charting;

namespace GYM_4._1.Admin_Panel
{
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["gymdb"].ConnectionString);

        SqlDataAdapter da = null;

        DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                getCounting();
            }
            catch (Exception ex)
            { }
        }
        public void getCounting()
        {

            con.Open();

            da = new SqlDataAdapter("select * from TblMembers", con);

            dt = new DataTable();

            da.Fill(dt);

            Print_totalmembers.Text = dt.Rows.Count.ToString();

            da = new SqlDataAdapter("select * from TblTrainers", con);

            dt = new DataTable();

            da.Fill(dt);

            Print_totaltrainers.Text = dt.Rows.Count.ToString();

            da = new SqlDataAdapter("select isnull(sum(totalfee),0) as totalfee, isnull(sum(receivedfee),0) as receivedfee from TblMembers", con);

            Series series = Chart1.Series["Series1"];

            dt = new DataTable();

            da.Fill(dt);

            if (dt.Rows.Count == 1)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    series.Points.AddXY("Total Fee", dr["totalfee"].ToString());
                    series.Points.AddXY("Total Received Fee", dr["receivedfee"].ToString());
                    series.Points.AddXY("Total Remaing Fee", (Convert.ToInt32(dr["totalfee"].ToString()) - Convert.ToInt32(dr["receivedfee"].ToString())).ToString());

                    Print_totalfees.Text = dr["totalfee"].ToString();
                    Print_paidfee.Text = dr["receivedfee"].ToString();
                    Print_rimainingfee.Text = (Convert.ToInt32(dr["totalfee"].ToString()) - Convert.ToInt32(dr["receivedfee"].ToString())).ToString();
                }
            }

            da = new SqlDataAdapter("select * from TblMembers where DATEDIFF(day,CONVERT(date, CONVERT(VARCHAR(10), getdate(), 103), 103),CONVERT(date, expiredate, 103)) <= 0", con);

            dt = new DataTable();

            da.Fill(dt);

            Print_expiredmembers.Text = dt.Rows.Count.ToString();

            con.Close();




        }
    }
}