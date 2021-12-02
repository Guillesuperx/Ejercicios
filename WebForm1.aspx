<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Ejercicios.WebForm1" %>

<!DOCTYPE html>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet"> 
<link REL=StyleSheet HREF="css/boostrab.css" TYPE="text/css" MEDIA=screen>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <div class="jumbotron text-center ">
  <h1>Control de Empleados</h1>
  <p>¡Bienvenido Iniciemos!</p>
       
</div>
    <form id="form1" runat="server">
         <div class="contain" style="float:right">
       
       <asp:Button id="Button5" text="Palindromos" class="btn btn-outline-primary" OnClick="AddButton_Palin" runat="server" />
             </div>
    <div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h5>DPI</h5>
     
          <asp:TextBox ID="dpi" Columns="30" MaxLength="13" runat="server"/>
    </div>
    <div class="col-sm-4">
      <h5>Nombre</h5>
     
          <asp:TextBox ID="nombre" Columns="30"  runat="server"/>
    </div>
    <div class="col-sm-4">
      <h5>Apellido</h5>
      
         <asp:TextBox ID="apellido" Columns="30" runat="server"/>
    </div>
      <p></p>
       <div class="col-sm-4">
      <h5>Cantidad Hijos </h5>
      
           <asp:TextBox ID="canthijos" Columns="30" MaxLength="3" runat="server"/>
           
    </div>
      <div class="col-sm-4">
      <h5>Salario</h5>
      
           <asp:TextBox ID="salario" Columns="30"  runat="server"/>
               </div>
       <div class="col-sm-4">
            <h3></h3>
           <p></p>
           <p></p>
         
       <asp:Button id="btnGuardar" text="Guardar" class="btn btn-outline-success" OnClick="AddButton_Click" runat="server" />
           <asp:Button id="Button3" text="Eliminar" class="btn btn-outline-danger" OnClick="AddButton_Eliminar" runat="server" />
             <asp:Button id="Button2" text="Actualizar" class="btn btn-outline-dark" OnClick="AddButton_Actualizar" runat="server" />
             
          <p></p>
    </div>
      
      <p></p>
  </div>
        <p></p>
</div>
        <p></p>
                    
             
          <%--  <asp:DropDownList id ="nombres" BorderColor ="#3AC0F2" BorderWidth = "4px" ForeColor ="#911483" AutoPostBack ="False" runat ="server">
                                 
            </asp:DropDownList>--%>
           <div class="container">
               
            <asp:GridView ID="GridNombre" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="dpi" HeaderText="IDLista" ItemStyle-Width="175" />
                    <asp:BoundField DataField="nombre" HeaderText="Nombre" ItemStyle-Width="150" />
                    <asp:BoundField DataField="apellido" HeaderText="Apellido" ItemStyle-Width="125" />
                     <asp:BoundField DataField="cantidadhijos" HeaderText="Cantidad Hijos" ItemStyle-Width="125"  />
                    <asp:BoundField DataField="salarioBase" HeaderText="Salario Base" ItemStyle-Width="150" />
                    <asp:BoundField DataField="salarioTotal" HeaderText="Salario Total" ItemStyle-Width="150" />
                     <asp:BoundField DataField="salarioLiquido" HeaderText="Salario Líquido" ItemStyle-Width="150" />
                   
                </Columns>
            </asp:GridView>
               </div>
         
    </form>
</body>
</html>
