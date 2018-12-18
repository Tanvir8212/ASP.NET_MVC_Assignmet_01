using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATP2_Assignment2.Controller
{
    public partial class HomeController : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logID"] != null)
            {
                Response.Redirect("~/View/UserHome.aspx");
            }
            
            Response.Redirect("~/View/Home.aspx");
            
        }
    }
}