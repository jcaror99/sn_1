<%@ Page Language="vb" AutoEventWireup="false" Inherits="website.samm_web.logout" CodeBehind="logout.aspx.vb" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>samm - reingresar</title>
    <meta http-equiv="Content-Type" content="text/html;">
    <meta name="description" content="FW4 DW4 HTML">
    <!-- Fireworks 4.0  Dreamweaver 4.0 target.  Created Mon Feb 25 20:29:59 GMT-0500 (Hora est. del Pacífico de SA) 2008-->
    <style type="text/css">
<!--
.unnamed1 {  font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; color: #666666}
-->
</style>
</head>
<script type="text/javascript">
function volver(a){
    a.href=gup('aspxerrorpath');
}
function gup( name ){
	var regexS = "[\\?&]"+name+"=([^&#]*)";
	var regex = new RegExp ( regexS );
	var tmpURL = window.location.href;
	var results = regex.exec( tmpURL );
	if( results == null )
		return"";
	else
		return results[1];
}
</script>
<body style="margin:0 0 0 0;background-image:url(../../images/error/backg2.jpg);background-color:#cccccc" onload="javascript:volver(document.getElementById('lnk_volver'))">
    <form id="Form1" method="post" runat="server">
        <table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
            <tr>
                <td>
                    <div align="center">
                        <!--The following section is an HTML table which reassembles the sliced image in a browser.-->
                        <!--Copy the table section including the opening and closing table tags, and paste the data where-->
                        <!--you want the reassembled image to appear in the destination document. -->
                        <!-------------------------- BEGIN COPYING THE HTML HERE ---------------------------->
                        <table border="0" cellpadding="0" cellspacing="0" width="614">
                            <!-- fwtable fwsrc="../../images/error/fondo_pagina_de_error.png" fwbase="fondo_pagina_de_error.jpg" fwstyle="Dreamweaver" fwdocid = "742308039" fwnested="0" -->
                            <tr>
                                <!-- Shim row, height 1. -->
                                <td>
                                    <img src="../../images/error/spacer.gif" width="272" height="1" border="0"></td>
                                <td>
                                    <img src="../../images/error/spacer.gif" width="234" height="1" border="0"></td>
                                <td>
                                    <img src="../../images/error/spacer.gif" width="108" height="1" border="0"></td>
                                <td>
                                    <img src="../../images/error/spacer.gif" width="1" height="1" border="0"></td>
                            </tr>
                            <tr>
                                <!-- row 1 -->
                                <td colspan="3">
                                    <img name="fondo_pagina_de_error_r1_c1" src="../../images/error/fondo_pagina_de_error_r1_c1.jpg"
                                        width="614" height="145" border="0"></td>
                                <td>
                                    <img src="../../images/error/spacer.gif" width="1" height="145" border="0"></td>
                            </tr>
                            <tr>
                                <!-- row 2 -->
                                <td rowspan="2">
                                    <img name="fondo_pagina_de_error_r2_c1" src="../../images/error/fondo_pagina_de_error_r2_c1.jpg"
                                        width="272" height="286" border="0"></td>
                                <td background="../../images/error/fondo_pagina_de_error_r2_c2.jpg" valign="top">
                                    <p class="unnamed1">
                                        Error en la solicitud al sistema.
                                        <br />
                                        <br />
                                        Int&eacute;ntelo m&aacute;s tarde nuevamente &iexcl;Gracias!
                                    </p>
                                    <p class="unnamed1" style="text-align: left">
                                        Causas probables:<br />
                                        <br />
                                        - No tiene acceso al recurso.<br />
                                        - No existe el recurso.<br />
                                        - Base de datos no disponible.<br />
                                        - Problemas en el servidor web.</p>
                                    <br />
                                    <p class="unnamed1" style="text-align: center">
                                        <asp:HyperLink ID="hprLogin" runat="server" CssClass="lnk">Re-Ingresar</asp:HyperLink>&nbsp;-&nbsp; <a id="lnk_volver" class="lnk">Regresar</a>&nbsp;
                                        </p>
                                </td>
                                <td rowspan="2">
                                    <img name="fondo_pagina_de_error_r2_c3" src="../../images/error/fondo_pagina_de_error_r2_c3.jpg"
                                        width="108" height="286" border="0"></td>
                                <td>
                                    <img src="../../images/error/spacer.gif" width="1" height="243" border="0"></td>
                            </tr>
                            <tr>
                                <!-- row 3 -->
                                <td>
                                    <img name="fondo_pagina_de_error_r3_c2" src="../../images/error/fondo_pagina_de_error_r3_c2.jpg"
                                        width="234" height="43" border="0"></td>
                                <td>
                                    <img src="../../images/error/spacer.gif" width="1" height="43" border="0"></td>
                            </tr>
                            <tr>
                                <td colspan="3" bgcolor="#FFFFFF" valign="middle">
                                    <div align="center">
                                        <p>
                                            <span class="unnamed1">copyright © idae soluciones 2015 <a href="mailto:samm.soporte@idaesoluciones.com">
                                                samm.soporte@idaesoluciones.com</a></span>
                                        </p>
                                    </div>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <!--   This table was automatically created with Macromedia Fireworks 4.0   -->
                            <!--   http://www.macromedia.com   -->
                        </table>
                        <!--------------------------- STOP COPYING THE HTML HERE --------------------------->
                    </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
