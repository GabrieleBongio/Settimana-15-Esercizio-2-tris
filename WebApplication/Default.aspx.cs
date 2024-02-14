using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e) { }

        protected void Login_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("AccessInformation");
            cookie.Values["Username"] = Username.Text;
            cookie.Values["Password"] = Password.Text;
            cookie.Expires = DateTime.Now.AddDays(10);
            Response.Cookies.Add(cookie);
            Response.Redirect("ShowInformation.aspx");
        }
    }
}
