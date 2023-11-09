<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PreguntasFrecuentes.aspx.cs" Inherits="front_PreguntasFrecuentes" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../css/Preguntas.css"
    <title>Preguntas Frecuentes</title>
</head>
<body>
    <header>
        <h1>Preguntas Frecuentes</h1>
    </header>
    <div class="container">
        <div class="faq-item">
            <div class="faq-question">¿Qué es HTML?</div>
            <div class="faq-answer">
                HTML (Lenguaje de Marcado de Hipertexto) es el estándar utilizado para crear páginas web. Se utiliza para estructurar el contenido de una página web utilizando una variedad de elementos y etiquetas.
            </div>
        </div>
        <div class="faq-item">
            <div class="faq-question">¿Qué es CSS?</div>
            <div class="faq-answer">
                CSS (Hojas de Estilo en Cascada) se utiliza para controlar la presentación y el diseño de una página web. Permite definir el aspecto de los elementos HTML, como colores, fuentes, márgenes y más.
            </div>
        </div>
        <div class="faq-item">
            <div class="faq-question">¿Cómo se crea una página web?</div>
            <div class="faq-answer">
                Para crear una página web, necesitas un editor de código, como Visual Studio Code. Luego, escribe el código HTML y CSS necesario para definir la estructura y el diseño de la página.
            </div>
        </div>
    </div>

    <script>
        const faqQuestions = document.querySelectorAll('.faq-question');
        
        faqQuestions.forEach(question => {
            question.addEventListener('click', () => {
                question.classList.toggle('open');
            });
        });
    </script>
</body>
</html>
