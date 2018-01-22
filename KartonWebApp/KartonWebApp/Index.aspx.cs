using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KartonWebApp
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                lblBody.Text = "You are logged in!<br />Welcome, <strong>" + Session["Username"] + "</strong>"; 
            }
            else
            {
                lblBody.Text = "Welcome to <strong>Karton.live</strong>";
            }
        }
    }
}