<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrarUsencia.aspx.cs" Inherits="front_registrarUsencia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link rel="stylesheet" href="../loading.css" />
    <link rel="stylesheet" href="../css/listaAdmi.css" />
    <link rel="stylesheet" href="../css/nav.css" />

    <title>registro de aucenia</title>
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

                <h1>Registrar Aucencias</h1>

                <div class="input-box">
                    <asp:Label ID="lblEstudiante" runat="server" Text="Estudiante"></asp:Label>
                    <asp:TextBox ID="txtEstudiante" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>


                <div class="input-box">
                    <asp:Label ID="lblCantidad" runat="server" Text="Cnatidad de auncencia"></asp:Label>
                    <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>


                <div class="input-box">
                    <asp:Label ID="lblMateria" runat="server" Text="Materia"></asp:Label>
                    <asp:TextBox ID="txtMateria" runat="server"></asp:TextBox>
                    <i class='bx bxs-user'></i>
                </div>


                <div class="input-box">

                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>

                    <i class='bx bxs-user'></i>
                </div>





                <asp:Button ID="btn_registrar" class="btn" runat="server" Text="Registrar" OnClick="btn_registrar_Click" />

            </form>

        </div>



    </form>
</body>
</html>
