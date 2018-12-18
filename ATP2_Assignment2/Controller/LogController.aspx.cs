using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATP2_Assignment2.Model;

namespace ATP2_Assignment2.Controller
{
    public partial class LogController : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                User u = new User();
                u.Password = Request.Form["Password"];
                u.UserName = Request.Form["UserName"];

                MyDatabaseContext myDatabaseContext = new MyDatabaseContext();
                var user = from p in myDatabaseContext.Users

                           where p.UserName == u.UserName

                           && p.Password == u.Password

                           select p;

            if (Request.Form["RememberMe"] == "true")
            {
                Session["UserName"] = u.UserName;
                Session["Password"] = u.Password;
            }

                if (user.Any())
                {
                    Session["logID"] = u.UserName;
                    Response.Redirect("~/View/UserHome.aspx");
                }
                else
                {
                    Response.Redirect("~/View/Login.aspx");

                    //Response.Write("Passwor is"+Request.Form["Password"]);
                }
           
            

        }

    }
}