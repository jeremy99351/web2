<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormularioSoport.aspx.cs" Inherits="front_Menús_FormularioSoport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   
    <title>Formulario de Soporte</title>
    <link rel="stylesheet" href="../../css/Formulario.css"/>

</head>
<body>
    <form id="form1" runat="server">
        <body>
            <h1>Formulario de Soporte</h1>

            <form>
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" required>

                <label for="email">Correo Electrónico:</label>
                <input type="email" id="email" name="email" required>

                <label for="asunto">Asunto:</label>
                <input type="text" id="asunto" name="asunto" required>

                <label for="mensaje">Mensaje:</label>
                <textarea id="mensaje" name="mensaje" rows="4" required></textarea>

                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

            </form>
        </body>
    </form>
</body>
</html>
