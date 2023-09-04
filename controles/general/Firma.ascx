﻿<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="Firma.ascx.vb" Inherits="website.samm_componentes.controles_general_Firma" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<link rel="stylesheet" type="text/css" href="../../css/firma.css" />

<div id='firmaEscrita' runat='server'>
    <div id="window" oncontextmenu="return false">
        <div id="innerwindow">
            <div id="innerinnerwindow">
                <div id="titlebar" onmousedown="windowDrag(event)" style="visibility: hidden;">
                    <canvas id="gradient" height="500" width="1280"></canvas>
                    <h1 onmousedown="event.preventDefault()">
                    </h1>
                </div>
                <div id="toolbar" style="visibility: hidden;">
                    <ul id="buttons">
                        <li id="pencil" onmousedown="buttonDown(event, this)" onclick="selTool(this)" onmouseout="buttonReset(this)"
                            onmouseover="iface.status.innerHTML='Draws a free-form line one pixel wide.'"
                            title="Pencil" class="sel">
                            <img src="buttons/pencil.gif" />
                        </li>
                    </ul>
                  <%--  <div id="settings" onmousedown="event.preventDefault()" style="visibility: hidden;">
                        <div id="eraser-settings">
                            <div onclick="selSetting(this, 'c.lineWidth=3')" style="font-size: 90%; line-height: 9px">
                                &#9632;</div>
                            <div onclick="selSetting(this, 'c.lineWidth=5')" style="font-size: 120%; line-height: 8px">
                                &#9632;</div>
                            <div onclick="selSetting(this, 'c.lineWidth=7')" style="font-size: 155%; line-height: 7px"
                                class="sel">
                                &#9632;</div>
                            <div onclick="selSetting(this, 'c.lineWidth=9')" style="font-size: 185%; line-height: 6px">
                                &#9632;</div>
                        </div>
                        <div id="text-settings">
                        </div>
                    </div>--%>
                </div>
                                <div id="workspace" class="pencil">
                                    <div style="background: #ffffff">
                                    <table >
                                    
                                     <tr >
                                                                         <td align="right">
                                                    <canvas id="draw-canvas" width="800" height="500" >
		 			                No tienes un buen navegador.
		 		                </canvas>
                                    </td>
                                    </tr>
                                <tr >
                                    <td align="right">
                                        <asp:Label ID="lbl_contraseña" runat="server" CssClass="lbl"></asp:Label>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:TextBox ID="txt_contraseña" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
                                       
                                    </td>
                                    <td align="left">
                                     <asp:RequiredFieldValidator ID="rfvContrasena" runat="server" ControlToValidate="txt_contraseña"
                                            CssClass="lbl_mensaje" Display="Dynamic" ErrorMessage="*" ForeColor="" SetFocusOnError="True"
                                            ValidationGroup="login">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr >
                                    <td align="right">
                                        <asp:Label ID="lbl_confirmarContraseña" runat="server" CssClass="lbl"></asp:Label>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:TextBox ID="txt_confirmarContraseña" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
                                    </td>
                                    <td align="left">
                                    
                                        <asp:RequiredFieldValidator ID="rfvContrasenaConfirmar" runat="server" ControlToValidate="txt_confirmarContraseña"
                                            CssClass="lbl_mensaje" Display="Dynamic" ErrorMessage="*" ForeColor="" SetFocusOnError="True"
                                            ValidationGroup="login">*</asp:RequiredFieldValidator>

                                    </td>
                                </tr>
                                <tr  >
                                    <td colspan="3" align="center">
                                       <asp:Button ID="imb_guardarCodigo" runat="server" Text="Guardar"  ValidationGroup="login" CausesValidation="true"  ImageUrl='../../images/botones/aceptar.png'  />
                                       <asp:Button ID="btn_limpiarfirma" runat="server" Text="Limpiar" OnClientClick="c.clearRect(0, 0, canvas.width, canvas.height);c.fillRect(0, 0, canvas.width, canvas.height);return false;" />

                                        <asp:ValidationSummary ID="vls_login" runat="server" ValidationGroup="login" CssClass="lbl_mensaje"
                                            ForeColor='' />
                                    </td>
                                </tr>
                                <tr>
                                <td  colspan="3" align="center">
                                    <asp:Label ID="lblMensaje" runat="server" Text="" CssClass="lbl_mensaje"></asp:Label>
                                <td>
                                </tr>
                                <tr><td> 
                                <asp:Button ID="bti_guardar" runat="server" Text="Guardar" />
                                   <asp:Button ID="bti_limpiar" runat="server" Text="Limpiar" />
                                   <asp:Label ID="lbl_mensajeConfiguracion" runat="server" CssClass="lbl_mensaje"></asp:Label>
                                   <asp:CheckBox ID="chk_envioCorreo" runat="server" />             
                               </td></tr>
                            </table>
                       
                    </div>
            <%--        <canvas id="canvas" width="800" height="500" oncontextmenu="return false"></canvas>
                    <canvas id="canvastemp" width="800" height="500" oncontextmenu="return false"></canvas>--%>
                </div>
                <div id="colorbar" style="display: none;">
                    <div id="currcol">
                        <canvas id="currcoltert"></canvas>
                        <div id="currcolbackcont">
                            <canvas id="currcolback" style="background-color: #FFF"></canvas>
                        </div>
                        <div id="currcolforecont">
                            <canvas id="currcolfore" style="background-color: #000"></canvas>
                        </div>
                    </div>
                    <ul id="colors">
                        <li style="background-color: #000" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #999" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #900" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #990" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #090" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #099" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #009" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #909" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #994" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #044" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #09F" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #049" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #90F" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #940" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #FFF" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #CCC" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #F00" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #FF0" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #0F0" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #0FF" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #00F" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #F0F" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #FF9" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #0F9" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #9FF" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #99F" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #F09" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                        <li style="background-color: #F94" onmousedown="selCol(this, event)" oncontextmenu="selCol(this, event, 1)">
                            <div>
                            </div>
                        </li>
                    </ul>
                    <label>
                        <input id="pretty" type="checkbox" onchange="prefs.pretty=this.checked" />
                        Bastante Curvas (Para navegadores lentos)</label>
                    <label>
                        <input id="controlpoints" type="checkbox" onchange="prefs.controlpoints=this.checked" />
                        Señalar los puntos de control</label>
                </div>
                <div id="statusbar" style="visibility: hidden;">
                    <div id="statusbar2" style="visibility: hidden;">
                        <div id="status">
                            <div>
                                &nbsp;</div>
                        </div>
                        <div id="xy">
                            <div>
                                &nbsp;</div>
                        </div>
                        <div id="txy">
                            <div>
                                &nbsp;</div>
                        </div>
                    </div>
                </div>
                <div style="visibility: hidden;" id="resize" onmousedown="windowResize(event, this)">
                </div>
            </div>
        </div>
    </div>
    <div class="preload" style="background-image: url(icons/dashed2.gif)">
    </div>
    <div class="preload" style="background-image: url(icons/dotted.gif)">
    </div>
    <canvas id="canvassel" width="540" height="320" style="display: none; margin-top: 470px;
        border: 1px solid green"></canvas>
    <canvas id="canvasundo" width="540" height="320" style="display: none; border: 1px solid red"></canvas>
    <input type="hidden" id="hdd_image" runat="server" />
    <asp:TextBox ID="txt_nombre" runat="server" CssClass="txt"></asp:TextBox>
</div>
<div id='firmaCodigo' runat='server'>


<table >
        <tr>
            <td>
                <asp:Label ID='lbl_codigoUsuario' runat='server' CssClass='lbl'></asp:Label>
            </td>
            <td class='td_controlesFormulario'>
                <asp:TextBox ID='txt_codigoUsuario' runat='server'></asp:TextBox>
            </td>
            <td>
                <div">
                    <asp:Button ID="probarCodigo" runat="server" Text="Firmar" />
                    <asp:CheckBox ID="chk_envioCorreo2" runat="server" />
                </div>
            </td>
        </tr>
        <tr>
        <td colspan=3>
        <asp:Label ID='lbl_errorCodigo' runat='server' CssClass='lbl_mensaje'></asp:Label>
        </td>
        </tr>
    </table>
</div>
