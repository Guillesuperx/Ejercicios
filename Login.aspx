<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ejercicios.Login" %>

<!DOCTYPE html>
<link REL=StyleSheet HREF="css/estilo.css" TYPE="text/css" MEDIA=screen>
<link REL=StyleSheet HREF="css/estilos.css" TYPE="text/css" MEDIA=screen>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
	<title></title>
<script type="text/javascript" src="js/Ingreso.js"></script>
	
</head>
<body>
	
    <form id="form" runat="server">
	<div class="body"></div>
		<div class="grad"></div>
		<div class="header">
			<div>Japon<span>Shop</span></div>
		</div>
		<br>
		<div class="login">
				 <input type="text" id="user" placeholder="Usuario" runat="server"><br>
				<input type="password" id="pass" placeholder="Contraseña" runat="server"><br>
				
			    <asp:Button id="btnGuardar" CssClass="mybtn"  type="button" text="Guardar" OnClick="AddButton" runat="server" />
			<div class="resto">	<a href="Recucon.aspx"style="text-decoration:none;  color: #f0e1e1;" >Recupera tu contraseña</a>
			<a  href="Registrarse.aspx" style="text-decoration:none; color:#bed2e8;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registrate!!</a> </div>
			<style>

				.resto{
					 text-decoration: none;
					 color: #FF0000;
					 font-family: 'Exo', sans-serif;
					  font-size: 13px;
					  
					 
				}
			</style>
		
		</div>
	    	
		

        
    </form>
	
	
</body>
</html>
