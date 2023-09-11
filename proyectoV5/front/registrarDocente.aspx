﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrarDocente.aspx.cs" Inherits="front_registrarDocente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link rel="stylesheet" href="../loading.css" />
    <link rel="stylesheet" href="../css/listaAdmi.css" />
    <link rel="stylesheet" href="../css/nav.css" />
    <title></title>
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

                <li><a href="registrarSeccion.aspx">Crear Grupos</a>

                </li>


                <li><a>Ver Listas</a>
                    <ul>
                        <li><a href="listarSeccion.aspx">Ver Grupos</a></li>
                        <li><a href="listarEstudiantes.aspx">Ver Estudiantes</a></li>
                        <li><a href="listaDocente.aspx">Ver Docentes</a></li>
                        <li><a href="listaUsuarios.aspx">Ver Usuarios Especiales</a></li>
                    </ul>
                </li>

                <li><a>Configuraciones</a></li>
            </ul>
        </div>

        <div class="wrapper">
            <form action="">

                <h1>Registrar Docentes</h1>

                <div class="input-box">
                    <asp:Label ID="lblcedula" runat="server" Text="Cedula del docente"></asp:Label>
                    <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>


                <div class="input-box">
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre del deocente"></asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>


                <div class="input-box">
                    <asp:Label ID="lblAp1" runat="server" Text="Primer apellido"></asp:Label>
                    <asp:TextBox ID="txtAp1" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>


                <div class="input-box">
                    <asp:Label ID="lblAp2" runat="server" Text="Segundo Apellido"></asp:Label>
                    <asp:TextBox ID="txtAp2" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>


                <div class="input-box">

                    <asp:Label ID="lblCodigoMateria" runat="server" Text="Materia que iparte"></asp:Label>
                    <asp:DropDownList class="op" ID="ddlMateria" runat="server"></asp:DropDownList>
                    <i class='bx bxs-user'></i>
                </div>


                <div class="input-box">
                    <asp:Label ID="lblCodigoUsuario" runat="server" Text="Tipo de Usuario"></asp:Label>
                    <asp:DropDownList ID="ddlUsuario" runat="server"></asp:DropDownList>
                    <i class='bx bxs-user'></i>
                </div>



                <div class="input-box">
                    <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
                    <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                </div>
                <br />

                <asp:Button ID="btn_registrar" class="btn" runat="server" Text="Registrar" OnClick="btn_registrar_Click" />

            </form>

        </div>

    </form>
</body>
</html>
