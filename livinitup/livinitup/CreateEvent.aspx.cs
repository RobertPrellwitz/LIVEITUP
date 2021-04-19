using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace livinitup
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Text = "";
        }

        protected void btnCreateEvent_Click(object sender, EventArgs e)
        {
            try
            {   //Mare sure all required fields are filled
                if (txtEventName.Text == string.Empty || txtEventDate.Text == string.Empty || txtEventLocation.Text == string.Empty
                    || txtKeyWord.Text == string.Empty) throw new Exception("must fill all required fields");
                //Make sure Date is in proper format
                DateTime result;
                if (!DateTime.TryParse(txtEventDate.Text, out result))
                {
                    lblDateError.Text = "invalid format";
                    throw new Exception("Invalid Date Format");
                }

                String eventName = txtEventName.Text;
                String eventDate = txtEventDate.Text;
                String eventZipCode = txtEventLocation.Text;
                if (eventZipCode.Length != 5)
                    throw new Exception("Enter a valid Zip Code. ex 12345");
                String keyword = txtKeyWord.Text;
                bool vir = cbxVirtual.Checked;
                bool priv = cbxPrivate.Checked;
                String eventDescription = txtEventDescription.Text;
                int userID = 2;
                int interestID = 1;

                btnCreateEvent.Text = "Success!";

                //Add event info to Database
                SqlConnection conn = null;
                try
                {
                    string connString =
                    ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    conn = new SqlConnection(connString);
                    var query = String.Format("INSERT INTO [Event] ([Type], [Description], " +
                        "[Zip], [InterestID], [UserID]) VALUES('{0}', '{1}', '{2}', '{3}', '{4}')", 
                        eventName, eventDescription, eventZipCode, interestID, userID);
                    SqlCommand cmd = new SqlCommand(query, conn);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    // handle error here
                    lblError.Text = "Error: " + ex.Message;
                }
                finally
                {
                    conn.Close();
                }
            }
            catch
            {
                lblError.Text = "Please fill all required fields";
            }
        }
    }
}