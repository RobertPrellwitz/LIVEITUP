using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace livinitup
{
    public partial class SearchEvent : System.Web.UI.Page
    {
        public int zip;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            int count = 1;
            try {
                string check = txtLocation.Text;
                for (int i =0; i < check.Length; i++)
                {
                    if(Char.IsDigit(check[i]))
                    {
                        count++;
                    }
                    if(count == 5) { }
                }
                zip = int.Parse(txtLocation.Text);
                lblZipError.Text = String.Empty;
                
                }
            catch
            {
                lblZipError.Text = "Please enter a valid 5 digit zip code";
            }
        }
    }
}