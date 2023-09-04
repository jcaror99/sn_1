<%@ Page Language="VB" AutoEventWireup="false" CodeBehind="sie_autentica.aspx.vb" Inherits="website.forms_publica_sie_autentica" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Autenticación Sammweb - PKI</title>
    <link href="../../css/samm.css" rel="stylesheet" type="text/css" />
    <link href="../../css/css.css" rel="stylesheet" type="text/css" />
    <link href="../../css/login.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
    <script type='text/javascript' language="javascript" src="../../js/Seguridad/BigInt.js"></script>
    <script type='text/javascript' language="javascript" src="../../js/Seguridad/Barrett.js"></script>
    <script type='text/javascript' language="javascript" src="../../js/Seguridad/RSA.js"></script>
    <script type='text/javascript' language="javascript" src="../../js/Seguridad/Validacion.js"></script>
    <script type='text/javascript' language="javascript" src="../../js/Interfaz/MoverTabla.js"></script>
    <script type='text/javascript' language="javascript" src="../../js/Interfaz/general.js"></script>
    <script language="JavaScript" type="text/javascript">
    </script>
</head>
<body style="background-image: url(../../images/login/fondo_index.jpg); margin: 0 0 0 0;
    background-repeat: repeat; height: 100%">

    <script type="text/javascript">
        s_maximizar();
    </script>

    
    <!-- Contenido de la pagina -->
    <table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
  <tr>
    <td style="text-align: center; padding-top: 20px">
      <div align="center">
          &nbsp;<table width="614" border="0" cellspacing="0" cellpadding="0" height="472">
          <tr> 
            <td><img src="../../images/login/cabezote_pagina_de_acceso2_r1_c1.jpg" width="614" height="152"/> 
              <table width="100%" border="0" cellspacing="0" cellpadding="0" height="283" class="unnamed1" background="../../images/login/cabezote_pagina_de_acceso2_r2_c1.jpg">
                <tr> 
                  <td valign="top" height="287"> 
                        <div align="center"> 
                          <table width="460" border="1" cellspacing="6" cellpadding="6" bordercolor="#006699" height="280">

                            <tr> 
                              <td class="login_1">
                                <span><b>ACCESO A USUARIOS</b></span>
                              </tr>
                            <tr> 
                              <td class="login_1" valign="top"> 
                                <p> <span>SAMM es un Sistema de administrac&iacute;on de mantenimiento moderno, <b>ahora via internet</b>. Adquieralo y conecte todos los recursos internos y externos de su empresa proveyendo de un din&aacute;mico sistema de control de variables a su proceso de mantenimiento. SAMM WEB es un producto desarrollado por <a href="http://www.idaesoluciones.com/" target="_blank">www.idaesoluciones.com</a> en Bogot&aacute; Colombia.</span></p>
                                <form action="https://entitlement.siemens.com/auth/Login" method="post" name="login_PKI" target="_self" autocomplete="off" onsubmit="return isSingleClick()">
        <button accesskey="p" name="login" type="submit" class="button loginButton ">Autenticar X GetAccess</button>
        <input name="AUTHMETHOD" value="CERTIFICATE" type="hidden" />
        <input name="GAURI" value="https://entitlement.siemens.com/SSO/Login?Design=default_design_intranet&GAURI=https://intranet.customerservice.siemens.com/forms/publica/sie_accede.aspx&GAREASONCODE=-1&GARESOURCEID=testgetaccess&LOCALE=en_US&postPKILogin&MESSAGE=" type="hidden" />
        <input name="GARESOURCEID" value="testgetaccess" type="hidden" />
        <input name="loginPKI" value="" type="hidden" />
</form>
                              </td>
                             
                            </tr>
                          </table>
                        </div>
                  </td>
                </tr>
                <tr>
                    <td valign="top" background="../../images/login/cabezote_pagina_de_acceso2_r3_c1.jpg"> 
                    <div align="center">
                      <table width="460" border="0" cellspacing="0" cellpadding="10">
                        <tr> 
                          <td> 
                            <div style="text-align:center">
                            <form id="form1" runat="server">    
    
       
    
    <!-- HIDDEN -->
    <input id="hddError" type="hidden" name="hddError" runat="server"/> 
    <input id="hddAnchoPantalla" type="hidden" name="hddAnchoPantalla" runat="server"/> 
    <!-- HIDDEN -->
                                <asp:Label ID="lblPie" runat="server" cssclass="unnamed1" Text='<%$Resources:res_etiquetas_seg,pieLogin %>'></asp:Label>
    
    </form>
                            </div>
                          </td>
                        </tr>
                      </table>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td valign="top"><img alt="" src="../../images/login/cabezote_pagina_de_acceso2_r4_c1.jpg" width="614" height="54"/></td>
                </tr>

              </table>
            </td>
          </tr>
        </table>
      </div>
    </td>
  </tr>
</table>

        <script type="text/javascript">
	    var hddError = document.getElementById('<%= hddError.ClientID %>')
	    if(hddError.value != '') alert(hddError.value);hddError.value = '';
	    var x,y
	    if(g_browser.isIE){x=document.body.clientWidth;y=document.body.clientHeight}
        if(g_browser.isNS){x=window.innerWidth;y=window.innerHeight}
	    crearCookie('samm_anchoPantalla',x);
        crearCookie('samm_altoPantalla',y);
        </script>
        <!-- Scripts que se ejecutan una vez la página se ha cargado -->
        
</body>
</html>

