using System;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Products : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var conn =
            new SqlConnection(
                "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
        conn.Open();
        var checkUser = "select * from Products";
        var prodNames = "select prodName from Products";
        var buyProduct = "delete from Products where prodName ='" + DropDownList1.SelectedItem + "'"; 

        var cmd = new SqlCommand(checkUser, conn);
        var cmd2 = new SqlCommand(prodNames, conn);

        try
        {
            var reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                var row = new TableRow();
                var cellName = new TableCell();
                var cellType = new TableCell();

                var cellPrice = new TableCell();
                var cellImage = new TableCell();


                cellName.Text = reader["prodName"].ToString();
                cellType.Text = reader["prodType"].ToString();
                cellPrice.Text = "$" + reader["prodPrice"].ToString();
                String url = reader["prodImage"].ToString();

                Image prodImage = new Image();
                prodImage.ImageUrl = url;
                prodImage.Width = 100;
                prodImage.Height = 100;

                cellImage.Controls.Add(prodImage);

                row.Cells.Add(cellName);
                row.Cells.Add(cellType);
                row.Cells.Add(cellPrice);
                row.Cells.Add(cellImage);

                Table1.Rows.Add(row);

            }

            conn.Close();
        }


        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

        conn.Open();
        try
        {
            var reader = cmd2.ExecuteReader();

            while (reader.Read())
            {
                DropDownList1.Items.Add(reader[0].ToString());
            }
            conn.Close();
        }

        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            var conn =
                new SqlConnection(
                    "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
            conn.Open();
            var buyProduct = "delete from Products where prodName ='" + DropDownList1.SelectedItem + "'";
            var cmd = new SqlCommand(buyProduct, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        Response.Redirect("Products.aspx");


    }
}
