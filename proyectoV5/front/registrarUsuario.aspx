<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrarUsuario.aspx.cs" Inherits="front_registrarUsuario" %>

<!DOCTYPE html>

<html >
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link rel="stylesheet" href="../loading.css" >
    <link rel="stylesheet" href="../css/listaAdmi.css" >
    <link rel="stylesheet" href="../css/nav.css" >

    <title>Registrar usuarios</title>
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
                    <asp:Label ID="lblCedula" runat="server" Text="Cedula"></asp:Label>
                    <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>
                <br />
                <div class="input-box">
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>
                <br />

                <div class="input-box">
                    <asp:Label ID="lblAp1" runat="server" Text="Primer Apellido"></asp:Label>
                    <asp:TextBox ID="txtAp1" runat="server"></asp:TextBox>
                </div>
                <br />

                <div class="input-box">
                    <asp:Label ID="lblAp2" runat="server" Text="Segundo Apellido"></asp:Label>
                    <asp:TextBox ID="txtAp2" runat="server"></asp:TextBox>
                </div>
                <br />

                <div class="input-box">
                    <asp:Label ID="lblCod_Usuario" runat="server" Text="Tipo de Usuario"></asp:Label>
                    <asp:DropDownList ID="ddlUsuario" runat="server"></asp:DropDownList>

                </div>
                <br />



                <div class="input-box">
                    <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
                    <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                </div>
            </form>
            <br />

            <asp:Button ID="btn" class="btn" runat="server" Text="Registrar" OnClick="btn_Click" />
        </div>

    </form>

</body>
</html>
