using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using _2084_a2.Models;

namespace _2084_a2
{
    public partial class book_detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //call the GetBooks function to populate the grid
            if (!IsPostBack)
            {
                GetBooks();
            }
        }

        protected void GetBooks()
        {
            using (DefaultConnection db = new DefaultConnection())
            {
                //query the book table
                var book = from b in db.book
                             select b;

                //bind the result to the gridview
                GetBooks.DataSource = book.ToList();
                GetBooks.DataBind();
            }
        }
    }
}