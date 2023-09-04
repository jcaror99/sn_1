<%@ Page Language="VB" AutoEventWireup="false" CodeBehind="crossLogin.aspx.vb"  Inherits="website.samm_web.forms_publica_crossLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pagina de inicio de sesion</title>
    <link href="../../css/bootstrap.css" rel="stylesheet" type="text/css" />
</head>


<body style="background:none transparent;">
    <form id="form1" runat="server">
    <div class="middle-box text-center loginscreen animated fadeInDown">
  <asp:ScriptManager EnablePageMethods ="true" runat="server" ID="scm_general"></asp:ScriptManager>
   
    <div id="pnl_login" runat="server">
 
        <asp:TextBox ID="txt_login" runat="server" placeholder="Usuario" class="form-control"></asp:TextBox>
        
        <asp:TextBox ID="txt_pass" runat="server" placeholder="Contraseña" TextMode="Password" class="form-control"></asp:TextBox>
      
        <asp:TextBox ID="txt_urlCallback" runat="server" style="display:none;" ></asp:TextBox>
   
    
    <asp:Button ID="btn_login" runat="server" Text="Iniciar Sesión" class="btn btn-primary block full-width m-b" />
    <br />
   
    <asp:Label runat="server" ID="lbl_mensaje" CssClass="lbl_mensaje" ForeColor="Red" Font-Bold="true" Font-Size="9px" ></asp:Label>
    <asp:Label runat="server" ID="lbl_mensaje_exitoso" CssClass="lbl_mensaje" ForeColor="Red" Font-Bold="true" Font-Size="9px" Visible="False" Text="Su contraseña fue enviada correctamente"></asp:Label>
    <br />
  
    <a onclick="document.getElementById('pnl_login').style.display='none';document.getElementById('pnl_recordarContrasena').style.display='';document.getElementById('txtUsuario_Recordar').focus();document.getElementById('lbl_mensaje').style.display='none';document.getElementById('lbl_mensaje_exitoso').style.display='none';return false;" id="lnkRecordarContrasena" class="lnk" style ="cursor:pointer" >Recordar contraseña</a>
   
    </div>  
 
    
    
    
    <div id="pnl_recordarContrasena" style="display:none" runat="server">

     <input name="txtUsuario_Recordar" id="txtUsuario_Recordar" class="txt form-control" type="text" placeholder="Usuario"> 
     <input name="txtEmail" id="txtEmail" class="txt form-control " type="text" placeholder="Correo"> 
    
    
    <%-- <input name="bti_recordar" id="Image1" class="btn btn-primary" value="aceptar"   alt="Aceptar" onclick="recordar_contrasena();" style="border-width:0px;" type="image">
     --%>
     
     <asp:LinkButton ID="bti_recordar" class="btn btn-primary" runat="server" Text="Aceptar" OnClientClick="return true;" ></asp:LinkButton >
    <br />
     <asp:Label runat="server" ID="lbl_error_recordar" CssClass="lbl_mensaje" ForeColor="Red" Font-Bold="true" Font-Size="9px" style="" Visible="False" Text="Todos los campos son obligatorios"></asp:Label>
    <br />
    
     <a onclick="document.getElementById('pnl_login').style.display='block';document.getElementById('pnl_recordarContrasena').style.display='none';document.getElementById('txtUsuario').focus();document.getElementById('lbl_mensaje').style.display='none';return false;" id="lnk_volverIntentar" class="lnk" style="cursor:pointer">Volver a Intentar</a>
    <br />

    
    </div>
    
   
  
    </div>
    </form>
 


   <script type="text/javascript"> 
   function recordar_contrasena(){
//alert("correo");
var usuario = document.getElementById("txtUsuario_Recordar").value;
var correo = document.getElementById("txtEmail").value;
alert(correo);
 
 //PageMethods.f_str_enviarRecordarContrasena(usuario , correo ,ok,fallo);
}
   function ok(){
   return true;
   }
   
   function fallo(){
   
   alert("fallo");
   }
   
   </script>
 
</body>
</html>





     
     
    