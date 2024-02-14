using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class ShowInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["AccessInformation"] != null)
            {
                Username.InnerText =
                    $"Username: {Request.Cookies["AccessInformation"].Values["Username"]}";
                Password.InnerText =
                    $"Password: {Request.Cookies["AccessInformation"].Values["Password"]}";
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("AccessInformation");
            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie);
            Response.Redirect("Default.aspx");
        }
    }
}
