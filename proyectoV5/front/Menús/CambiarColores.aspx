<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CambiarColores.aspx.cs" Inherits="front_CambiarColores" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="ruta_al_css/estilos.css" />
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            // Función para actualizar la vista previa de colores
            function actualizarVistaPrevia() {
                var colorFondo = $("#colorFondo").val();
                var colorTexto = $("#colorTexto").val();
                var colorEnlace = $("#colorEnlace").val();

                // Aplicar estilos a la vista previa
                $("#vistaPrevia").css({
                    'background-color': colorFondo,
                    'color': colorTexto
                });
                $("#vistaPrevia a").css('color', colorEnlace);
            }

            // Eventos de cambio para los campos de color
            $("#colorFondo, #colorTexto, #colorEnlace").change(function () {
                actualizarVistaPrevia();
            });

            // Inicializar la vista previa
            actualizarVistaPrevia();
        });
    </script>
    <title>Cambiar Colores</title>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Estructura de tu página CambiarColores.aspx -->

        <div id="header">
            <h1>Cambiar Colores</h1>
            <p>Personaliza los colores del menú</p>
        </div>

        <div id="content">
            <!-- Contenido de la página -->

            <!-- Campos para seleccionar colores -->
            <label for="colorFondo">Color de Fondo:</label>
            <input type="color" id="colorFondo" />

            <label for="colorTexto">Color de Texto:</label>
            <input type="color" id="colorTexto" />

            <label for="colorEnlace">Color de Enlace:</label>
            <input type="color" id="colorEnlace" />

            <!-- Vista previa de los colores -->
            <div id="vistaPrevia">
                <p>Vista Previa del Menú</p>
                <a href="#">Enlace de Prueba</a>
            </div>
        </div>

        <div id="footer">
            <!-- Pie de página -->
        </div>
    </form>
</body>
</html>

