using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net.Mail;
using System.Net;
public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsValid)
            {
                var fromAddress = new MailAddress("onlineexamsystem2018@gmail.com", "Online Exam System Contact Form Mail");
                var toAddress = new MailAddress("onlineexamsystem2018@gmail.com", "To Somebody");
                const string fromPassword = "onlineExamSystem2018";
                string subject = txtSubject.Text;
                string body = "<b>Име: </b>" + txtName.Text + "<br/>"
                    + "<b>Имейл: </b>" + txtEmail.Text + "<br/>"
                    + "<b>Коментар: </b>" + txtComment.Text;

                var smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
                };
                using (var message = new MailMessage(fromAddress, toAddress)
                {
                    Subject = subject,
                    Body = body,
                    IsBodyHtml = true
                })
                {
                    smtp.Send(message);
                }
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = "Благодарим Ви, че се свързахте с нас!";
            }
        }
        catch (Exception)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Имаше проблем с изпращането...";
        }
    }
}