using System;
using System.Web.UI.WebControls;

namespace GYM_4._1.Admin_Panel
{
    public partial class Main_Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

            Session.Remove("tblmember");
            Session.RemoveAll();
            Session.Clear();
            Response.Redirect("Login_Panel.aspx");
        }
    }
}