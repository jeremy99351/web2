<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loging.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link rel="stylesheet" href="loading.css">

    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div class="wrapper">

            <h1>Iniciar seccion</h1>
            <div class="input-box">
                <asp:TextBox ID="txtUser" runat="server" placeholder="cedula" ></asp:TextBox>
                <i class='bx bxs-user'></i>
            </div>
            <div class="input-box">

                <asp:TextBox ID="txtPassword"  type="password" placeholder="codigo" runat="server"></asp:TextBox>
                <i class='bx bxs-lock-alt'></i>
            </div>
            
            <asp:Button ID="btn" class="btn" runat="server" Text="Ingresar" OnClick="btn_Click" />

        </div>

        <div>
            <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
