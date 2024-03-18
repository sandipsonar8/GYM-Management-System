using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace GYM_4._1.Admin_Panel
{
    public partial class Receipt : System.Web.UI.Page
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
                    //txtId.Text = dr["memberid"].ToString();
                    txtName.Text = dr["name"].ToString();
                    LabelDOJ.Text = dr["doj"].ToString();
                    LabelExpireDate.Text = dr["expiredate"].ToString();
                    LabelFrom.Text = dr["fromtime"].ToString();
                    LabelTo.Text = dr["totime"].ToString();
                    txtMonth.Text = dr["month"].ToString();
                    txtOneMonthFee.Text = dr["onemonthfee"].ToString();
                    txtPaidFee.Text = dr["receivedfee"].ToString();
                    txtRemainingFee.Text = (Convert.ToInt32(dr["totalfee"].ToString()) - Convert.ToInt32(dr["receivedfee"].ToString())).ToString();
                    txtTotalFee.Text = dr["totalfee"].ToString();

                }
            }

            con.Close();

        }

    }
}