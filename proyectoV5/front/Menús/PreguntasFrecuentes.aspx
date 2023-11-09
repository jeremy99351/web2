<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PreguntasFrecuentes.aspx.cs" Inherits="front_PreguntasFrecuentes" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../css/Preguntas.css"
 
</head>
   
<body>
    <header>
        <h1>Preguntas Frecuentes - LaSu</h1>
    </header>
    <div class="container">
        <div class="faq-item">
           <div class="faq-question" onclick="toggleAnswer('answer1')">1. ¿Cómo puedo registrar mi cuenta en LaSu?</div>
            <div class="faq-answer" id="answer1">
                Puedes registrarte en LaSu como profesor siguiendo estos pasos: [Descripción detallada de los pasos para registrarse].
            </div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer('answer2')">2. ¿Cómo tomo la asistencia de mis alumnos con LaSu?</div>
            <div class="faq-answer" id="answer2">
                Para tomar la asistencia de tus alumnos con LaSu, sigue estos pasos: [Instrucciones detalladas para tomar asistencia].
            </div>
        </div>
        <div class="faq-item">
    <div class="faq-question" onclick="toggleAnswer('answer3')">3. ¿Puedo personalizar mi lista de alumnos en LaSu?</div>
    <div class="faq-answer" id="answer3">
        Sí, puedes personalizar tu lista de alumnos. Aquí te mostramos cómo: [Instrucciones para personalizar la lista de alumnos].
    </div>
</div>
        </div>
        <!-- Agregar -->
    
    <script>
    function toggleAnswer(id) {
        var answer = document.getElementById(id);
        answer.style.display = answer.style.display === 'block' ? 'none' : 'block';
    }
</script>
   </body>
    
  
</html>

