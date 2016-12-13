using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using _2084_a2.Models;

namespace _2084_a2
{
    public partial class title_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //call the GetTitles function to populate the grid
            if (!IsPostBack)
            {
                GetTitles();
            }
        }

        protected void GetTitles()
        {
            using (DefaultConnection db = new DefaultConnection())
            {
                //query the title table
                var title = from t in db.title
                           select t;

                //bind the result to the gridview
                grdTitle.DataSource = title.ToList();
                grdTitle.DataBind();
            }
        }
    }
}