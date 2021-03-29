using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
                String eventTime = txtEventTime.Text;
                String eventLocation = txtEventLocation.Text;
                String amPm = ddlAmPm.SelectedValue;
                String keyword = txtKeyWord.Text;
                bool vir = cbxVirtual.Checked;
                bool priv = cbxPrivate.Checked;
                String eventDescription = txtEventDescription.Text;

                btnCreateEvent.Text = "Success!";
            }
            catch
            {
                lblError.Text = "Please fill all required fields";
            }
        }
    }
}