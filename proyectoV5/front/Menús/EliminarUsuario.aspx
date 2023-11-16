<%@ Page Language="C#" AutoEventWireup="true" CodeFile="eliminarUsuario.aspx.cs" Inherits="front_eliminarUsuario" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   
    <style type="text/css">
        table {

            backdrop-filter: brightness(0.6);
        }

            table input {
                width: 100%;
                height: 45px;
                background-color: lavender;
                border: none;
                outline: none;
                border-radius: 40px;
                box-shadow: 0 0 10px rgba(0, 0, 0, .1);
                cursor: pointer;
                font-size: 16px;
                color: #333;
                font-weight: 600;
            }

            table tr th {
                padding: 15px;
                border: 2px solid #000;
                border-top: 2px solid #000;
                width: 4%;
                right: 90px;
                background: lightblue;
            }

            table tr td {
                padding: 15px;
                border: 2px solid #000;
                border-top: 2px solid #000;
                width: 4%;
                right: 150px;
                background: transparent;
                color: white;
            }

            table tbody {
                margin-top: 15%;
                padding: 15px;
                border: 2px solid #000;
                border-top: 2px solid #000;
                width: 4%;
                right: 150px;
                background: transparent;
                /* background: #F2F2F2; */
            }
    </style>
   <link rel="stylesheet" href="../../css/EliminarU.css">
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
