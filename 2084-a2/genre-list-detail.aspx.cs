using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using _2084_a2.Models;

namespace _2084_a2
{
    public partial class genre_list_detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //call the GetGenres function to populate the grid
            if (!IsPostBack)
            {
                GetGenres();
            }
        }

        protected void GetGenres()
        {
            using (DefaultConnection db = new DefaultConnection())
            {
                //query the genre table
                var genre = from g in db.genre
                             select g;

                //bind the result to the gridview
                grdGenre.DataSource = genre.ToList();
                grdGenre.DataBind();
            }
        }
    }
}