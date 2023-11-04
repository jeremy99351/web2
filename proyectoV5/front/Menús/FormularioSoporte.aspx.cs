using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class front_FormularioSoporte : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        string destinatario = "hidalgoalvaroe@gmail.com"; // Dirección de correo de destino

        // Recopila los datos del formulario
        string nombre = Request.Form["nombre"];
        string email = Request.Form["hidalgoalvaroe@gmail.com"];
        string asunto = Request.Form["asunto"];
        string mensaje = Request.Form["mensaje"];

        // Configura el servidor SMTP y las credenciales
        string smtpServer = "smtp.tudominio.com"; // Reemplaza con el servidor SMTP adecuado
        string smtpUsername = "tu_usuario"; // Reemplaza con  nombre de usuario SMTP
        string smtpPassword = "tu_contraseña"; // Reemplaza con  contraseña SMTP

        // Configura el cliente SMTP
        SmtpClient smtpClient = new SmtpClient(smtpServer);
        smtpClient.Port = 25; // Puerto SMTP
        smtpClient.Credentials = new NetworkCredential(smtpUsername, smtpPassword);
        smtpClient.EnableSsl = true; // Habilitar SSL si es necesario

        // Crea el mensaje de correo electrónico
        MailMessage mailMessage = new MailMessage();
        mailMessage.From = new MailAddress("hidalgoalvaroe@gmail.com");
        mailMessage.To.Add(destinatario);
        mailMessage.Subject = asunto;
        mailMessage.Body = "Nombre: " + nombre + "\nCorreo Electrónico: " + email + "\nMensaje:\n" + mensaje;

        try
        {
            // Envía el correo
            smtpClient.Send(mailMessage);
            Response.Write("Mensaje enviado correctamente. Nos pondremos en contacto contigo pronto.");
        }
        catch (Exception ex)
        {
            Response.Write("Error al enviar el mensaje: " + ex.Message);
        }
    }
}