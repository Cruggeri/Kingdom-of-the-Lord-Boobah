using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
//using System.Net.NetworkCredential; 

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
       // if (TopicDDL.AutoPostBack && TopicDDL.AutoP = "Other")

    }
    
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        
         try
        {
            MailMessage mail = new MailMessage();
            mail.From = new System.Net.Mail.MailAddress("archeotech.app@gmail.com");

            SmtpClient smtp = new SmtpClient();
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential("archeotech.app@gmail.com", "ArcheoSnd1");
            smtp.Host = "smtp.gmail.com";

            mail.To.Add(new MailAddress("archeotech.mail@gmail.com"));

            mail.IsBodyHtml = true;
            string st = "test";

            mail.Body = "Topic: " + contactDDL.Text + "<br/>" + MessageTextBox.Text;
            smtp.Send(mail);
            MessageTextBox.Text = "What seems to be the issue?";
            Label1.Text = "Your message has been Sent";

        }
        catch(Exception promotions)
         {
             Console.WriteLine("Your Message failed to send.  Try again.");
         }
    }
    protected void contactDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (contactDDL.SelectedValue == "Other")
        {
            TopicTextBox.Visible = true;
        }
        else
        {
            TopicTextBox.Visible = false;
        }
    }
}