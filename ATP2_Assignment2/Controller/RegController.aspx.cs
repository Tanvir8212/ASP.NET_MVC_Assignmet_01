using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATP2_Assignment2.Model;

namespace ATP2_Assignment2.Controller
{
    public partial class RegController : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User u = new User();
            u.Password = Request.Form["Password"];
            u.UserName = Request.Form["UserName"];
            u.Email = Request.Form["UserName"];

            MyDatabaseContext myDatabaseContext = new MyDatabaseContext();
            myDatabaseContext.Users.Add(u);
            myDatabaseContext.SaveChanges();

            Response.Redirect("~/View/Login.aspx");
        }
    }
}