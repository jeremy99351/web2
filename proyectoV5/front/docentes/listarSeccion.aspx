<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listarSeccion.aspx.cs" Inherits="front_listarSeccion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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

    <link rel="stylesheet" href="../../css/nav.css" />
    <link rel="stylesheet" href="../../loading.css"/>
    <link rel="stylesheet" href="../../css/listaAdmi.css"/>


    <title>Lista General de Grupos</title>
</head>
<body>
    <form id="form1" runat="server">

         <div id="header">
            <ul class="nav">

                <li><a href="MenuPrincipal.aspx" >Menu</a></li>
                <li><a>Ver Listas</a>
                    <ul>
                        <li><a href="listarSeccion.aspx">Ver Grupos</a></li>
                        <li><a href="listarEstudiantes.aspx">Ver Estudiantes</a></li>
                        
                    </ul>
                </li>
                <li><a>Aucencias</a>
                    <ul>
                        <li><a href="registrarUsencia.aspx">Registrar Ausencia</a></li>
                        <li><a href="mostrar_aucencias.aspx">Ver aucencias</a></li>
                    </ul>
                </li>

                
            </ul>
        </div>

        <div class="contenedor_filtraciones">
      
            <div class="contenedor_buscar">
                <label for="txt_filtrar">Buscar</label>
               <%-- <input type="text" ID="txt_filtrar" autofocus="autofocus" />--%>
                <asp:TextBox ID="txtfiltro" runat="server"></asp:TextBox>
                <br />

                <asp:Button class="btn_buscar" ID="btnBuscar" runat="server" Text="BUSCAR" OnClick="btnBuscar_Click" />
            
            </div>
            <br />
        </div>

        <asp:GridView ID="gdvSeccion" runat="server" AutoGenerateColumns="False" OnRowEditing="ModificarFila" OnRowUpdating="ActualizarFila" OnRowCancelingEdit="CancelarEdicion" DataKeyNames="cod_seccion">
            <Columns>
                <asp:TemplateField HeaderText="Grupo">
                    <ItemTemplate>
                        <asp:Label ID="lblGrupo" runat="server" Text='<%# Eval("cod_seccion") %>'></asp:Label>
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="Docente">
                    <ItemTemplate>
                        <asp:Label ID="lblDocente" runat="server" Text='<%# Eval("doce_guia") %>'></asp:Label>
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox ID="txtDocente" runat="server" Text='<%# Eval("doce_guia") %>'></asp:TextBox>
                    </EditItemTemplate>

                </asp:TemplateField>

                <asp:CommandField HeaderText="Operaciones" ShowHeader="True" ShowEditButton="True" ButtonType="Button" />
            </Columns>
        </asp:GridView>

    </form>
</body>
</html>
