using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using _2084_a2.Models;

namespace _2084_a2
{
    public partial class time_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //call the GetTitles function to populate the grid
            if (!IsPostBack)
            {
                GetTitles();
            }
        }

        protected void GetGenres()
        {
            using (DefaultConnection db = new DefaultConnection())
            {
                //query the time table
                var time = from t in db.time
                           select t;

                //bind the result to the gridview
                grdTime.DataSource = time.ToList();
                grdTime.DataBind();
            }
        }
    }
}