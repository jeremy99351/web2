<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Perfil.aspx.cs" Inherits="front_Perfil" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil</title>
    <link rel="stylesheet" href="../../css/PerfilD.css">
    <script>
        function toggleVisibility() {
            var lblDireccion = document.getElementById('<%= lblDireccion.ClientID %>');
            var txtDireccion = document.getElementById('<%= txtDireccion.ClientID %>');
            var btnGuardar = document.getElementById('<%= btnGuardar.ClientID %>');
            var btnCancelar = document.getElementById('<%= btnCancelar.ClientID %>');
            var btnEditar = document.getElementById('<%= btnEditar.ClientID %>');

            lblDireccion.style.display = 'none';
            txtDireccion.style.display = 'block';
            btnGuardar.style.display = 'block';
            btnCancelar.style.display = 'block';
            btnEditar.style.display = 'none';
        }
        function toggleVisibilityTelefono() {
            var lblTelefono = document.getElementById('<%= lblTelefono.ClientID %>');
             var txtTelefono = document.getElementById('<%= txtTelefono.ClientID %>');
             var btnGuardarTelefono = document.getElementById('<%= btnGuardarTelefono.ClientID %>');
            var btnCancelarTelefono = document.getElementById('<%= btnCancelarTelefono.ClientID %>');
             var btnEditarTelefono = document.getElementById('<%= btnEditarTelefono.ClientID %>');

             lblTelefono.style.display = 'none';
             txtTelefono.style.display = 'block';
             btnGuardarTelefono.style.display = 'block';
             btnCancelarTelefono.style.display = 'block';
             btnEditarTelefono.style.display = 'none';
        }
        function toggleVisibilityTrabajo() {
            var lblTrabajo = document.getElementById('<%= lblTrabajo.ClientID %>');
               var txtTrabajo = document.getElementById('<%= txtTrabajo.ClientID %>');
               var btnGuardarTrabajo = document.getElementById('<%= btnGuardarTrabajo.ClientID %>');
      var btnCancelarTrabajo = document.getElementById('<%= btnCancelarTrabajo.ClientID %>');
               var btnEditarTrabajo = document.getElementById('<%= btnEditarTrabajo.ClientID %>');

            lblTrabajo.style.display = 'none';
            txtTrabajo.style.display = 'block';
            btnGuardarTrabajo.style.display = 'block';
            btnCancelarTrabajo.style.display = 'block';
               btnEditarTrabajo.style.display = 'none';
        }

        function toggleVisibilityCargo() {
            var lblCargo = document.getElementById('<%= lblCargo.ClientID %>');
            var txtCargo = document.getElementById('<%= txtCargo.ClientID %>');
            var btnGuardarCargo = document.getElementById('<%= btnGuardarCargo.ClientID %>');
    var btnCancelarCargo = document.getElementById('<%= btnCancelarCargo.ClientID %>');
            var btnEditarCargo = document.getElementById('<%= btnEditarCargo.ClientID %>');

            lblCargo.style.display = 'none';
            txtCargo.style.display = 'block';
            btnGuardarCargo.style.display = 'block';
            btnCancelarCargo.style.display = 'block';
            btnEditarCargo.style.display = 'none';
        }


        function toggleVisibilityUbicacion() {
            var lblUbicacion = document.getElementById('<%= lblUbicacion.ClientID %>');
            var txtUbicacion = document.getElementById('<%= txtUbicacion.ClientID %>');
            var btnGuardarUbicacion = document.getElementById('<%= btnGuardarUbicacion.ClientID %>');
            var btnCancelarUbicacion = document.getElementById('<%= btnCancelarUbicacion.ClientID %>');
            var btnEditarUbicacion = document.getElementById('<%= btnEditarUbicacion.ClientID %>');

            lblUbicacion.style.display = 'none';
            txtUbicacion.style.display = 'block';
            btnGuardarUbicacion.style.display = 'block';
            btnCancelarUbicacion.style.display = 'block';
            btnEditarUbicacion.style.display = 'none';
        }

        function toggleVisibilityFechaNacimiento() {
            var lblFechaNacimiento = document.getElementById('<%= lblFechaNacimiento.ClientID %>');
    var txtFechaNacimiento = document.getElementById('<%= txtFechaNacimiento.ClientID %>');
    var btnGuardarFechaNacimiento = document.getElementById('<%= btnGuardarFechaNacimiento.ClientID %>');
    var btnCancelarFechaNacimiento = document.getElementById('<%= btnCancelarFechaNacimiento.ClientID %>');
    var btnEditarFechaNacimiento = document.getElementById('<%= btnEditarFechaNacimiento.ClientID %>');

    lblFechaNacimiento.style.display = 'none';
    txtFechaNacimiento.style.display = 'block';
    btnGuardarFechaNacimiento.style.display = 'block';
    btnCancelarFechaNacimiento.style.display = 'block';
    btnEditarFechaNacimiento.style.display = 'none';
}

function toggleVisibilityRegistro() {
    var lblRegistro = document.getElementById('<%= lblRegistro.ClientID %>');
    var txtRegistro = document.getElementById('<%= txtRegistro.ClientID %>');
    var btnGuardarRegistro = document.getElementById('<%= btnGuardarRegistro.ClientID %>');
    var btnCancelarRegistro = document.getElementById('<%= btnCancelarRegistro.ClientID %>');
            var btnEditarRegistro = document.getElementById('<%= btnEditarRegistro.ClientID %>');

            lblRegistro.style.display = 'none';
            txtRegistro.style.display = 'block';
            btnGuardarRegistro.style.display = 'block';
            btnCancelarRegistro.style.display = 'block';
            btnEditarRegistro.style.display = 'none';
        }


    </script>
</head>

<body>
    <form id="form1" runat="server">
        <section class="seccion-perfil-usuario">
            <div class="perfil-usuario-header">
                <div class="perfil-usuario-portada">
                    <div class="perfil-usuario-avatar">
                        <img src="http://localhost/multimedia/relleno/img-c9.png" alt="img-avatar">
                        <button type="button" class="boton-avatar">
                            <i class="far fa-image"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M2.25 15.75l5.159-5.159a2.25 2.25 0 013.182 0l5.159 5.159m-1.5-1.5l1.409-1.409a2.25 2.25 0 013.182 0l2.909 2.909m-18 3.75h16.5a1.5 1.5 0 001.5-1.5V6a1.5 1.5 0 00-1.5-1.5H3.75A1.5 1.5 0 002.25 6v12a1.5 1.5 0 001.5 1.5zm10.5-11.25h.008v.008h-.008V8.25zm.375 0a.375.375 0 11-.75 0 .375.375 0 01.75 0z" />
                                </svg>
                            </i>
                        </button>
                    </div>
                    <button type="button" class="boton-portada">
                        <i class="far fa-image"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M2.25 15.75l5.159-5.159a2.25 2.25 0 013.182 0l5.159 5.159m-1.5-1.5l1.409-1.409a2.25 2.25 0 013.182 0l2.909 2.909m-18 3.75h16.5a1.5 1.5 0 001.5-1.5V6a1.5 1.5 0 00-1.5-1.5H3.75A1.5 1.5 0 002.25 6v12a1.5 1.5 0 001.5 1.5zm10.5-11.25h.008v.008h-.008V8.25zm.375 0a.375.375 0 11-.75 0 .375.375 0 01.75 0z" />
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
                        <li>
                            <i class="icono fas fa-map-signs"></i>
                            <asp:Label ID="lblDireccion" runat="server" Text="Direccion de usuario: San Martin"
                                CssClass="editable" OnClick="toggleVisibility"></asp:Label>
                            <asp:TextBox ID="txtDireccion" runat="server" CssClass="editable" Visible="false"></asp:TextBox>
                            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="editarBtn" OnClick="GuardarCampoDireccion" Visible="false" />
                            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="editarBtn" OnClientClick="return false;" Visible="false" />
                            <asp:Button ID="btnEditar" runat="server" Text="Editar" CssClass="editarBtn" OnClick="toggleVisibility" />
                        </li>
                         <li>
                            <i class="icono fas fa-phone-alt"></i>
                            <asp:Label ID="lblTelefono" runat="server" Text="Telefono: 71287875" CssClass="editable"
                                OnClick="toggleVisibilityTelefono"></asp:Label>
                            <asp:TextBox ID="txtTelefono" runat="server" CssClass="editable" Visible="false"></asp:TextBox>
                            <asp:Button ID="btnGuardarTelefono" runat="server" Text="Guardar" CssClass="editarBtn"
                                OnClick="GuardarCampoTelefono" Visible="false" />
                            <asp:Button ID="btnCancelarTelefono" runat="server" Text="Cancelar" CssClass="editarBtn"
                                OnClientClick="return false;" Visible="false" />
                            <asp:Button ID="btnEditarTelefono" runat="server" Text="Editar" CssClass="editarBtn"
                                OnClick="toggleVisibilityTelefono" />
                        </li>
                         <li>
        <i class="icono fas fa-briefcase"></i>
        <asp:Label ID="lblTrabajo" runat="server" Text="Trabaja en: Liceo del coyol" CssClass="editable" OnClick="toggleVisibilityTrabajo"></asp:Label>
        <asp:TextBox ID="txtTrabajo" runat="server" CssClass="editable" Visible="false"></asp:TextBox>
        <asp:Button ID="btnGuardarTrabajo" runat="server" Text="Guardar" CssClass="editarBtn" OnClick="GuardarCampoTrabajo" Visible="false" />
        <asp:Button ID="btnCancelarTrabajo" runat="server" Text="Cancelar" CssClass="editarBtn" OnClientClick="return false;" Visible="false" />
        <asp:Button ID="btnEditarTrabajo" runat="server" Text="Editar" CssClass="editarBtn" 
            OnClick="toggleVisibilityTrabajo" />
    </li>
                        <li>
        <i class="icono fas fa-building"></i>
        <asp:Label ID="lblCargo" runat="server" Text="Cargo: docente" CssClass="editable" OnClick="toggleVisibilityCargo"></asp:Label>
        <asp:TextBox ID="txtCargo" runat="server" CssClass="editable" Visible="false"></asp:TextBox>
        <asp:Button ID="btnGuardarCargo" runat="server" Text="Guardar" CssClass="editarBtn" OnClick="GuardarCampoCargo" Visible="false" />
        <asp:Button ID="btnCancelarCargo" runat="server" Text="Cancelar" CssClass="editarBtn" OnClientClick="return false;" Visible="false" />
        <asp:Button ID="btnEditarCargo" runat="server" Text="Editar" CssClass="editarBtn" OnClick="toggleVisibilityCargo" />
    </li>
                      
                    <ul class="lista-datos">

                   <li>
        <i class="icono fas fa-map-marker-alt"></i>
    <asp:Label ID="lblUbicacion" runat="server" Text="Ubicacion: San Martin"
        CssClass="editable" OnClick="toggleVisibilityUbicacion"></asp:Label>
    <asp:TextBox ID="txtUbicacion" runat="server" CssClass="editable" Visible="false"></asp:TextBox>
    <asp:Button ID="btnGuardarUbicacion" runat="server" Text="Guardar" CssClass="editarBtn"
        OnClick="GuardarCampoUbicacion" Visible="false" />
    <asp:Button ID="btnCancelarUbicacion" runat="server" Text="Cancelar" CssClass="editarBtn"
        OnClientClick="return false;" Visible="false" />
    <asp:Button ID="btnEditarUbicacion" runat="server" Text="Editar" CssClass="editarBtn"
        OnClick="toggleVisibilityUbicacion" />
</li>

<!-- Fecha de Nacimiento -->
<li>
    <i class="icono fas fa-calendar-alt"></i>
    <asp:Label ID="lblFechaNacimiento" runat="server" Text="Fecha nacimiento: 17/06/02"
        CssClass="editable" OnClick="toggleVisibilityFechaNacimiento"></asp:Label>
    <asp:TextBox ID="txtFechaNacimiento" runat="server" CssClass="editable" Visible="false"></asp:TextBox>
    <asp:Button ID="btnGuardarFechaNacimiento" runat="server" Text="Guardar" CssClass="editarBtn"
        OnClick="GuardarCampoFechaNacimiento" Visible="false" />
    <asp:Button ID="btnCancelarFechaNacimiento" runat="server" Text="Cancelar" CssClass="editarBtn"
        OnClientClick="return false;" Visible="false" />
    <asp:Button ID="btnEditarFechaNacimiento" runat="server" Text="Editar" CssClass="editarBtn"
        OnClick="toggleVisibilityFechaNacimiento" />
</li>

<!-- Registro -->
<li>
    <i class="icono fas fa-user-check"></i>
    <asp:Label ID="lblRegistro" runat="server" Text="Registro: 05"
        CssClass="editable" OnClick="toggleVisibilityRegistro"></asp:Label>
    <asp:TextBox ID="txtRegistro" runat="server" CssClass="editable" Visible="false"></asp:TextBox>
    <asp:Button ID="btnGuardarRegistro" runat="server" Text="Guardar" CssClass="editarBtn"
        OnClick="GuardarCampoRegistro" Visible="false" />
    <asp:Button ID="btnCancelarRegistro" runat="server" Text="Cancelar" CssClass="editarBtn"
        OnClientClick="return false;" Visible="false" />
    <asp:Button ID="btnEditarRegistro" runat="server" Text="Editar" CssClass="editarBtn"
        OnClick="toggleVisibilityRegistro" />
</li>
                    </ul>
                </div>
                <div class="redes-sociales">
                    <a href="" class="boton-redes facebook fab fa-facebook-f"><i class="icon-facebook"></i></a>
                    <a href="" class="boton-redes twitter fab fa-twitter"><i class="icon-twitter"></i></a>
                    <a href="" class="boton-redes instagram fab fa-instagram"><i class="icon-instagram"></i></a>
                </div>
            </div>
        </section>


        <div class="mis-redes" style="display: block; position: fixed; bottom: 1rem; left: 1rem; opacity: 0.5; z-index: 1000;">
            <p style="font-size: .75rem;">Lasu</p>
            <div>
                <a target="_blank" href="https://www.facebook.com"><i class="fab fa-facebook-square"></i></a>
                <a target="_blank" href="https://twitter.com/ApockGraficos"><i class="fab fa-twitter"></i></a>
                <a target="_blank" href="https://www.instagram.com/ApockGraficos"><i class="fab fa-instagram"></i></a>
                <a target="_blank" href="https://www.youtube.com/channel/UC15DkMZQ80aoW_Rqk4n2T_w"><i class="fab fa-youtube"></i></a>
            </div>
        </div>
        <!--====  fin  tarjeta  ====-->
    </form>

</body>

</html>

