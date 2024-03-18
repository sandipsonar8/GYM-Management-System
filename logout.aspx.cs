using System;

namespace GYM_4._1
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();

            Server.Transfer("Login_Page.aspx");
        }
    }
}