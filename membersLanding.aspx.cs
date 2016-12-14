using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class membersLanding : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Write("You must be logged in to view the Members area - Please sign in");
            Response.Write("<a href='Loginpage.aspx'> sign in</a>");
        }
        else
        {
            Response.Redirect("Memberspage.aspx");
        }
    }
}