﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MenuPrincipal.aspx.cs" Inherits="front_MenuPrincipal" %>
/*Eliminamos los margenes y paddings que agrega el navegador por defecto*/
* {
    padding: 0;
    margin: 0;
  }
  
  /*Agregamos margenes inferiores a los parrafos*/
  p {
    margin-bottom: 20px;
  }

  /*estilo head*/
 
.buscador li {
  padding: 20px 50px 20px 10px;
float:right;
border-style: none;
}


/*estilo header*/

#header{
  height: 20%;

  margin: 1.5em;
 
}

 #header li form {
  height: 20%;
  margin: 0.5em;

}

header {
    /* display:flex;
    justify-content:space-between;*/
   background: rgba(0, 0, 0, 0.7);
    margin-right: 15px;
    width: 100%;
    position: fixed;
    z-index: 100;
    padding:0 0 0 0;
  }

  nav ul li{
  float: left;
  font-family: Arial, Helvetica, sans-serif;
  color: #fff;
  font-size: 20px;
  text-align: center;
  }
  nav ul li a {
    
    border: 10px;
    border-color: #fff;
    color:#FFF;
    text-align: center;
    text-decoration-line: none;
}


  nav  li {
   display: inline;
    margin: auto;
    border-style: none solid;
  }
  
  li {
    padding:0 80px 0 80px;
  }
  
  li div{
    background-color: #333;
  }

  li svg{
    height: 30px;
    size: 30px;
    align-items:center ;
  }


/*ajustes menu hover



.menu-horizontal >li>a{
    display: block;
    padding: 15px 20px;
    text-decoration: none;

}



 .menu-vertical{
    position: absolute;
    display:none;
    list-style: none;
    width: 200px;
    background-color: #111;

}

.menu-horinzontal .menu-vertical{
display: block;
}
.menu-vertical li:hover{
    background-color: green;
}

.menu-vertical li:hover {

    background: #3ead47;
  }
.menu-vertical li a{
    display: block;
    padding: 15px 15px 15px 20px;
}

*/



  /*estilos del cuerpo*/
  .menu-horizontal {
    list-style: none;
    display: flex;
    justify-content: space-between;

}

.menu-horizontal li {
    position: relative;
    margin: 0 10px;
}
.menu-horizontal >li:hover{
  background-color: green;
}

.menu-vertical {
    display: none;
    position: absolute;
    top: 100%;
    left: 0;
    background-color: rgba(0, 0, 0, 0.7);
    padding: 10px;
   
    
}

.menu-horizontal li:hover .menu-vertical {
    display: block;
}









 
  body  {
       
  /* background-image: url("https://pbs.twimg.com/media/FukRzWAXwAEo8iH?format=jpg&name=large");*/
    background-image  : url(img.jpg);
    background-size: 1920px 1000px;
        background-repeat:no-repeat;
        
        /*"https://img2.wallspic.com/previews/4/4/8/6/4/146844/146844-morado-paisaje_urbano-azul-la_ciencia_ficcion-urbe-x750.jpg "*/
  }

 

  .contenido  {
    padding-top: 100px;
    padding-bottom: 100px;
  }
  .wrapper {
    width: 80%;
    margin: auto;
    overflow:hidden;
  }


p{
    color:#FFF;
    margin: bottom 10px;
} 



/*stilo pie de pagina */

  footer div{
    background-color: rgb(39, 37, 37);
    color:#fff
  }
  #navFooter {
    margin: 100px 0 8px 0;
    padding: 0 0 7px 0;
  }
  #navFooter.navLeftFooter {
    margin-bottom: 0;
    padding-bottom: 0;
    min-width: 1000px;
    position: relative;
  }
  .navFooterVerticalRow{
    background-color: #37475A;
  }
  #navFooter .navAccessibility.navFooterVerticalRow {
    background-color: #232F3E;
  }
  #navFooter .navAccessibility.navFooterColSpacerInner, #navFooter .navAccessibility.navFooterLinkCol {
    display: table-cell;
    padding: 0 10px;
  }
  #navFooter.navLeftFooter .navFooterBackToTop .navFooterBackToTopText {
    color: #FFF;
  }
  #navFooter.navLeftFooter .navFooterBackToTop {
    margin-bottom: 40px;
    background-color: #37475A;
  }
  #navFooter .navFooterBackToTop span {
    display: block;
    text-align: center;
    color: #111;
    padding: 15px 0;
    line-height: 19px;
    font-size: 13px;
  }
  #navFooter.navLeftFooter a.nav_a:link, #navFooter.navLeftFooter a.nav_a:visited, #navFooter.navLeftFooter li.nav_a_carat span.nav_a_carat {
    
    color: #fff;
  }
  .navFooterPadItemLine a, .navFooterPadItemLine span {
    padding: 0 0.6em;
    color: #fff;
  }
  .navFooterLine .navFooterLinkLine .navFooterPadItemLine .navFooterCopyright{
    background-color: #131A22;
    color:#FFF;
    max-width: 100%;
    margin: 2px;
    padding: 10px 0 30px;
  }
  .navFooterLinkLine ul {
    padding: 10px;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
  }
  div .navFooterLine{
    
   text-align: center;
  }
