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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Try to login

            // Get email and password from user
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            // define connection
            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Karton.mdf;Integrated Security=True"))
            {
                // Command to execute
                SqlCommand cmd = new SqlCommand("SELECT * FROM LOGINS WHERE email = '" + email + "' AND password = '" + password + "';");
                // define connection
                cmd.Connection = con;
                // open connection
                con.Open();

                // new dataset
                DataSet ds = new DataSet();
                // new data adapter
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                // run query
                da.Fill(ds);
                // close connection
                con.Close();

                // bool for login
                bool loginSuccessful = ((ds.Tables.Count > 0) && (ds.Tables[0].Rows.Count > 0));



                // if login was successful
                if (loginSuccessful)
                {
                    // get username
                    DataTable dt = ds.Tables[0];

                    DataRow dr = dt.Rows[0];

                    string username = (string)dr["Username"];
                    string id = dr["UserID"].ToString();

                    // assign username, password, and email to session variables
                    Session["Username"] = username;
                    Session["Email"] = email;
                    Session["Password"] = password;
                    Session["UserID"] = id;

                    // Redirect to home
                    Response.Redirect("Index.aspx");
                }
                // else, error message
                else
                {
                    btnLogin.Text = "Fail...";
                    
                }
            }
        }
    }
}