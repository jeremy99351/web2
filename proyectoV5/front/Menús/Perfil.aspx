<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Perfil.aspx.cs" Inherits="front_Perfil" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil</title>
<link rel="stylesheet" href="../../css/PerfilD.css">
</head>

<body>

    <section class="seccion-perfil-usuario">
        <div class="perfil-usuario-header">
            <div class="perfil-usuario-portada">
                <div class="perfil-usuario-avatar">
                    <img src="http://localhost/multimedia/relleno/img-c9.png" alt="img-avatar">
                    <button type="button" class="boton-avatar">
                        <i class="far fa-image"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M2.25 15.75l5.159-5.159a2.25 2.25 0 013.182 0l5.159 5.159m-1.5-1.5l1.409-1.409a2.25 2.25 0 013.182 0l2.909 2.909m-18 3.75h16.5a1.5 1.5 0 001.5-1.5V6a1.5 1.5 0 00-1.5-1.5H3.75A1.5 1.5 0 002.25 6v12a1.5 1.5 0 001.5 1.5zm10.5-11.25h.008v.008h-.008V8.25zm.375 0a.375.375 0 11-.75 0 .375.375 0 01.75 0z" />
                          </svg>
                          </i>
                    </button>
                </div>
                <button type="button" class="boton-portada">
                    <i class="far fa-image"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M2.25 15.75l5.159-5.159a2.25 2.25 0 013.182 0l5.159 5.159m-1.5-1.5l1.409-1.409a2.25 2.25 0 013.182 0l2.909 2.909m-18 3.75h16.5a1.5 1.5 0 001.5-1.5V6a1.5 1.5 0 00-1.5-1.5H3.75A1.5 1.5 0 002.25 6v12a1.5 1.5 0 001.5 1.5zm10.5-11.25h.008v.008h-.008V8.25zm.375 0a.375.375 0 11-.75 0 .375.375 0 01.75 0z" />
                      </svg>
                      </i> Cambiar fondo
                </button>
            </div>
        </div>
        <div class="perfil-usuario-body">
            <div class="perfil-usuario-bio">
                <h3 class="titulo">Alvaro Hidalgo Gomez</h3>
                <p class="texto">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                    tempor incididunt ut labore et dolore magna aliqua.</p>
            </div>
            <div class="perfil-usuario-footer">
                <ul class="lista-datos">
                    <li><i class="icono fas fa-map-signs"></i> Direccion de usuario:</li>
                    <li><i class="icono fas fa-phone-alt"></i> Telefono:</li>
                    <li><i class="icono fas fa-briefcase"></i> Trabaja en.</li>
                    <li><i class="icono fas fa-building"></i> Cargo</li>
                </ul>
                <ul class="lista-datos">
                    <li><i class="icono fas fa-map-marker-alt"></i> Ubicacion.</li>
                    <li><i class="icono fas fa-calendar-alt"></i> Fecha nacimiento.</li>
                    <li><i class="icono fas fa-user-check"></i> Registro.</li>
                    <li><i class="icono fas fa-share-alt"></i> Redes sociales.</li>
                </ul>
            </div>
            <div class="redes-sociales">
                <a href="" class="boton-redes facebook fab fa-facebook-f"><i class="icon-facebook"></i></a>
                <a href="" class="boton-redes twitter fab fa-twitter"><i class="icon-twitter"></i></a>
                <a href="" class="boton-redes instagram fab fa-instagram"><i class="icon-instagram"></i></a>
            </div>
        </div>
    </section>
 

<div class="mis-redes" style="display: block;position: fixed;bottom: 1rem;left: 1rem; opacity: 0.5; z-index: 1000;">
    <p style="font-size: .75rem;">Lasu</p>
    <div>
        <a target="_blank" href="https://www.facebook.com"><i class="fab fa-facebook-square"></i></a>
        <a target="_blank" href="https://twitter.com/ApockGraficos"><i class="fab fa-twitter"></i></a>
        <a target="_blank" href="https://www.instagram.com/ApockGraficos"><i class="fab fa-instagram"></i></a>
        <a target="_blank" href="https://www.youtube.com/channel/UC15DkMZQ80aoW_Rqk4n2T_w"><i class="fab fa-youtube"></i></a>
    </div>
</div>
<!--====  End of tarjeta  ====-->
</body>

</html>