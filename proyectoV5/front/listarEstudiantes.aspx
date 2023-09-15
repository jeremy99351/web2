<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listarEstudiantes.aspx.cs" Inherits="front_listarEstudiantes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <style type="text/css">
        table {
            margin-top: 25%;
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

    <link rel="stylesheet" href="../css/nav.css">
    <link rel="stylesheet" href="../loading.css">
    <link rel="stylesheet" href="../css/listaAdmi.css" />

    <title>Lista Gneral de Estudiantes</title>

</head>
<body>
    <form id="form1" runat="server">

        <div class="contenedor_filtraciones">
            <div id="header">
                <ul class="nav">

                    <li><a>Registrar Usuarios</a>
                        <ul>
                            <li><a href="registrarUsuario.aspx">Usuario Especial</a></li>
                            <li><a href="registrarEstudiante.aspx">Estudiante</a></li>
                            <li><a href="registrarDocente.aspx">Docente</a></li>

                        </ul>
                    </li>

                   <li><a href="registrarSeccion.aspx">Crear Grupos</a> </li>
                <li><a href="registrarMaterias.aspx">Registrar materias</a> </li>


                <li><a>Ver Listas</a>
                    <ul>
                        <li><a href="listarSeccion.aspx">Ver Grupos</a></li>
                        <li><a href="listarEstudiantes.aspx">Ver Estudiantes</a></li>
                        <li><a href="listaDocente.aspx">Ver Docentes</a></li>
                        <li><a href="listaUsuarios.aspx">Ver Usuarios Especiales</a></li>
                        <li><a href="listarMaterias.aspx">Ver lista de materia</a></li>
                    </ul>
                    </li>

                    <li><a>Configuraciones</a></li>
                </ul>
            </div>



            <div class="contenedor_buscar">
                <label for="txt_filtrar">Buscar</label>
                <input type="text" id="txt_filtrar" onfocus />
                <br />
                <button class="btn_buscar" id="btnBuscar">BUSCAR</button>

            </div>
            <br />
        </div>

        <asp:GridView ID="gdvUsuarios" runat="server" AutoGenerateColumns="False" OnRowEditing="ModificarFila" OnRowUpdating="ActualizarFila" OnRowCancelingEdit="CancelarEdicion" DataKeyNames="cedula_estudiante">
            <Columns>
                <asp:TemplateField HeaderText="Identificacion">
                    <ItemTemplate>
                        <asp:Label ID="lblCorreo" runat="server" Text='<%# Eval("cedula_estudiante") %>'></asp:Label>
                    </ItemTemplate>

                </asp:TemplateField>

                <asp:TemplateField HeaderText="Nombre">
                    <ItemTemplate>
                        <asp:Label ID="lblContrasennia" runat="server" Text='<%# Eval("nombre") %>'></asp:Label>
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox ID="txtNombre" runat="server" Text='<%# Eval("nombre") %>'></asp:TextBox>
                    </EditItemTemplate>

                </asp:TemplateField>

                <asp:TemplateField HeaderText="Apellidos">

                    <ItemTemplate>
                        <asp:Label ID="lblNombre" runat="server" Text='<%# Eval("primer_apellido") %>'></asp:Label>
                        <asp:Label ID="lblApeliidos" runat="server" Text='<%# Eval("segundo_apellido") %>'></asp:Label>

                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox ID="txtAp1" runat="server" Text='<%# Eval("primer_apellido") %>'></asp:TextBox>
                        <asp:TextBox ID="txtAp2" runat="server" Text='<%#Eval("segundo_apellido") %>'></asp:TextBox>

                    </EditItemTemplate>

                </asp:TemplateField>

                <asp:TemplateField HeaderText="Codigo">
                    <ItemTemplate>
                        <asp:Label ID="lblCedula" runat="server" Text='<%# Eval("cod_usuario") %>'></asp:Label>
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox ID="txtCod" runat="server" Text='<%# Eval("cod_usuario") %>'></asp:TextBox>
                    </EditItemTemplate>

                </asp:TemplateField>

                <asp:TemplateField HeaderText="Seccion">
                    <ItemTemplate>
                        <asp:Label ID="lblSeccion" runat="server" Text='<%# Eval("cod_seccion") %>'></asp:Label>
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox ID="txtCodS" runat="server" Text='<%# Eval("cod_seccion") %>'></asp:TextBox>
                    </EditItemTemplate>

                </asp:TemplateField>

                <asp:TemplateField HeaderText="Correo">
                    <ItemTemplate>
                        <asp:Label ID="lblCor" runat="server" Text='<%# Eval("correo") %>'></asp:Label>
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox ID="txtCorreo" runat="server" Text='<%# Eval("correo") %>'></asp:TextBox>
                    </EditItemTemplate>

                </asp:TemplateField>

                <asp:CommandField HeaderText="Operaciones" ShowHeader="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>

    </form>
</body>
</html>
