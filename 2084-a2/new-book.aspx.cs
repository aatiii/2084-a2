using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using _2084_a2.Models;

namespace _2084_a2
{
    public partial class new_book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //call the GetBooks function to populate the grid
            if (!IsPostBack)
            {
                GetTitle();
            }
        }

        protected void GetTitle()
        {
            //connect
            using (DefaultConnection db = new DefaultConnection())
            {
                //Get the selected titleId from the url
                Int32 titleId = Convert.ToInt32(Request.QueryString["titleId"]);

                //query the db
                title objT = (from t in db.title
                               where t.titleId == titleId
                               select t).FirstOrDefault();

                //populate the form
                txtTitle.Text = objT.title;
          
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //connect
            using (DefaultConnection db = new DefaultConnection())
            {
                //create a new object
                author au = new author();
                Title ti = new title();
                Time tm = new time();
                genre ge = new genre();
                review rw = new review();

                Int32 authorId = 0;
                Int32 titleId = 0;
                Int32 timeId = 0;
                Int32 genreId = 0;
                Int32 reviewId = 0;
               
                //check for a url
                if (!String.IsNullOrEmpty(Request.QueryString["titleId"]))
                {
                    //get the id from the url
                    authorId = Convert.ToInt32(Request.QueryString["titleId"]);

                    //look up the item
                    ti = (from t in db.author
                          where t.titleId == titleId
                          select t).FirstOrDefault();
                }
               

                //fill in text
                au.author = txtAuthor.Text;
                ti.title = txtTitle.Text;
                tm.time = txtTime.Text;
                ge.genre = txtGenre.Text;
                rw.review = txtReview.Text;

                //add if we have no id in the url
                if (titleId == 0)
                {
                    db.author.Add(au);
                    db.title.Add(ti);
                    db.time.Add(tm);
                    db.genre.Add(ge);
                    db.review.Add(rw);
                }

                //save the new item
                db.SaveChanges();

                //redirect to the home page
                Response.Redirect("default.aspx");
            }
        }
    }
}