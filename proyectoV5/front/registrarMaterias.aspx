<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrarMaterias.aspx.cs" Inherits="front_registrarMaterias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link rel="stylesheet" href="../loading.css" />
    <link rel="stylesheet" href="../css/listaAdmi.css" />
    <link rel="stylesheet" href="../css/nav.css" />
    <title>registro de materias</title>
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

        <div class="wrapper">
            <form action="">

                <h1>Registrar Usuarios</h1>

                <div class="input-box">
                    <asp:Label ID="lblCodigo" runat="server" Text="Codigo de la materia"></asp:Label>
                    <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>
                <br />

                <div class="input-box">
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre de la materia"></asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>
                <br />

                <div class="input-box">
                    <asp:Label ID="lblNivel" runat="server" Text="Nivel para la materia"></asp:Label>
                    <asp:TextBox ID="txtNivel" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>
                <br />

                <asp:Button ID="btn_registrar" class="btn" runat="server" Text="Registrar" OnClick="btn_registrar_Click" />

            </form>

        </div>


    </form>
</body>
</html>
