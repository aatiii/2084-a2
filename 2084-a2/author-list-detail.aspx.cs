using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using _2084_a2.Models;

namespace _2084_a2
{
    public partial class author_list_detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //call the GetAuthors function to populate the grid
            if (!IsPostBack)
            {
                GetAuthors();
            }
        }

        protected void GetAuthors()
        {
            using (DefaultConnection db = new DefaultConnection())
            {
                //query the authors table
                var author = from a in db.author
                             select a;

                //bind the result to the gridview
                grdAuthor.DataSource = author.ToList();
                grdAuthor.DataBind();
            }
        }
    }
}