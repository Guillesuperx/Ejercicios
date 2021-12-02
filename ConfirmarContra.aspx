<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmarContra.aspx.cs" Inherits="Ejercicios.ConfirmarContra" %>

<!DOCTYPE html>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet"> 
  <link rel="stylesheet" href="css/login.css">    
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

            
        </style>
    <script type="text/javascript" src="js/contra.js"></script>
   
</head>
    <body>
<div id="contenedor">
            
            <div id="contenedorcentrado">
                <div id="login">

                    <form id="loginform"  runat="server" >
                        <label for="usuario">Ingrese El Token</label>
                        <input id="usuario" type="text" name="usuario" placeholder="Token" required runat="server">
                       
                          <asp:Button id="btnGuardar" text="Guardar" CssClass="mybtn" OnClick="AddButton_Click" runat="server" />                  
                    <style>
                          .mybtn{
                               font-family: 'Overpass', sans-serif;
    font-size: 110%;
    color: #1b262c;
    width: 100%;
    height: 40px;
    border: none;
    border-radius: 3px 3px 3px 3px;
    -moz-border-radius: 3px 3px 3px 3px;
    -webkit-border-radius: 3px 3px 3px 3px;
    background-color: #dfcdc3;
    margin-top: 10px;
                          }
                      </style>
                     <asp:HiddenField ID="titulo2" runat="server" />
                        <div class="window-notice" id="Div1" visible ="false" runat="server">
    <div class="content" >
        <div class="content-text">Muchas Gracias, Ya casi terminamos, Por favor Escribe tu nueva contraseña: 
        <input id="Text1" type="text" name="contra" placeholder="Contraseña" required runat="server">
        <asp:Button id="Button1" text="Guardar" CssClass="mybtn" OnClick="AddContra"  runat="server" />   
    </div>
         </div>
</div>
                    </form>
                    

                </div>
                <div id="derecho">
                    <div class="titulo">
                        Listo Ingresa Token
                    </div>
                    <hr>
                    <div class="pie-form">
                        <a href="#">¿Perdiste tu contraseña?</a>
                        <a href="#">En Un Momento Solucionamos Tu Problema</a>
                        <hr>
                        <a href="Login.aspx">« Volver</a>
                    </div>
                </div>
            </div>
        </div>
        
       
        
  	
</body>
</html>
