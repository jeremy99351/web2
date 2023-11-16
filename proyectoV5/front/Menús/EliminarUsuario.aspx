<%@ Page Language="C#" AutoEventWireup="true" CodeFile="eliminarUsuario.aspx.cs" Inherits="front_eliminarUsuario" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   
   <link rel="stylesheet" href="../css/EliminarU.css">
    <title>Eliminar Usuario</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <ul class="nav">
                <li><a>Eliminar Usuario</a></li>
            </ul>
        </div>

        <div class="contenedor_filtraciones">
            <div class="contenedor_buscar">
                <label for="txt_filtrar">Buscar</label>
                <asp:TextBox ID="txtFiltro" runat="server"></asp:TextBox>
                <asp:Button class="btn_buscar" ID="btnBuscar" runat="server" Text="BUSCAR" OnClick="btnBuscar_Click" />
            </div>
        </div>

        <asp:GridView ID="gdvUsuarios" runat="server" AutoGenerateColumns="False" CssClass="table">
            <Columns>
                
                <asp:TemplateField HeaderText="Identificacion">
                    <ItemTemplate>
                        <asp:Label ID="lblCedula" runat="server" Text='<%# Eval("cedula_mantenimiento") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nombre">
                    <ItemTemplate>
                        <asp:Label ID="lblNombre" runat="server" Text='<%# Eval("nombre") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Apellidos">
                    <ItemTemplate>
                        <asp:Label ID="lblApellidos" runat="server" Text='<%# Eval("primer_apellido") + " " + Eval("segundo_apellido") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Correo">
                    <ItemTemplate>
                        <asp:Label ID="lblCorreo" runat="server" Text='<%# Eval("correo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField HeaderText="Accion" ShowHeader="True" ShowDeleteButton="True" ButtonType="Button" />
            </Columns>
        </asp:GridView>

    </form>
</body>
</html>
