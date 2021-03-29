using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
                Response.Redirect("Default.aspx");
            }

        }
    }
}