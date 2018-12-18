using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ATP2_Assignment2.Model;

namespace ATP2_Assignment2.Controller
{
    public partial class UserController : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Form["submit"] == "changePassword")
            {
                MyDatabaseContext myDatabaseContext = new MyDatabaseContext();

                string sessionLogId = Session["logID"].ToString();
                string oldPass = Request.Form["OldPassword"];

                User user = (from p in myDatabaseContext.Users

                where p.UserName == sessionLogId

                && p.Password == oldPass

                 select p).FirstOrDefault();

                if(user != null)
                {
                    user.Password = Request.Form["NewPassword"];
                   // myDatabaseContext.Users.Add(user);
                    myDatabaseContext.SaveChanges();

                    Response.Redirect("~/View/UserHome.aspx");
                }

            }
        }
    }
}