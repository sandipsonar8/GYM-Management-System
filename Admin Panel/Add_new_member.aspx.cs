using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace GYM_4._1.Admin_Panel
{
    public partial class Add_new_member : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["gymdb"].ConnectionString);

        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            con.Open();

            cmd = new SqlCommand("select * from TblMembers where email = @email", con);

            cmd.Parameters.AddWithValue("@email", tbEmail.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            da.Fill(dt);

            cmd = new SqlCommand("select * from TblTrainers where email = @email", con);

            cmd.Parameters.AddWithValue("@email", tbEmail.Text);

            SqlDataAdapter da2 = new SqlDataAdapter(cmd);

            DataTable dt2 = new DataTable();

            da2.Fill(dt2);


            if (dt.Rows.Count >= 1 || dt2.Rows.Count >= 1)
            {
                Response.Write("<script>alert('Email Id Already Used..')</script>");
            }
            else
            {


                cmd = new SqlCommand("insert into TblMembers(name, address, contactno, gender, dob, email, city, state, height, weight, month, onemonthfee, totalfee, receivedfee, password, fromtime, totime, doj, expiredate) VALUES (@name, @address, @contactno, @gender, @dob, @email, @city, @state, @height, @weight, @month, @onemonthfee, @totalfee, @receivedfee, @password, @fromtime, @totime, @doj, @expiredate)", con);

                //   cmd = new SqlCommand("insert into TblMembers(name, address, contactno, gender, email, city, state, height, weight, month, onemonthfee, totalfee, receivedfee, password, fromtime, totime) VALUES (@name, @address, @contactno, @gender, @email, @city, @state, @height, @weight, @month, @onemonthfee, @totalfee, @receivedfee, @password, @fromtime, @totime)", con);


                cmd.Parameters.AddWithValue("@name", tbName.Text);
                cmd.Parameters.AddWithValue("@address", tbAddress.Text);
                cmd.Parameters.AddWithValue("@contactno", tbContactno.Text);
                cmd.Parameters.AddWithValue("@gender", genderList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@dob", Convert.ToDateTime(tbDOB.Text).ToShortDateString());
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
                cmd.Parameters.AddWithValue("@doj", DateTime.Now.Date.ToShortDateString());
                cmd.Parameters.AddWithValue("@expiredate", DateTime.Now.Date.AddMonths(Convert.ToInt32(tbNumberOfTrainingMonth.Text)).ToShortDateString());
                cmd.Parameters.AddWithValue("@password", tbPassword.Text);

                cmd.ExecuteNonQuery();

                con.Close();

                Response.Write("<script>alert('Member Inserted Successfully..')</script>");
                Server.Transfer("~/Admin Panel/ViewAllMembers.aspx");

            }


        }
    }
}