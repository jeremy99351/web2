﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrarUsencia.aspx.cs" Inherits="front_registrarUsencia" %>

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

    <link rel="stylesheet" href="../loading.css" />
    <link rel="stylesheet" href="../css/listaAdmi.css" />
    <link rel="stylesheet" href="../css/nav.css" />


    <title>Registro de aucenia</title>
</head>
<body>
    <form id="form1" runat="server">


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

        <asp:GridView ID="gdvEstudiante" runat="server" AutoGenerateColumns="False"
            DataKeyNames="cedula_estudiante" OnSelectedIndexChanged="gdvEstudiante_SelectedIndexChanged">
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

                <asp:TemplateField HeaderText="Seccion">
                    <ItemTemplate>
                        <asp:Label ID="lblSeccion" runat="server" Text='<%# Eval("cod_seccion") %>'></asp:Label>
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox ID="txtCodS" runat="server" Text='<%# Eval("cod_seccion") %>'></asp:TextBox>
                    </EditItemTemplate>

                </asp:TemplateField>

                <asp:TemplateField HeaderText="Tipo Aucencia">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="P">PRESENTE</asp:ListItem>
                            <asp:ListItem Value="AU">AUCENTE</asp:ListItem>
                            <asp:ListItem Value="AUJ">AUCENTE JUSTIFICADO</asp:ListItem>
                            <asp:ListItem Value="T">TARDIA</asp:ListItem>
                            <asp:ListItem Value="TJ">TARDIA JUSTIFICADA</asp:ListItem>
                            <asp:ListItem Value="EX">EXCAPADO</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>

                    <EditItemTemplate>
                        
                    </EditItemTemplate>

                </asp:TemplateField>

                <asp:CommandField HeaderText="Operaciones" ShowHeader="True" ButtonType="Button" NewText="Guardar" EditText="GUARDAR" ShowCancelButton="False" ShowEditButton="True" />
            </Columns>
        </asp:GridView>

        
       
        <%--    <asp:GridView ID="gdvAucencia" runat="server" AutoGenerateColumns="False"
           OnRowEditing="ModificarFila" OnRowUpdating="ActualizarFila" OnRowCancelingEdit="CancelarEdicion" 
            DataKeyNames="cedula_estudiante" >

            <Columns>
                <asp:TemplateField HeaderText="Identificacion">
                    <ItemTemplate>
                        <asp:Label ID="lbl" runat="server" Text='<%# Eval("cedula_estudiante") %>'></asp:Label>
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

                <asp:CommandField HeaderText="Operaciones" ShowHeader="True" ShowEditButton="True" ButtonType="Button" NewText="GUARDAR" ShowInsertButton="True" />
            </Columns>
        </asp:GridView>--%>
    </form>
</body>
</html>
