using System;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;

public partial class SubmitDeal : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            var fileOK = false;
            var path = Server.MapPath("~/images/");

            if (FileUpload1.HasFile)
            {
                var fileExtensions = Path.GetExtension(FileUpload1.FileName).ToLower();
                string[] allowedExtensions = {".gif", ".png", ".jpeg", ".jpg"};

                foreach (var x in allowedExtensions)
                    if (fileExtensions == x)
                        fileOK = true;
                if (fileOK)
                    try
                    {
                        FileUpload1.PostedFile.SaveAs(path + FileUpload1.FileName);
                        ProdImage.ImageUrl = "~/images/" + FileUpload1.FileName;
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            var conn =
                new SqlConnection(
                    "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
            conn.Open();
            var query =
                "insert into [products](prodName,prodType,prodPrice,prodImage) values (@name,@type,@price,@image)";
            var cmd = new SqlCommand(query, conn);

            cmd.Parameters.AddWithValue("@name", prodName.Text);
            cmd.Parameters.AddWithValue("@type", prodType.Text);
            cmd.Parameters.AddWithValue("@price", prodPrice.Text);
            cmd.Parameters.AddWithValue("@image", ProdImage.ImageUrl);


            cmd.ExecuteNonQuery();
            Response.Redirect("Products.aspx");
            Response.Write("Registration is successfull");
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex);
        }
    }


}