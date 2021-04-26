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
    public partial class SearchEvent : System.Web.UI.Page
    {
        public DateTime start;
        public DateTime end;
        public int zip;
        protected void Page_Load(object sender, EventArgs e)
        {
            //initialize calender dates to include all upcoming and recent events +-20yrs
            //calStartDate.SelectedDate = DateTime.Today.AddYears(-20);
            //calEndDate.SelectedDate = DateTime.Today.AddYears(20);

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //Validate zipcode input, must be 5 digits, or empty if not searching by zip
            try {
                
                string zipString = txtLocation.Text;               
                if (!(zipString.Length == 5 || zipString.Length == 0)) throw new Exception();  
                if (zipString.Length == 5)
                    zip = int.Parse(txtLocation.Text);
                lblZipError.Text = String.Empty;
                
                }
            catch
            {
                lblZipError.Text = "Please enter a valid 5 digit zip code";
            }

            SqlConnection conn = null;
            var sampleDataTable = new DataTable();
            try
            {
                bool zipAdded = false;
                bool typeAdded = false;
                string zipString = txtLocation.Text;
                string connString =
                ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                conn = new SqlConnection(connString);
                string query = "SELECT Event.Date as 'Date', Event.Description as 'Description', Event.Type as 'Event', Interest.Type as 'Category', Event.Zip as 'Zip' FROM [Event], [interest]";

                //Add zip search restriction to query
                if (zipString.Length != 0)
                {
                    query += " WHERE Event.Zip = " + zipString;
                    zipAdded = true;
                }

                //Add keyword search restriction to query
                if (txtEventSearchType.Text != String.Empty)
                {
                    typeAdded = true;
                    if (zipAdded)
                        query += " AND (Event.Type LIKE '%" + txtEventSearchType.Text + "%' or Interest.Type LIKE '%" + txtEventSearchType.Text + "%') and Event.InterestID = Interest.InterestID";
                    else
                        query += "WHERE Event.Type LIKE '%" + txtEventSearchType.Text + "%' or Interest.Type LIKE '%" + txtEventSearchType.Text + "%' and Event.InterestID = Interest.InterestID";
                }

                //Add date search restriction to query -NOT WORKING PROPERLY
                /*
                this.end = calEndDate.SelectedDate;
                this.start = calStartDate.SelectedDate;
                if (zipAdded || typeAdded)
                    query += " AND Date >= '" + this.start.ToString() + "' AND Date < '" + end.ToString() + "'";
                else
                    query += " WHERE Date >= '" + this.start.ToString() + "' AND Date < '" + end.ToString() + "'";
                */
                



                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                // create data adapter
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                // this will query your database and return the result to your datatable
                da.Fill(sampleDataTable);
            }
            catch (Exception ex)
            {
                Response.Write("Error occurred: " + ex.Message); // handle error here
            }
            finally
            {
                conn.Close();
            }
            // bind the SQL results to your gridview: Use the name of your GridView control
            GridView2.DataSource = sampleDataTable;
            GridView2.DataBind();

        }

        protected void calStartDate_SelectionChanged(object sender, EventArgs e)
        {
            this.start = calStartDate.SelectedDate;
        }
    }
}