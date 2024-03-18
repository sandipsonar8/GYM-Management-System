using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace GYM_4._1.Admin_Panel
{
    public partial class Update_trainer_info : System.Web.UI.Page
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

                cmd = new SqlCommand("select * from TblTrainers where trainerid = @id", con);

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

                        tbSalary.Text = dr["salary"].ToString();

                        tbDOB.Text = dr["dob"].ToString();
                        tbCity.Text = dr["city"].ToString();
                        tbState.Text = dr["state"].ToString();
                        tbAddress.Text = dr["address"].ToString();
                        tbDOJ.Text = dr["doj"].ToString();
                    }
                }

                con.Close();
            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con.Open();

            if (tbPassword.Text == "")
            {
                cmd = new SqlCommand("update TblTrainers set name=@name, address=@address, contactno=@contactno, gender=@gender, dob=@dob, email=@email, city=@city, state=@state, salary=@salary, doj=@doj where trainerid = @id", con);
            }
            else
            {
                cmd = new SqlCommand("update TblTrainers set name=@name, address=@address, contactno=@contactno, gender=@gender, dob=@dob, email=@email, city=@city, state=@state, salary=@salary, password=@password, doj=@doj where trainerid = @id", con);
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
            cmd.Parameters.AddWithValue("@doj", tbDOJ.Text);
            cmd.Parameters.AddWithValue("@salary", Convert.ToDecimal(tbSalary.Text));
            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Request.QueryString["id"]));

            cmd.ExecuteNonQuery();


            Response.Write("<script>alert('Trainer Updated Successfully..')</script>");

            //Server.Transfer("AdminViewTrainers.aspx");

            con.Close();
        }
    }
}