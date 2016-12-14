using System;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;

public partial class Registerpage : Page
{
    String gender;
    private int x;

    protected void RadioButtonMale_CheckedChanged(object sender, EventArgs e)
    {
        gender = "male";
    }

    protected void RadioButtonFemale_CheckedChanged(object sender, EventArgs e)
    {
        gender = "female";
    }
   
    protected void Page_Load(object sender, EventArgs e)
    {
   

        if (IsPostBack)
        {
            var conn =
                new SqlConnection(
                    "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
            conn.Open();
            var checkUser = "select count(*) from [Users] where userName='" + Username.Text + "'";
            var cmd = new SqlCommand(checkUser, conn);
            x = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (x == 1)
                Response.Write("User Already Exists");

            conn.Close();
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
                "insert into [users](name,surname,userName,pwd,gender,emailAdd,image) values (@name,@surname,@username ,@password,@gender,@email,@image)";
            var cmd = new SqlCommand(query, conn);

            var checkUser = "select count(*) from [Users] where userName='" + Username.Text + "'";
            var checkUserCmd = new SqlCommand(checkUser, conn);
            x = Convert.ToInt32(checkUserCmd.ExecuteScalar().ToString());
            if (x == 1)
            {
            }
            else
            {
                cmd.Parameters.AddWithValue("@name", Name.Text);
                cmd.Parameters.AddWithValue("@surname", Surname.Text);
                cmd.Parameters.AddWithValue("@username", Username.Text);
                cmd.Parameters.AddWithValue("@password", Password.Text);
                cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@email", emailAddress.Text);
                cmd.Parameters.AddWithValue("@image", Image1.ImageUrl);

                cmd.ExecuteNonQuery();
                Response.Redirect("Loginpage.aspx");
                Response.Write("Registration is successfull");
            }


            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex);
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
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
                        Image1.ImageUrl = "~/images/" + FileUpload1.FileName;
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
            }
        }
    }

    
   

}
