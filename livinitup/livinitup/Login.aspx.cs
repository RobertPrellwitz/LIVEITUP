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
    public partial class Login : System.Web.UI.Page
    {
        bool user = false;
        bool pass = false;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = null;
            bool verify = true;
            String email = txtEmail.Text;
            String password = txtPassword.Text;
            String query = "Select UserID, email, password, Firstname, LastName From [User] where email = '" + email + "'";
            String connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            conn = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader read = null;
            conn.Open();
            read = cmd.ExecuteReader();
            int tempId = -1;
            String tempPass = ""; String tempEmail = ""; String tempFirst = ""; String tempLast = "";

            while (read.Read())
            {
                tempId = (int)read[0];
                tempEmail = (string)read[1];
                tempPass = (string)read[2];
                tempFirst = (string)read[3];
                tempLast = (string)read[4];
            }

            user = email.Equals(tempEmail);
            pass = password.Equals(tempPass);
            lblError.Text = (pass && user) ? string.Empty : "invalid Entry";
            
            if (user && pass)
            {
                Session.Add("email", tempEmail);
                Session.Add("userId", tempId);
                Session.Add("FirstName", tempFirst);
                Session.Add("LastName", tempLast);

                Response.Redirect("Default.aspx");
            }
        }
    }
}