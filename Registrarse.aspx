<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="Ejercicios.Registrarse" %>

<!DOCTYPE html>
<link REL=StyleSheet HREF="css/estiloreg.css" TYPE="text/css" MEDIA=screen>
<link REL=StyleSheet HREF="css/estilosreg.css" TYPE="text/css" MEDIA=screen>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="text/javascript" src="js/jsreg.js"></script>

    <title></title>
     
</head>
<body>
   
    <form id="form1" runat="server">
       <div class="login">
  <div class="form">
    <h1 id="reg" runat="server">Registrate</h1>
    <input type="text" id="user" placeholder="Usuario" runat="server">
    <input type="text"  id="contra" placeholder="Contraseña" runat="server">
    <input type="text"  id="nombre" placeholder="Nombre Completo" runat="server">
      <input type="text"  id="email" placeholder="Correo Electronico" runat="server">
      <input type="text"  id="fecnac" placeholder="Fecha Nacimiento" runat="server">
   <b> <asp:Button id="btnGuardar" text="Guardar" OnClick="AddButton" style ="background-color: white;font-family: sans-serif;" ForeColor ="#242222"  BorderColor ="#fa7575" BorderWidth = "2px" runat="server" /></b>
      
  </div>
</div>
        </form>


</body>
</html>
