using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// identity references

using Microsoft.Owin.Security.Cookies;

namespace _2084_a2
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                plhPrivate.Visible = true;
                plhPublic.Visible = false;
            }
            else
            {
                plhPrivate.Visible = false;
                plhPublic.Visible = true;
            }
        }
    }
}