using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace GYM_4._1.Admin_Panel
{
    public partial class Add_new_trainer : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["gymdb"].ConnectionString);

        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
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

                    cmd = new SqlCommand("insert into TblTrainers (name, address, contactno, gender, dob, email, city, state, salary,password,doj) VALUES (@name, @address, @contactno, @gender, @dob, @email, @city, @state, @salary, @password, @doj)", con);

                    cmd.Parameters.AddWithValue("@name", tbName.Text);
                    cmd.Parameters.AddWithValue("@address", tbAddress.Text);
                    cmd.Parameters.AddWithValue("@contactno", tbContactno.Text);
                    cmd.Parameters.AddWithValue("@gender", genderList.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@dob", Convert.ToDateTime(tbDOB.Text));
                    cmd.Parameters.AddWithValue("@email", tbEmail.Text);
                    cmd.Parameters.AddWithValue("@city", tbCity.Text);
                    cmd.Parameters.AddWithValue("@state", tbState.Text);
                    cmd.Parameters.AddWithValue("@doj", DateTime.Now.ToShortDateString());
                    cmd.Parameters.AddWithValue("@salary", Convert.ToInt32(tbSalary.Text));
                    cmd.Parameters.AddWithValue("@password", tbPassword.Text);

                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert('Trainer Inserted Successfully..')</script>");

                    Server.Transfer("~/Admin Panel/ViewAllTrainers.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Please Enter Right Information..)</script>");
            }
        }
    }
}
