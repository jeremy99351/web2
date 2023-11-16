<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormularioSoporte.aspx.cs" Inherits="front_FormularioSoporte" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de Soporte</title>
    <link rel="stylesheet" href="../../css/Formulario.css">
</head>S

<body>
    <h1>Formulario de Soporte</h1>

    <form >
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required>
        
        <label for="email">Correo Electrónico:</label>
        <input type="email" id="email" name="email" required>
        
        <label for="asunto">Asunto:</label>
        <input type="text" id="asunto" name="asunto" required>
        
        <label for="mensaje">Mensaje:</label>
        <textarea id="mensaje" name="mensaje" rows="4" required></textarea>
        
        <input id="Button1" type="button" value="button" onclick="enviar"/>
      
    </form>
</body>