<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrarHorario.aspx.cs" Inherits="front_docentes_registrarHorario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

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
    <link rel="stylesheet" href="../css/nav.css"/>
    <link rel="stylesheet" href="../loading.css"/>
    <link rel="stylesheet" href="../css/listaAdmi.css"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar_lateral">
        <a href="index.html"><img src="img/liceo_tambor_escudo.jpg" alt="Logo Gemas"></a>

        <div id="navbar_lateral_inicio" >
            <a href="index.html">INICIO</a>
        </div>
        <!-- lista de alumnos es la lista global, se incluyen todos los grupos -->
        <div id="navbar_lateral_inicio" > <a href="listaAdmi.html">Top ausencias</a></div>
        <div id="navbar_lateral_inicio" > <a href="lista_grupo.html">Lista de Grupos </a></div>
        <div id="navbar_lateral_inicio" ><a href="registrar_ausccencia.html">Registrar Aucencia</a></div>
        <div id="navbar_lateral_inicio" > <a href="aucencia_por grupo.html"> Aucencia por
                Grupo</a></div>
        <div id="navbar_lateral_inicio"><a href="mi_horario.html">Mi Horario</a></div>
        <div id="navbar_lateral_inicio"><a href="verHorario.html">Ver horario</a></div>


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
                                    <td>7:00-7:40</td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                </tr>
                                <tr>
                                    <td>7:40 - 8:20</td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                </tr>
                                <tr><td colspan="6">8:00 - 8:25 RECREO</td></tr>
                                <tr>
                                    <td>8:25 - 9:05</td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                </tr>
                                <tr>
                                    <td>9:05 - 9:45</td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                </tr>
                                <tr> <td colspan="6">9:45 - 9:55 RECREO</td></tr>
                                <tr>
                                    <td>9:55 - 10:35</td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                </tr>
                                <tr>
                                    <td>10:35 - 11:20</td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                </tr>
                                <tr><td colspan="6">11:20 - 12-00 ALMUERZO </td> </tr>
                                <tr>
                                    <td>12:00 12:40</td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                </tr>
                                <tr>
                                    <td>12:40 - 1:20</td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                </tr>
                                <tr><td colspan="6">1:20 - 1:25 RECREO</td> </tr>
                                <tr>
                                    <td>1:25 - 2:05</td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                </tr>
                                <tr>
                                    <td>2:05 - 2:45</td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                </tr>
                                <tr><td colspan="6">2:45 - 2:55 RECREO</td> </tr>
                                <tr>
                                    <td>2:55 - 3:35</td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                </tr>
                                <tr>
                                    <td>3:35 - 4:05</td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                </tr>
                                <tr><td colspan="6">4:05 - 4:15 RECREO</td>
                                </tr>
                                <tr>
                                    <td>4:15 - 4:55</td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
                                    <td><label for="">DATOS</label></td>
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
