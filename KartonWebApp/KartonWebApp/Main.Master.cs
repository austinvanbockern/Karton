using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace KartonWebApp
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if someone is logged in, welcome and change buttons etc
            if (Session["Username"] != null)
            {
                // welcome message
                lblWelcome.Text = "Welcome, <strong>" + Session["Username"] + "</strong>";

                // change button visibility
                btnSignIn.Visible = false;
                btnLogout.Visible = true;
            }
            else
            {
                // change button visibility
                btnSignIn.Visible = true;
                btnLogout.Visible = false;
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Reset session variables
            Session["Username"] = null;
            Session["Email"] = null;
            Session["Password"] = null;
            Session["UserID"] = null;

            // change button visibility
            btnSignIn.Visible = true;
            btnLogout.Visible = false;

            // reset welcome message
            lblWelcome.Text = "";

            Response.Redirect("Index.aspx");
        }
    }
}