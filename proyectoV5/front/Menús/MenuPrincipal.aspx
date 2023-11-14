<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MenuPrincipal.aspx.cs" Inherits="front_Menús_MenuPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
        
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../../css/MenuPrincipal.css" />

    <title>Menú</title>

    <div id="header">
        <h1 id="Titulo">Lasu</h1>
        <div id="user-menu">
            <div id="user-avatar">
                <!-- Agrega la imagen del avatar aquí -->
                <img src="SpS.jpg" alt="Avatar del usuario" />
            </div>
            <div id="user-dropdown">
                <span>Alvaro Hidalgo</span>
                <ul>
                    <li><a href="#">Perfil</a></li>
                    <li><a href="#">Cambiar Cuenta</a></li>
                    <li><a href="#">Cerrar Sesión</a></li>
                </ul>
            </div>
        </div>
    </div>

</head>


<body>
    <header>
        <nav>
            <ul class="menu-horizontal">

                <li>
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M2.25 12l8.954-8.955c.44-.439 1.152-.439 1.591 0L21.75 12M4.5 9.75v10.125c0 .621.504 1.125 1.125 1.125H9.75v-4.875c0-.621.504-1.125 1.125-1.125h2.25c.621 0 1.125.504 1.125 1.125V21h4.125c.621 0 1.125-.504 1.125-1.125V9.75M8.25 21h8.25" />
                    </svg>
                    <a href="">Inicio</a></li>

                <li>
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 6A2.25 2.25 0 016 3.75h2.25A2.25 2.25 0 0110.5 6v2.25a2.25 2.25 0 01-2.25 2.25H6a2.25 2.25 0 01-2.25-2.25V6zM3.75 15.75A2.25 2.25 0 016 13.5h2.25a2.25 2.25 0 012.25 2.25V18a2.25 2.25 0 01-2.25 2.25H6A2.25 2.25 0 013.75 18v-2.25zM13.5 6a2.25 2.25 0 012.25-2.25H18A2.25 2.25 0 0120.25 6v2.25A2.25 2.25 0 0118 10.5h-2.25a2.25 2.25 0 01-2.25-2.25V6zM13.5 15.75a2.25 2.25 0 012.25-2.25H18a2.25 2.25 0 012.25 2.25V18A2.25 2.25 0 0118 20.25h-2.25A2.25 2.25 0 0113.5 18v-2.25z" />
                    </svg>
                    <a href="#">Servicio</a>
                    <ul class="menu-vertical">
                        <li><a href="">Grupos</a></li>
                        <li><a href="">lista</a></li>
                        <li><a href="">Horario</a></li>
                    </ul>
                </li>

                <li>
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M17.982 18.725A7.488 7.488 0 0012 15.75a7.488 7.488 0 00-5.982 2.975m11.963 0a9 9 0 10-11.963 0m11.963 0A8.966 8.966 0 0112 21a8.966 8.966 0 01-5.982-2.275M15 9.75a3 3 0 11-6 0 3 3 0 016 0z" />
                    </svg>
                    <a href="#">Cuenta</a>
                    <ul class="menu-vertical">
                        <li><a id="Registrar" href="../registrarUsuario.aspx">iIniciar sesion</a></li>
                        <li><a id="Usuario" href="Perfil.aspx">perfil</a></li>
                        <li><a id="Usuarios" href="../listaUsuarios.aspx">Usuarios</li>\
                        <li><a id="Estudiantes" href="../listarEstudiantes.aspx">opcion de jeremy</a></li>
                    </ul>
                </li>
                <li>
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M10.343 3.94c.09-.542.56-.94 1.11-.94h1.093c.55 0 1.02.398 1.11.94l.149.894c.07.424.384.764.78.93.398.164.855.142 1.205-.108l.737-.527a1.125 1.125 0 011.45.12l.773.774c.39.389.44 1.002.12 1.45l-.527.737c-.25.35-.272.806-.107 1.204.165.397.505.71.93.78l.893.15c.543.09.94.56.94 1.109v1.094c0 .55-.397 1.02-.94 1.11l-.893.149c-.425.07-.765.383-.93.78-.165.398-.143.854.107 1.204l.527.738c.32.447.269 1.06-.12 1.45l-.774.773a1.125 1.125 0 01-1.449.12l-.738-.527c-.35-.25-.806-.272-1.203-.107-.397.165-.71.505-.781.929l-.149.894c-.09.542-.56.94-1.11.94h-1.094c-.55 0-1.019-.398-1.11-.94l-.148-.894c-.071-.424-.384-.764-.781-.93-.398-.164-.854-.142-1.204.108l-.738.527c-.447.32-1.06.269-1.45-.12l-.773-.774a1.125 1.125 0 01-.12-1.45l.527-.737c.25-.35.273-.806.108-1.204-.165-.397-.505-.71-.93-.78l-.894-.15c-.542-.09-.94-.56-.94-1.109v-1.094c0-.55.398-1.02.94-1.11l.894-.149c.424-.07.765-.383.93-.78.165-.398.143-.854-.107-1.204l-.527-.738a1.125 1.125 0 01.12-1.45l.773-.773a1.125 1.125 0 011.45-.12l.737.527c.35.25.807.272 1.204.107.397-.165.71-.505.78-.929l.15-.894z" />
                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                    </svg>
                    <a href="#">Configuración</a>
                    <ul class="menu-vertical">
                        <li><a href="">Ajustes</a></li>
                        <li><a href="">idioma</a></li>
                        <li><a href="">configuracion de la cuenta</a></li>
                    </ul>
                </li>
                s


            <li>
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9 5.25h.008v.008H12v-.008z" />
                </svg>
                <a href="">soporte</a>
                <ul class="menu-vertical">
                    <li><a href="">Ayuda</a></li>
                    <li><a href="">contactenos</a></li>
                    <li><a href="">infomacion</a></li>
                    <li><a id="Pregunta" href="PreguntasFrecuentes.aspx">Preguntas frecuentes</a></li>
                    <li><a id="Formulario" href="FormularioSoporte.aspx">Formulario de quejas</a></li>
                </ul>
            </li>


            </ul>

        </nav>
    </header>
    <section class="contenido wrapper">
        <h2>LOREMISUMP</h2>

        <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo at, libero dolorum temporibus ea, cum natus fugiat non illo velit distinctio. Veritatis recusandae expedita quod ipsam perferendis, blanditiis quasi consectetur!
        Ducimus illum dolores nam nostrum at corrupti, optio praesentium, molestias ab magnam delectus suscipit omnis autem excepturi quasi vel eligendi voluptas voluptatibus saepe natus dolore? Natus sit cum culpa ipsa.
        Totam consectetur rem aliquid in autem, iusto, porro mollitia, quae nulla magnam fugit inventore. Sunt, sapiente rem inventore reiciendis nesciunt impedit natus, quos dolore eveniet minima cum veniam, hic accusamus.
        Magni aperiam iure ad consequuntur quas error reiciendis. Eius, iusto. Corrupti, ratione odio? Assumenda maiores exercitationem distinctio commodi fugiat temporibus earum, nobis nulla ducimus minima vel nemo nisi, adipisci incidunt.
        Laborum officiis rerum aliquid dicta libero. Cum quo quisquam reprehenderit voluptate earum fugiat ad soluta, perspiciatis modi suscipit vitae. Quas nostrum, recusandae aperiam ipsum quod repudiandae! Dolores totam animi perspiciatis?
        Sint optio, assumenda quasi quo modi placeat beatae maxime asperiores? Aperiam corporis assumenda illum dolor animi tempora ex obcaecati. Nostrum praesentium laborum quo sequi accusantium quam laboriosam nesciunt perspiciatis possimus.
        Saepe vel veritatis tenetur omnis at non voluptas quisquam blanditiis cumque eligendi, explicabo animi laudantium quia ipsam, veniam provident asperiores temporibus quod repellendus aperiam minus suscipit, sit iure. Neque, magni!
        Eius libero enim iure odio, incidunt nesciunt omnis perferendis hic nam quasi non harum blanditiis ipsam maiores dolorem mollitia quidem maxime dolores beatae, reprehenderit molestiae, officiis eum cum cumque. Cupiditate.
        Fugit, eius assumenda vitae in tempora ab sint possimus ducimus obcaecati iure corporis amet nobis adipisci dolores ea? Dolorem ea possimus at ipsa quae vitae dolores illum atque accusamus enim?
        Officia, ut? Blanditiis, voluptate molestiae facilis non, suscipit voluptatum porro saepe labore alias iste, accusamus corrupti! Eos laudantium ad reprehenderit cum magni culpa ducimus. Autem repellendus sapiente ab quis ut.
        Explicabo animi delectus repudiandae minima, debitis rem numquam modi dolore corrupti? Quas impedit pariatur veniam quo itaque nulla sint voluptatibus molestiae consequuntur nam, enim, velit similique corrupti, in nobis provident.
        Ut veniam quaerat cum expedita debitis distinctio aperiam quis possimus tenetur error quia itaque, nisi illum. Cum itaque, commodi, expedita hic possimus laborum ex labore ipsa debitis quaerat harum ut.
        Totam in exercitationem quo expedita ullam deleniti iusto ipsa consectetur. Obcaecati perspiciatis sequi eveniet assumenda, ipsa fuga, consequuntur molestias et deleniti, eum in ex voluptates cum magni soluta! Repudiandae, nulla.
        Nostrum accusantium tempora ipsam explicabo unde accusamus, quis repellat odio, cumque ducimus sit animi nam, adipisci eos repellendus minima? Doloremque dolore quasi officia asperiores ex sed iusto mollitia voluptates temporibus?
        Velit illo mollitia reprehenderit sequi nostrum voluptatem ducimus doloremque, quisquam saepe consequatur possimus ea, amet doloribus suscipit veritatis atque. Temporibus, pariatur dicta totam consectetur mollitia dolorem? Hic quibusdam perferendis ad!
        Aspernatur alias sed accusamus vitae aliquid ipsam laborum deleniti recusandae porro iusto cupiditate neque ducimus perspiciatis, minima repellendus, ex beatae autem harum unde soluta dolores saepe. Voluptate nihil consectetur beatae!
        Voluptates, voluptate non! Quaerat unde assumenda sint ratione, culpa dolore beatae corrupti ex, minus cum voluptatum accusantium deserunt necessitatibus odio quae, tempora vero a reiciendis adipisci dignissimos. Cumque, aperiam magni?
        Ipsam error fuga excepturi eaque nostrum nihil ex sit nemo vel! Doloribus error nemo rem illum, doloremque commodi non voluptatem nulla sapiente architecto? Nulla ullam quidem quae! Tenetur, ducimus fuga.
        Autem quia optio, enim magni consequuntur iste debitis sequi similique magnam totam quos eius impedit deserunt nam maxime alias vel. Sit molestias cupiditate earum eaque laboriosam nam iusto iste nulla.
        Expedita veniam voluptas cupiditate dolor iusto officia in deleniti iste natus quibusdam? Deserunt necessitatibus, doloribus rem repellat fugit, quidem nobis tenetur nihil non incidunt veritatis dolore? Unde natus ullam pariatur.
        Ha iure mollitia nam est quos! Ratione qui corrupti officia quos ipsum dolorum dolorem similique eum quas consectetur consequatur doloremque culpa, quae alias iste aliquam impedit reiciendis sapiente hic repudiandae!
      
       t
        </p>




    </section>
    <footer>
        <div class="navLeftFooter nav-sprite-v1" id="navFooter">



            <div class="navFooterColSpacerInner navAccessibility"></div>

            <div class="navFooterColSpacerInner navAccessibility"></div>


        </div>

        <div class="navFooterLine navFooterLinkLine navFooterPadItemLine navFooterCopyright">
            <ul>
                <li class="nav_first">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M10.5 1.5H8.25A2.25 2.25 0 006 3.75v16.5a2.25 2.25 0 002.25 2.25h7.5A2.25 2.25 0 0018 20.25V3.75a2.25 2.25 0 00-2.25-2.25H13.5m-3 0V3h3V1.5m-3 0h3m-3 18.75h3" />
                    </svg>
                    <a href="" class="nav_a">Contantenos:<br>
                        con el whatssapp o al numero</a></li>

                <li>
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M21.75 6.75v10.5a2.25 2.25 0 01-2.25 2.25h-15a2.25 2.25 0 01-2.25-2.25V6.75m19.5 0A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25m19.5 0v.243a2.25 2.25 0 01-1.07 1.916l-7.5 4.615a2.25 2.25 0 01-2.36 0L3.32 8.91a2.25 2.25 0 01-1.07-1.916V6.75" />
                    </svg>
                    <a href=""
                        class="nav_a">Imail:<br>
                        ValleyDrafons@gmail.com</a></li>

                <li>
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                        <path stroke-linecap="round" stroke-linejoin="round" d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
                    </svg>
                    <a href="" class="nav_a">Ubicacion</a></li>

                <li class="nav_last"><a href="" class="nav_a">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 21a9.004 9.004 0 008.716-6.747M12 21a9.004 9.004 0 01-8.716-6.747M12 21c2.485 0 4.5-4.03 4.5-9S14.485 3 12 3m0 18c-2.485 0-4.5-4.03-4.5-9S9.515 3 12 3m0 0a8.997 8.997 0 017.843 4.582M12 3a8.997 8.997 0 00-7.843 4.582m15.686 0A11.953 11.953 0 0112 10.5c-2.998 0-5.74-1.1-7.843-2.918m15.686 0A8.959 8.959 0 0121 12c0 .778-.099 1.533-.284 2.253m0 0A17.919 17.919 0 0112 16.5c-3.162 0-6.133-.815-8.716-2.247m0 0A9.015 9.015 0 013 12c0-1.605.42-3.113 1.157-4.418" />
                    </svg>
                    Tus opciones de
                        p</a></li>


            </ul>
    </footer>
</body>



    </form>
</body>
</html>
