using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATP2_Assignment2.View
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logID"] == null)
            {
                Response.Redirect("~/View/Home.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["logID"] = null;
            Response.Redirect("~/View/Home.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View/ChangePassword.aspx");
        }
    }
}