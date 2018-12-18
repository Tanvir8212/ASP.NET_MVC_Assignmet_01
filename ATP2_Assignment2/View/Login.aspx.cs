using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATP2_Assignment2.View
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logID"] != null)
            {
                Response.Redirect("~/View/UserHome.aspx");
            }
            try
            {
                UserName.Value = Session["UserName"].ToString();
                Password.Value = Session["Password"].ToString();

            }catch(Exception ex)
            {
                //Response.Write(ex.ToString());
            }
            
        }
    }
}