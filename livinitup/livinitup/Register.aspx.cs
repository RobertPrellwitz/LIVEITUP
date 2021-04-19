using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace livinitup
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            bool verify = true;
            String password = txtPassword.Text;
            String confirmPassword = txtPasswordConfirm.Text;

            // email input validation
            bool email = TxtEmail.Text == string.Empty;
            lblEmail.Text = email ? "Please enter a valid email address" : string.Empty;


            // password validation
            LblPassword.Text = (password.Length < 6) ? "Password not long enough - Your Password must have 6 characters " : "Password length criteria met";
            bool result = password.Equals(confirmPassword);
            LblPasswordConfirm.Text = (result ? "Passwords Match" : "Passwords do not Match");

            // final validation
            verify = (!email && result && password.Length > 5);

            //page redirct upon validation
            if (verify)
            {
                SqlConnection conn = null;
                try
                {
                    // Parameters
                    SqlParameter paramFN = new SqlParameter("@FirstName", txtFirstName.Text);
                    SqlParameter paramLN = new SqlParameter("@LastName", txtLastName.Text);
                    SqlParameter paramEmail = new SqlParameter("@Email", TxtEmail.Text);
                    SqlParameter paramPass = new SqlParameter("@Password", txtPassword.Text);

                    string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    conn = new SqlConnection(connString);
                    string query = "INSERT into [User] ([Firstname], [LastName], [email], [password]) VALUES (@FirstName, @LastName, @Email, @Password)";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.Add(paramFN);
                    cmd.Parameters.Add(paramLN);
                    cmd.Parameters.Add(paramEmail);
                    cmd.Parameters.Add(paramPass);
                    conn.Open();
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                    cmd.Dispose();

                    Response.Redirect("Default.aspx");

                }
                catch (Exception except) {
                    lblError.Text = "Error Occured: " + except.Message;
                    
                }


               
            }

        }
    }
}