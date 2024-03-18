using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace GYM_4._1.Admin_Panel
{
    public partial class Update_Member_Info : System.Web.UI.Page
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
                        tbName.Text = dr["name"].ToString();
                        tbContactno.Text = dr["contactno"].ToString();
                        tbEmail.Text = dr["email"].ToString();

                        if (dr["gender"].ToString() == "Male")
                        {
                            genderList.SelectedValue = "Male";
                        }
                        else
                        {
                            genderList.SelectedValue = "Female";
                        }

                        tbHeight.Text = dr["height"].ToString();
                        tbWeight.Text = dr["weight"].ToString();
                        tbDOB.Text = dr["dob"].ToString();
                        tbCity.Text = dr["city"].ToString();
                        tbState.Text = dr["state"].ToString();
                        tbAddress.Text = dr["address"].ToString();
                        tbNumberOfTrainingMonth.Text = dr["month"].ToString();
                        tbOneMonthFee.Text = dr["onemonthfee"].ToString();
                        tbTotalFee.Text = dr["totalfee"].ToString();
                        tbRecivedFee.Text = dr["receivedfee"].ToString();
                        tbPassword.Text = dr["password"].ToString();
                        tbFrom_time.Text = dr["fromtime"].ToString();
                        tbDOJ.Text = dr["doj"].ToString();
                        tbPlan_expired.Text = dr["expiredate"].ToString();
                        tbTo_time.Text = dr["totime"].ToString();
                    }
                }

                con.Close();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            {
                con.Open();

                if (tbPassword.Text == "")
                {
                    cmd = new SqlCommand("update TblMembers set name=@name, address=@address, contactno=@contactno, gender=@gender, dob=@dob, email=@email, city=@city, state=@state, height=@height, weight=@weight, month=@month, onemonthfee=@onemonthfee, totalfee=@totalfee, receivedfee=@receivedfee, fromtime=@fromtime, totime=@totime, expiredate=@expiredate where memberid = @id", con);
                }
                else
                {
                    cmd = new SqlCommand("update TblMembers set name=@name, address=@address, contactno=@contactno, gender=@gender, dob=@dob, email=@email, city=@city, state=@state, height=@height, weight=@weight,month=@month, onemonthfee=@onemonthfee, totalfee=@totalfee, receivedfee=@receivedfee, password=@password, fromtime=@fromtime, totime=@totime, expiredate=@expiredate where memberid = @id", con);
                    cmd.Parameters.AddWithValue("@password", tbPassword.Text);
                }

                cmd.Parameters.AddWithValue("@name", tbName.Text);
                cmd.Parameters.AddWithValue("@address", tbAddress.Text);
                cmd.Parameters.AddWithValue("@contactno", tbContactno.Text);
                cmd.Parameters.AddWithValue("@gender", genderList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@dob", Convert.ToDateTime(tbDOB.Text));
                cmd.Parameters.AddWithValue("@email", tbEmail.Text);
                cmd.Parameters.AddWithValue("@city", tbCity.Text);
                cmd.Parameters.AddWithValue("@state", tbState.Text);
                cmd.Parameters.AddWithValue("@height", Convert.ToDecimal(tbHeight.Text));
                cmd.Parameters.AddWithValue("@weight", Convert.ToDecimal(tbWeight.Text));
                cmd.Parameters.AddWithValue("@month", Convert.ToInt32(tbNumberOfTrainingMonth.Text));
                cmd.Parameters.AddWithValue("@onemonthfee", Convert.ToInt32(tbOneMonthFee.Text));
                cmd.Parameters.AddWithValue("@totalfee", Convert.ToInt32(tbTotalFee.Text));
                cmd.Parameters.AddWithValue("@receivedfee", Convert.ToInt32(tbRecivedFee.Text));
                cmd.Parameters.AddWithValue("@fromtime", tbFrom_time.Text);
                cmd.Parameters.AddWithValue("@totime", tbTo_time.Text);
                cmd.Parameters.AddWithValue("@expiredate", Convert.ToDateTime(tbDOJ.Text).AddMonths(Convert.ToInt32(tbNumberOfTrainingMonth.Text)).ToShortDateString());
                cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Request.QueryString["id"]));

                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Member Updated Successfully..')</script>");

                Server.Transfer("~/Admin Panel/ViewAllMembers.aspx");

                con.Close();
            }
        }
    }
}