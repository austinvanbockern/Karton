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
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {
            // if page is valid
            if (IsValid)
            {
                // Get user input, trim access spaces
                string username = txtUsername.Text.Trim();
                string email = txtEmail.Text.Trim();
                string password = txtPassword.Text.Trim();
                string password2 = txtPassword2.Text.Trim();
                string desc = txtaDescription.Value.Trim();
                string type = ddlType.SelectedItem.ToString();

                // call database, accessing data filtered by username and email
                // define connection
                using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Karton.mdf;Integrated Security=True"))
                {
                    // Command to execute
                    SqlCommand cmd = new SqlCommand("SELECT * FROM LOGINS WHERE username = '" + username + "';");
                    // define connection
                    cmd.Connection = con;
                    // open connection
                    con.Open();

                    // new dataset
                    DataSet ds = new DataSet();
                    // new data adapter
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    // run query, fill dataset with data
                    da.Fill(ds);


                    // bool if username is in use
                    bool usernameInUse = ((ds.Tables.Count > 0) && (ds.Tables[0].Rows.Count > 0));

                    // if username is not in use, check if email is in use
                    if (!usernameInUse)
                    {
                        // Command to execute
                        cmd.CommandText = "SELECT * FROM LOGINS WHERE email = '" + email + "';";

                        // reset dataset
                        ds = new DataSet();
                        // reset data adapter
                        da = new SqlDataAdapter(cmd);
                        // run query, fill dataset with data
                        da.Fill(ds);

                        // bool if email is in use
                        bool emailInUse = ((ds.Tables.Count > 0) && (ds.Tables[0].Rows.Count > 0));

                        // if email is not in use
                        if (!emailInUse)
                        {
                            // if an account type is selected
                            if (ddlType.SelectedIndex > 0)
                            {
                                // validaton is done. create new user and login

                                // sp for create new account
                                cmd.CommandText = "EXEC spCreateAccount '" + username + "', '" + password + "' ,'" + email + "' ,'" + desc + "' ,'" + type + "'";

                                // try to execute insert procedure
                                try
                                {
                                    cmd.ExecuteNonQuery();
                                }
                                catch
                                {
                                    // there was a problem
                                }

                                Response.Redirect("Login.aspx");
                            }
                            else
                            {
                                // dll is bad
                            }
                        }
                        else
                        {
                            // email in use
                        }
                    }
                    else
                    {
                        // username in use
                    }
                }

            }
        }
    }
}