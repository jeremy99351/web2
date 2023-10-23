<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrarHorario.aspx.cs" Inherits="front_docentes_registrarHorario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <style type="text/css">
        table {
            font-size: 20px;
            font-weight: bolder;
            padding: 15px;
            width: 70%;
            margin: 0 auto;
            margin-top: 30px;
            background: transparent;
            margin-left: 25%;
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
            }

            table tbody {
                backdrop-filter: brightness(0.6);
                padding: 15px;
                border: 2px solid #000;
                border-top: 2px solid #000;
                width: 4%;
                right: 150px;
                background: transparent;
                /* background: #F2F2F2; */
            }

        h2 {
            position: center;
        }

        .wrapper {
            width: 100%;
        height: 100%;
        background: lightgreen;
        backdrop-filter:brightness(0.5);
        color:white;
        border: none;
        outline: none;
        border: 5px solid rgba(255, 255, 255, .2);
        border-radius: 40px;
        font-size: 16px;
        padding: 20px 45px 20px 20px;
        text-align: center;

            width: 100%;
            height: 45px;
            background-color: lawngreen;
            border: none;
            outline: none;
            border-radius: 40px;
            box-shadow: 0 0 10px rgba(0, 0, 0, .1);
            cursor: pointer;
            font-size: 16px;
            color: #333;
            font-weight: 600;
        }
    </style>

    <link rel="stylesheet" href="../../css/lateral.css" />


    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar_lateral">
            <a href="index.html">
                <img src="../../img/escudo.jfif" alt="liceo_tambor_escudo"></a>

            <div class="navbar_lateral_inicio">
                <a href="index.html">INICIO</a>
            </div>
            <!-- lista de alumnos es la lista global, se incluyen todos los grupos -->
            <div class="navbar_lateral_inicio"><a href="listaAdmi.html">Top ausencias</a></div>
            <div class="navbar_lateral_inicio"><a href="lista_grupo.html">Lista de Grupos </a></div>
            <div class="navbar_lateral_inicio"><a href="registrar_ausccencia.html">Registrar Aucencia</a></div>
            <div class="navbar_lateral_inicio">
                <a href="aucencia_por grupo.html">Aucencia por
                Grupo</a>
            </div>
            <div class="navbar_lateral_inicio"><a href="mi_horario.html">Mi Horario</a></div>
            <div class="navbar_lateral_inicio"><a href="verHorario.html">Ver horario</a></div>


        </div>

        <main class="main">
            <div class="slidershow-container">

                <div id="divisor"></div>
                <!--primer contenedor-->
                <div class="mySlides fade">
                    <div class="numbertext"></div>
                    <div class="contenedor">
                        <div class="descripcion_contenedor">
                            <p></p>
                        </div>

                        <div class="contenido">

                            <div>

                                <table id="tbl_utiles">
                                    <tr>
                                        <th>Hora     </th>
                                        <th>Lunes</th>
                                        <th>Martes</th>
                                        <th>Miercoles</th>
                                        <th>Jueves</th>
                                        <th>Vierens</th>
                                    </tr>
                                    <tr>
                                        
                                        <td><asp:Label ID="lbl1" runat="server" Text="Label">7:00-7:40</asp:Label></td>

                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList1" runat="server"></asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList2" runat="server"></asp:DropDownList>

                                        </td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList3" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList4" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList5" runat="server"></asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td><asp:Label ID="Label2" runat="server" Text="Label">7:40-8:20</asp:Label></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList6" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList7" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList8" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList9" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList10" runat="server"></asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td colspan="6">
                                            <h2>8:00 - 8:25 RECREO</h2>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><asp:Label ID="Label3" runat="server" Text="Label">8:25-9:05</asp:Label></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList11" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList12" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList13" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList14" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList15" runat="server"></asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td><asp:Label ID="Label4" runat="server" Text="Label">9:05-9:45</asp:Label></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList16" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList17" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList18" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList19" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList20" runat="server"></asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td colspan="6">9:45 - 9:55 RECREO</td>
                                    </tr>
                                    <tr>
                                        <td><asp:Label ID="Label5" runat="server" Text="Label">9:55-10:35</asp:Label></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList21" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList22" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList23" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList24" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList25" runat="server"></asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td><asp:Label ID="Label6" runat="server" Text="Label">10:35-11:20</asp:Label></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList26" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList27" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList28" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList29" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList30" runat="server"></asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td colspan="6">11:20 - 12-00 ALMUERZO </td>
                                    </tr>
                                    <tr>
                                        <td><asp:Label ID="Label7" runat="server" Text="Label">12:00-12:40</asp:Label></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList31" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList32" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList33" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList34" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList35" runat="server"></asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td><asp:Label ID="Label8" runat="server" Text="Label">12:40-1:20</asp:Label></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList36" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList37" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList38" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList39" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList40" runat="server"></asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td colspan="6">1:20 - 1:25 RECREO</td>
                                    </tr>
                                    <tr>
                                        <td><asp:Label ID="Label9" runat="server" Text="Label">1:25-2:05</asp:Label></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList41" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList42" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList43" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList44" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList45" runat="server"></asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td><asp:Label ID="Label10" runat="server" Text="Label">2:05-2:45</asp:Label></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList46" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList47" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList48" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList49" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList50" runat="server"></asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td colspan="6">2:45 - 2:55 RECREO</td>
                                    </tr>
                                    <tr>
                                        <td><asp:Label ID="Label11" runat="server" Text="Label">2:55-3:35</asp:Label></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList51" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList52" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList53" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList54" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList55" runat="server"></asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td><asp:Label ID="Label12" runat="server" Text="Label">3:35-4:05</asp:Label></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList56" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList57" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList58" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList59" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList60" runat="server"></asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td colspan="6">4:05 - 4:15 RECREO</td>
                                    </tr>
                                    <tr>
                                        <td><asp:Label ID="Label13" runat="server" Text="Label">4:15-4:55</asp:Label></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList61" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList62" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList63" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList64" runat="server"></asp:DropDownList></td>
                                        <td>
                                            <asp:DropDownList class="op" ID="DropDownList65" runat="server"></asp:DropDownList></td>
                                    </tr>

                                    <tr>
                                        <td colspan="6">
                                            <div class="wrapper">

                                                <asp:Button ID="btn" class="btn" runat="server" Text="Button" OnClick="btn_Click" />

                                            </div>
                                        </td>
                                    </tr>


                                </table>


                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </main>
    </form>
</body>
</html>
