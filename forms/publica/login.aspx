<%@ Page Language="VB" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="website.samm_web.publica_login" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>- Inicio de sesión - SAMM</title>
    <%--icono de FontAwesome--%>
    <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />--%>
    <link href="~/css/samm/colores.css" rel="stylesheet" type="text/css" />
    <link href="~/css/samm/general.css" rel="stylesheet" type="text/css" />
    <link href="~/css/samm/login.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
    <script type='text/javascript' language="javascript" src="../../js/Interfaz/MoverTabla.js"></script>
    <script type='text/javascript' language="javascript" src="../../js/Interfaz/general.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script language="JavaScript" type="text/javascript">
</script>

    <script type='text/javascript'>
        function initKeyValues(form) {
            form.C.value ="<%=GetChallenge()%>";
            form.E.value ="<%=GetRSA_E()%>";
            form.M.value ="<%=GetRSA_M()%>";
        }
    </script>
</head>
<body style="background-image: url(../../images/login/fondo.png); margin: 0 0 0 0;
     background-repeat: no-repeat; width:100%; background-size: cover;  background-attachment: fixed";  >

    <script type="text/javascript">
        s_maximizar();
    </script>

    <form id="form1" runat="server" style="background-color:transparent">
    <!-- HIDDEN -->
    <input id="hddError" type="hidden" name="hddError" runat="server" />
    <input type="hidden" id="posx" name="posx"/>
    <input type="hidden" id="posy" name="posy"/>
    <input type="hidden" id="challenge" name="challenge"/>
    <input type="hidden" id="C" name="C"/>
    <input type="hidden" id="E" name="E"/>
    <input type="hidden" id="M" name="M"/>
    <input id="hddAnchoPantalla" type="hidden" name="hddAnchoPantalla" runat="server" />
    <!-- HIDDEN -->
    <!-- Contenido de la pagina -->
    <table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
        <tr>
            <td style="text-align: center;" >
                <div align="center" >
                
                    <table width="400" border="0" cellspacing="0" cellpadding="0" height="472" style="margin-top: 40px;">
                        <tr>
                            <td>
                                <asp:Image runat="server" ID="imgLogin" src="../../images/login/cabeceraLogin.png" style="border-width:0px;" />
                                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="unnamed1">
                                    <tr>
                                        <td valign="top" height="287">
                                            <div align="center" style="display: flex; justify-content: center; margin-top: 15px;
                                                margin-bottom: 15px;">
                                                <table border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td style="background-color: #003366; border-radius: 10px;;width:360px;height:280px;">
                                                        <asp:Panel ID="pnl_login" style="text-align: center" runat="server">
                                                            <table width="100%" border="0" cellspacing="0" class="login_1">
                                                            <asp:Image runat="server" ID="imgSammLogo" src="../../images/login/Samm_Logo.png" style="border-width:0px; margin-bottom: 20px" />
                                                                <tr>
                                                                    <td class="tdLogin">
                                                                        <img src="../../images/login/icon-users.png" class="imgIcono" alt="icolog" />                                                                       
                                                                        <asp:TextBox ID="txtUsuario" runat="server" align="center" placeholder="Usuario-login"
                                                                            CssClass="txtLogin" ValidationGroup="1">
                                                                        </asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr><td><br /></td></tr>
                                                                <tr>
                                                                    <td class="tdLogin">
                                                                        <img src="../../images/login/icon-password.png" class="imgIcono" alt="icopwd" />
                                                                        <asp:TextBox ID="txtContrasenia" runat="server" CssClass="txtLogin" TextMode="Password"
                                                                            placeholder="Contraseña" ValidationGroup="1"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td height="100%" class="login_2" style="text-align: left; color: #004566; text-align: center;
                                                                        font-weight: inherit;">
                                                                        
                                                                        <asp:DropDownList ID="drpEmpresa" runat="server" CssClass="drp">
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="text-align:center;padding-top:15px;">
                                                                        <asp:Label ID="lbl_unaEmpresa" runat="server" CssClass="lblEmpresa"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr style="background-image:url(../../images/login/entrda-interfaz.png);">
                                                                    <td style="width:100%">
                                                                        <asp:Image runat="server" ID="imgEmpresa" src="../../images/interfaz/logoempresa.png" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="display:block;text-align:center;padding-top:10px;">
                                                                        <bti:BotonImagen ID="btnIngresar" runat="server" ImageUrl="../../images/botones/inicioSesion.jpeg"
                                                                            CausesValidation="true" ValidationGroup="1" />
                                                                    </td>
                                                                </tr>                                                           
                                                                <tr align="center">
                                                                    <td>
                                                                        <asp:LinkButton ID="lnkRecordarContrasena" runat="server" CausesValidation="False"
                                                                            CssClass="lnk" ForeColor="White" OnClientClick="return false;">
                                                                        </asp:LinkButton>
                                                                      
                                                                    </td>
                                                                    
                                                                </tr>
                                                            </table>
                                                            
                                                        </asp:Panel>
                                                        <asp:Panel ID="pnl_recordarContrasena" HorizontalAlign="Center" runat="server" Height="100%"
                                    Width="100%" Style="display: none">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="4" class="login_1">
                                        <tr>
                                            <td style="white-space: nowrap; text-align: left">
                                                <asp:Label ID="lbl_recordarcontrasena" runat="server" CssClass="lblTitulo2" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td></td>
                                        </tr>
                                        
                                        <tr>
                                            <td class="login_2">
                                              <asp:TextBox ID="txtUsuario_Recordar" runat="server" CssClass="txtLogin" ValidationGroup="2" PlaceHolder="Usuario"></asp:TextBox>
                                              <asp:RequiredFieldValidator ID="rfvUsuario1" runat="server" ControlToValidate="txtUsuario_Recordar"
                                                        ValidationGroup="2" CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                                                        <br />
                                                        <br />
                                               <asp:TextBox ID="txtEmail" runat="server" CssClass="txtLogin" ValidationGroup="2" PlaceHolder="Correo Electrónico"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" 
                                                    ValidationGroup="2" CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator
                                                        ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                        ValidationGroup="2" CssClass="invisible" ForeColor=""></asp:RegularExpressionValidator>
                                                        <br />
                                                        <br />
                                               <bti:BotonImagen ID="bti_recordar" runat="server" ImageUrl="../../images/botones/inicioSesion.jpeg"
                                                    CausesValidation="true" ValidationGroup="2" />
                                                    <br />
                                                    <asp:LinkButton ID="lnk_volverIntentar" runat="server" CssClass="lnk" CausesValidation="False"
                                                    OnClientClick="return false;" style="color:White;"></asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="login_1" bgcolor="#d9e1ec">
                                                
                                            </td>
                                            <td bgcolor="#d9e1ec">
                                                
                                            </td>
                                        </tr>
                                        <tr bgcolor="#ffffff">
                                            <td class="login_1" colspan="2">
                                                <asp:Label ID="lbl_mensajeRecordar" runat="server" CssClass="lbl_mensaje"></asp:Label>
                                                <asp:ValidationSummary ID="vlsRecordar" runat="server" ValidationGroup="2" CssClass="lbl_mensaje"
                                                    ForeColor="" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>  
                                                    </td>
                                                    </tr>
                                                 </table>
                                                                                         
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="login_1" colspan="2" style="width: 1000px; text-align: center">
                                            <asp:Label ID="lblMensajeLogin" runat="server" CssClass="lbl_mensaje"></asp:Label>
                                            <asp:ValidationSummary ID="vls_login" runat="server" ValidationGroup="1" CssClass="lbl_mensaje"
                                                ForeColor="" />
                                        </td>
                                    </tr>
                                </table>
                               
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        <tr style="background:#336699d9">
            <td valign="top" class="bot" >
                <div align="center" style="background-color: #003366">
                    <table width="460" border="0" cellspacing="0" cellpadding="10">
                        <tr>
                            <td>
                                <div style="text-align: center">
                                    <asp:Label ID="lblPie" runat="server" style="color: white" Text='<%$Resources:res_etiquetas_seg,pieLogin %>'></asp:Label>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    <%--</table>--%>
    <%--         </td>
          </tr>
        </table>
      </div>
    </td>
  </tr>
 
</table>--%>

    <script type="text/javascript">
	    var hddError = document.getElementById('<%= hddError.ClientID %>')
        if (hddError.value != '') alert(hddError.value); hddError.value = '';
        var x, y
        if (g_browser.isIE) { x = document.body.clientWidth; y = document.body.clientHeight }
        if (g_browser.isNS) { x = window.innerWidth; y = window.innerHeight }
        crearCookie('samm_anchoPantalla', x);
        crearCookie('samm_altoPantalla', y);
    </script>

    <!-- Scripts que se ejecutan una vez la página se ha cargado -->
    <div runat="server" id="cookies">
    </div>
    </form>
</body>
</html>
