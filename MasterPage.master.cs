using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        { 
            logoutLink.Visible = true;
            login.Text = "Logout";
            login.NavigateUrl = "logout.aspx";

             if (("admin" == (String)(Session["user"]))) //hides the admin page link if one is not in an admin session
            {
                adminLog.Visible = true;
            }
        }
    }
}
