using System;
using System.Data.SqlClient;
using System.Web.UI;

public partial class Adminspage : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (("admin" == (String)(Session["user"])))
        {
                    Response.Write("Welcome admin");
                    Response.Write("<br/><a href='logout.aspx'>Logout</a>");
               
        }
        else
        {
            Response.Redirect("Unauthorizedpage.aspx");

        }


        var conn =
                new SqlConnection(
                    "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
        conn.Open();

        var query = "select count(*) as name from Users";


        var cmd = new SqlCommand(query, conn);

       var     x = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        regusers.Text = "there are "+x+" registered user/s";

        conn.Close();
        try
        {
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        catch (
            Exception ex)
        {
            Response.Write
            ("Error:" +
             ex
            );
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        var conn =
                new SqlConnection(
                    "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");

           
        var query = "truncate table Users";

            
        var cmd = new SqlCommand(query, conn);
        try

        {
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        catch (
            Exception ex)
        {
            Response.Write
            ("Error:" +
             ex
            );
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("SubmitDeal.aspx");
    }
}