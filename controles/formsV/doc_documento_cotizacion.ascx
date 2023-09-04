<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='doc_documento_cotizacion.ascx.vb'
Inherits='website.samm_componentes.controles_seg_doc_documento_cotizacion' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="../equ/equ_documentosCurso.ascx" TagName="equ_documentosCurso"
TagPrefix="uc2" %>
&nbsp;<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
TagPrefix="uc1" %><table class='tbl_marcoFormulario'>
<tr>
<td>
<asp:Panel ID='pan_formulario' runat='server' DefaultButton='imbGuardar'>
<table class='tbl_formulario' border='0' cellpadding='0' cellspacing='0'>
<tr>
<td align='right' colspan='1' class='td_formEspacioH'>
<img alt="" src="../../images/interfaz/spacer.gif" style="width: 17px; height: 1px" /><img
alt='' src='../../images/interfaz/spacer.gif' style='width: 17px; height: 1px' />
</td>
<td align='right' colspan='3' class='td_formEspacioV'>
</td>
</tr>

<tr class="tr_movilMenu">
<td align='right'>
</td>
<td align='right' valign='top' class="tr_informacion">
<act:ToggleButtonExtender ID='ToggleButtonExtender1' runat='server' CheckedImageAlternateText='<%$ Resources:res_controles,ayuda_especificano %>'
CheckedImageUrl='../../images/iconos/ojo1.png' ImageHeight='26' ImageWidth='30'
TargetControlID='chb_ayudaCampo' UncheckedImageAlternateText='<%$ Resources:res_controles,ayuda_especifica %>'
UncheckedImageUrl='../../images/iconos/ojo2.png'></act:ToggleButtonExtender>
<table border='0' cellpadding='0' cellspacing='0' id='tbl_estadoformulario'>
<tr>
<td>
<asp:Label ID='lbl_estadoFormulario' runat='server' CssClass='lbl_estadoFormulario'></asp:Label>
</td>
<td>
<asp:CheckBox ID='chb_ayudaCampo' runat='server' AutoPostBack='True' CssClass='chb' />
</td>
</tr>
</table>
<table>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<table cellpadding='0' cellspacing='0' align="right">
<tr>
<td rowspan="3">
<asp:TextBox ID='txt_prefijo' runat='server' MaxLength='10' CssClass='txt_formulario'
BorderWidth="0px" BackColor="transparent" Font-Bold="true" Width="50px"></asp:TextBox><asp:Label
ID="lbl_separador" runat="server" Text="-"></asp:Label>
</td>
</tr>
<tr>
<td>
<asp:Label ID='lbl_documento_numero_busDesde' runat='server' CssClass=''></asp:Label>
</td>
<td align='right'>
</td>
</tr>
<tr>
<td align='right'>
<asp:Label ID='lbl_documento_numero_busA' runat='server' CssClass=''></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='left'>
<asp:TextBox ID='txt_documento_numero' runat='server' CssClass='txt_entero' ReadOnly="True"></asp:TextBox><act:FilteredTextBoxExtender
ID='ftb_documento_numero' runat='server' TargetControlID='txt_documento_numero'
FilterType='Numbers' />
</td>
</tr>
<tr>
<td align='left'>
<asp:TextBox ID='txt_documento_numero_bus' runat='server' CssClass='txt_entero_bus'></asp:TextBox><act:FilteredTextBoxExtender
ID='ftb_documento_numero_bus' runat='server' TargetControlID='txt_documento_numero_bus'
FilterType='Numbers' />
</td>
</tr>
</table>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_subtipoDocumento' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_subtipoDocumento' runat='server' a_str_tabla='doc_subtipoDocumento'
a_bln_obligatorio='True' a_str_grupoValidacion='form' aObol_guardarNoExiste="true" />
</td>
<td>
</td>
</tr>
<tr id="tr_version" runat="server" align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_version' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_version_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_version_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_version' runat='server' CssClass='txt_entero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_version_bus' runat='server' CssClass='txt_entero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_version' runat='server' ControlToValidate='txt_version'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:FilteredTextBoxExtender
ID='ftb_version' runat='server' TargetControlID='txt_version' FilterType='Numbers' />
<act:FilteredTextBoxExtender ID='ftb_version_bus' runat='server' TargetControlID='txt_version_bus'
FilterType='Numbers' />
</td>
</tr>
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_fecha_fh' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_fecha_fh_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_fecha_fh_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fecha_fhCopia' runat='server' a_str_prefijo='ff'></fec:fechaAvanzada>
<fec:fechaAvanzada ID='fec_fecha_fh' runat='server' a_str_prefijo='fh' a_bln_obligatorio='True'
a_str_grupoValidacion='form'></fec:fechaAvanzada>
</td>
</tr>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fecha_fh_bus' runat='server' a_str_prefijo='fh' CssClass="txt_fecha_bus"
CssClassHora="txt_hora_bus"></fec:fechaAvanzada>
</td>
</tr>
</table>
</td>
<td>
</td>
</tr>
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_fechaSugerida_fh' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_fechaSugerida_fh_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_fechaSugerida_fh_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaSugerida_fh' runat='server' a_str_prefijo='fh' a_bln_obligatorio='True'
a_str_grupoValidacion='form'></fec:fechaAvanzada>
</td>
</tr>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaSugerida_fh_bus' runat='server' a_str_prefijo='fh'
CssClass="txt_fecha_bus" CssClassHora="txt_hora_bus"></fec:fechaAvanzada>
</td>
</tr>
</table>
</td>
<td>
</td>
</tr>
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_fechaCierre_ff' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_fechaCierre_ff_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_fechaCierre_ff_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaCierre_ff' runat='server' a_str_prefijo='ff'></fec:fechaAvanzada>
</td>
</tr>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaCierre_ff_bus' runat='server' a_str_prefijo='ff'
CssClass="txt_fecha_bus" CssClassHora="txt_hora_bus"></fec:fechaAvanzada>
</td>
</tr>
</table>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_prioridadDocumento' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_prioridadDocumento' runat='server' a_str_tabla='doc_prioridadDocumento'
a_bln_obligatorio='True' a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_fechaLimite_fh' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_fechaLimite_fh_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_fechaLimite_fh_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaLimite_fh' runat='server' a_str_prefijo='fh' a_bln_obligatorio='True'
a_str_grupoValidacion='form'></fec:fechaAvanzada>
</td>
</tr>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaLimite_fh_bus' runat='server' a_str_prefijo='fh'
CssClass="txt_fecha_bus" CssClassHora="txt_hora_bus"></fec:fechaAvanzada>
</td>
</tr>
</table>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_tercero_cliente' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tercero_cliente' runat='server' a_str_tabla='ter_tercero'
a_bln_obligatorio='True' a_str_grupoValidacion='form' a_bol_postBack="true" />
</td>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
</td>
<td class="td_controlesFormulario">
<asp:Label ID="lbl_clienteBloqueado" runat="server" CssClass="lbl_mensaje" Visible="False"
Text="<%$Resources:res_etiquetas_ort,clienteBloqueado %>"></asp:Label>
</td>
<td>
</td>
</tr>
<tr>
<td>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_id_sucursal" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<bus:busquedaAvanzada ID="bus_sucursal" runat="server" a_str_grupoValidacion="form"
a_bln_obligatorio="false" a_bol_postBack="true" a_str_tabla="ter_sucursal" />
</td>
<td>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
</td>
<td class="td_controlesFormulario">
<asp:Label ID="lbl_sucursalBloqueado" runat="server" CssClass="lbl_mensaje" 
Visible="False"></asp:Label>
</td>
<td>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_id_equipo" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<bus:busquedaAvanzada ID="bus_equipo" runat="server" 
a_bln_mostrarNuevoConDrop="true" a_bln_obligatorio="False" a_str_grupoValidacion="form"
a_bol_postBack="True" a_str_campo="equipo,equipo_serial,equipo_codigo" 
a_str_tabla="equ_equipo" />
<uc2:equ_documentosCurso ID="eqSols" runat="server" 
a_bol_mostrarInfoEquipo="true" a_bol_mostrarOT="True" a_bol_mostrarSOL="True"/>
</td>
<td>
</td>
</tr>
<tr>
<td>
</td>
<td>
</td>
<td class="td_controlesFormulario">
<asp:Label ID="lbl_estadoEquipo" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_id_usuario_asesor" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
<bus:busquedaAvanzada ID="bus_usuario_asesor" runat="server" 
a_bln_obligatorio="True" a_str_grupoValidacion="form" 
a_str_tabla="seg_usuario" />
</td>
<td>
</td>
</tr>
<tr runat="server" visible="false">
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_id_documento" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
<bus:busquedaAvanzada ID="bus_documento" runat="server" 
a_bln_obligatorio="True" a_str_grupoValidacion="form" 
a_str_tabla="doc_documento" />
</td>
<td>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_documento_cotizacion" runat="server" 
CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:TextBox ID="txt_documento_cotizacion" runat="server" 
CssClass="txt_multilinea" MaxLength="100"></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID="rfv_documento_cotizacion" runat="server" 
ControlToValidate="txt_documento_cotizacion" CssClass="lbl_mensaje" 
ForeColor="" SetFocusOnError="True" ValidationGroup="form">*</asp:RequiredFieldValidator>
</td>
</tr>

<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_contacto" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:TextBox ID="txt_contacto" runat="server" CssClass="txt_multilinea" 
MaxLength="100"></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID="rfv_contacto" runat="server" 
ControlToValidate="txt_contacto" CssClass="lbl_mensaje" ForeColor="" 
SetFocusOnError="True" ValidationGroup="form">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_cargo" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:TextBox ID="txt_cargo" runat="server" CssClass="txt_multilinea" 
MaxLength="100"></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_cargo' runat='server' ControlToValidate='txt_cargo'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_email" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:TextBox ID="txt_email" runat="server" CssClass="txt_multilinea" a_bln_obligatorio='True'
MaxLength="100" ValidationGroup="form"></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID="rfv_email" runat="server" 
ControlToValidate="txt_email" CssClass="lbl_mensaje" Enabled="True" 
ForeColor="" SetFocusOnError="True" ValidationGroup="form">*</asp:RequiredFieldValidator>
</td>
</tr>

<tr>
<td align="right" ID="td_telefono" runat="server" >
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_telefono" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:TextBox ID="txt_telefono" runat="server" CssClass="lbl" MaxLength="100"></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID="rfv_telefono" runat="server" 
ControlToValidate="txt_telefono" CssClass="lbl_mensaje" Enabled="true" 
ForeColor="" SetFocusOnError="True" ValidationGroup="form">*</asp:RequiredFieldValidator>
</td>

</tr>

<td align="right">
</td>
<td>
<table cellpadding="0" cellspacing="0">
<tr>
<td align="right">
<asp:Label ID="lbl_validez" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td align="right" style="padding-left: 8px">
<asp:Label ID="lbl_validez_busDesde" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align="right">
<asp:Label ID="lbl_validez_busA" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
</tr>
</table>
</td>
<td class="td_controlesFormulario">
<table cellpadding="0" cellspacing="0">
<tr>
<td>
<asp:TextBox ID="txt_validez" runat="server" CssClass="txt_entero"></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID="txt_validez_bus" runat="server" CssClass="txt_entero_bus"></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
ControlToValidate="txt_validez" CssClass="lbl_mensaje" Enabled="True" 
ForeColor="" SetFocusOnError="True" ValidationGroup="form">*</asp:RequiredFieldValidator>
</td>
</tr>
</table>
</td>
<td>
<asp:RequiredFieldValidator ID="rfv_validez" runat="server" 
ControlToValidate="txt_validez" CssClass="lbl_mensaje" ForeColor="" 
SetFocusOnError="True" ValidationGroup="form">*</asp:RequiredFieldValidator>
<act:FilteredTextBoxExtender ID="ftb_validez" runat="server" 
FilterType="Numbers" TargetControlID="txt_validez" />
<act:FilteredTextBoxExtender ID="ftb_validez_bus" runat="server" 
FilterType="Numbers" TargetControlID="txt_validez_bus" />
</td>
</tr>
</tr>
</table>
</td>
<td class='td_separadorFormulario' rowspan='2'>
<img alt='' src='../../images/interfaz/spacer.gif' width='12' />
</td>
<td class='td_controlesFormulario tr_informacion' rowspan='2' style='height: 100%' valign='bottom'>
<table>

<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_usuarioAsignado" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<bus:busquedaAvanzada ID="bus_usuarioAsignado" runat="server" a_str_tabla="seg_usuario"  a_bln_obligatorio="True" a_str_grupoValidacion="form" />
</td>
<td>
</td>
</tr>

<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_encabezado' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_encabezado' runat='server' a_bln_obligatorio='false' a_str_grupoValidacion='form'>
</txt:textoAvanzado>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_condiciones' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_condiciones' runat='server' a_bln_obligatorio='False' a_str_grupoValidacion='form'>
</txt:textoAvanzado>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_notas' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_notas' runat='server' a_bln_obligatorio="false" a_str_grupoValidacion='form'>
</txt:textoAvanzado>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_documento_codigo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_documento_codigo' runat='server' a_bln_obligatorio="false" a_str_grupoValidacion='form' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>    
<asp:RequiredFieldValidator ID='rfv_documento_codigo' runat='server' ControlToValidate='txt_documento_codigo'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
<td>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="Label1" runat="server" CssClass="lbl" Text="<%$ Resources:res_etiquetas_ort,contactos %>"></asp:Label>
</td>
<td class="td_controlesFormulario">
<uc1:busquedaAvanzadaMultiple ID="busContactos" runat="server" a_str_tabla="ter_contacto"
/>
</td>
<td>
</td>
</tr>
<tr runat="server" id="tr_esAIU">
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_esAIU' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_esAIU' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
RepeatLayout='Flow' AutoPostBack="true">
<asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
<asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_esAIU' runat='server' ControlToValidate='rbl_esAIU'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr runat="server" id="tr_porcentajeA" align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_procentajeA' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_procentajeA_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_procentajeA_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_procentajeA' runat='server' CssClass='txt_numero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_procentajeA_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<act:FilteredTextBoxExtender ID='ftb_procentajeA' runat='server' TargetControlID='txt_procentajeA'
FilterType='Numbers,Custom' />
<act:FilteredTextBoxExtender ID='ftb_procentajeA_bus' runat='server' TargetControlID='txt_procentajeA_bus'
FilterType='Numbers,Custom' />
</td>
</tr>
<tr runat="server" id="tr_porcentajeI" align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_procentajeI' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_procentajeI_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_procentajeI_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_procentajeI' runat='server' CssClass='txt_numero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_procentajeI_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<act:FilteredTextBoxExtender ID='ftb_procentajeI' runat='server' TargetControlID='txt_procentajeI'
FilterType='Numbers,Custom' />
<act:FilteredTextBoxExtender ID='ftb_procentajeI_bus' runat='server' TargetControlID='txt_procentajeI_bus'
FilterType='Numbers,Custom' />
</td>
</tr>
<tr runat="server" id="tr_porcentajeU" align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_procentajeU' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_procentajeU_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_procentajeU_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_procentajeU' runat='server' CssClass='txt_numero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_procentajeU_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<act:FilteredTextBoxExtender ID='ftb_procentajeU' runat='server' TargetControlID='txt_procentajeU'
FilterType='Numbers,Custom' />
<act:FilteredTextBoxExtender ID='ftb_procentajeU_bus' runat='server' TargetControlID='txt_procentajeU_bus'
FilterType='Numbers,Custom' />
</td>
</tr>
<tr runat="server" id="tr_valorA" align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_valorA' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_valorA_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_valorA_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_valorA' runat='server' CssClass='txt_numero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_valorA_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<act:FilteredTextBoxExtender ID='ftb_valorA' runat='server' TargetControlID='txt_valorA'
FilterType='Numbers,Custom' />
<act:FilteredTextBoxExtender ID='ftb_valorA_bus' runat='server' TargetControlID='txt_valorA_bus'
FilterType='Numbers,Custom' />
</td>
</tr>
<tr runat="server" id="tr_valorI" align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_valorI' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_valorI_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_valorI_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_valorI' runat='server' CssClass='txt_numero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_valorI_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<act:FilteredTextBoxExtender ID='ftb_valorI' runat='server' TargetControlID='txt_valorI'
FilterType='Numbers,Custom' />
<act:FilteredTextBoxExtender ID='ftb_valorI_bus' runat='server' TargetControlID='txt_valorI_bus'
FilterType='Numbers,Custom' />
</td>
</tr>
<tr runat="server" id="tr_valorU" align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_valorU' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_valorU_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_valorU_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_valorU' runat='server' CssClass='txt_numero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_valorU_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<act:FilteredTextBoxExtender ID='ftb_valorU' runat='server' TargetControlID='txt_valorU'
FilterType='Numbers,Custom' />
<act:FilteredTextBoxExtender ID='ftb_valorU_bus' runat='server' TargetControlID='txt_valorU_bus'
FilterType='Numbers,Custom' />
</td>
</tr>
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_subtotal' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_subtotal_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_subtotal_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_subtotal' runat='server' CssClass='txt_numero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_subtotal_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_subtotal' runat='server' ControlToValidate='txt_subtotal'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor=""
Enabled="False">*</asp:RequiredFieldValidator><act:FilteredTextBoxExtender ID='ftb_subtotal'
runat='server' TargetControlID='txt_subtotal' FilterType='Numbers,Custom' />
<act:FilteredTextBoxExtender ID='ftb_subtotal_bus' runat='server' TargetControlID='txt_subtotal_bus'
FilterType='Numbers,Custom' />
</td>
</tr>
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_descuento' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_descuento_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_descuento_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_descuento' runat='server' CssClass='txt_numero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_descuento_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_descuento' runat='server' ControlToValidate='txt_descuento'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor=""
Enabled="false">*</asp:RequiredFieldValidator><act:FilteredTextBoxExtender ID='ftb_descuento'
runat='server' TargetControlID='txt_descuento' FilterType='Numbers,Custom' />
<act:FilteredTextBoxExtender ID='ftb_descuento_bus' runat='server' TargetControlID='txt_descuento_bus'
FilterType='Numbers,Custom' />
</td>
</tr>
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_iva' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_iva_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_iva_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_iva' runat='server' CssClass='txt_numero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_iva_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_iva' runat='server' ControlToValidate='txt_iva'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor=""
Enabled="false">*</asp:RequiredFieldValidator><act:FilteredTextBoxExtender ID='ftb_iva'
runat='server' TargetControlID='txt_iva' FilterType='Numbers,Custom' />
<act:FilteredTextBoxExtender ID='ftb_iva_bus' runat='server' TargetControlID='txt_iva_bus'
FilterType='Numbers,Custom' />
</td>
</tr>
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_total' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_total_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_total_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_total' runat='server' CssClass='txt_numero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_total_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_total' runat='server' ControlToValidate='txt_total'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor=""
Enabled="false">*</asp:RequiredFieldValidator><act:FilteredTextBoxExtender ID='ftb_total'
runat='server' TargetControlID='txt_total' FilterType='Numbers,Custom' />
<act:FilteredTextBoxExtender ID='ftb_total_bus' runat='server' TargetControlID='txt_total_bus'
FilterType='Numbers,Custom' />
</td>
</tr>
<tr align='right' runat="server" visible="false" >
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_costo' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_costo_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_costo_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_costo' runat='server' CssClass='txt_numero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_costo_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_costo' runat='server' ControlToValidate='txt_costo'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor=""
Enabled="false">*</asp:RequiredFieldValidator><act:FilteredTextBoxExtender ID='ftb_costo'
runat='server' TargetControlID='txt_costo' FilterType='Numbers,Custom' />
<act:FilteredTextBoxExtender ID='ftb_costo_bus' runat='server' TargetControlID='txt_costo_bus'
FilterType='Numbers,Custom' />
</td>
</tr>
<tr align='right' runat="server" visible="false">
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_rentabilidad' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_rentabilidad_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_rentabilidad_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_rentabilidad' runat='server' CssClass='txt_numero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_rentabilidad_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_rentabilidad' runat='server' ControlToValidate='txt_rentabilidad'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor=""
Enabled="false">*</asp:RequiredFieldValidator><act:FilteredTextBoxExtender ID='ftb_rentabilidad'
runat='server' TargetControlID='txt_rentabilidad' FilterType='Numbers,Custom' />
<act:FilteredTextBoxExtender ID='ftb_rentabilidad_bus' runat='server' TargetControlID='txt_rentabilidad_bus'
FilterType='Numbers,Custom' />
</td>
</tr>
<tr align='right' runat="server" visible="false">
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_trm' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_trm_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_trm_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_trm' runat='server' CssClass='txt_numero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_trm_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_trm' runat='server' ControlToValidate='txt_trm'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:FilteredTextBoxExtender
ID='ftb_trm' runat='server' TargetControlID='txt_trm' FilterType='Numbers,Custom' />
<act:FilteredTextBoxExtender ID='ftb_trm_bus' runat='server' TargetControlID='txt_trm_bus'
FilterType='Numbers,Custom' />
</td>
</tr>
<tr runat="server" visible="false">
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_tercero_proveedor' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tercero_proveedor' runat='server' a_str_tabla='ter_tercero'
a_bln_obligatorio='True' a_str_grupoValidacion='form' a_str_filtros="esProveedor=1" />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_moneda' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_moneda' runat='server' a_str_tabla='gen_moneda' a_bln_obligatorio='True'
a_str_grupoValidacion='form'/>
</td>
<td>
</td>

</tr>


<tr style="display: none;">
<asp:Button ID="bus_moneda_valor" style="display: none;" Runat="server"  ValidationGroup="false"/>
</tr>


<tr ID="td_trm" runat="server" style="display: none;">
<td align='right' ID="td_cot_trm" runat="server" >
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_cot_trm' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:TextBox ID="txt_cot_trm" runat="server" MaxLength="100"></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID="rfv_cot_trm" runat="server" 
ControlToValidate="txt_cot_trm" CssClass="lbl_mensaje" Enabled="false" 
ForeColor="" SetFocusOnError="True" ValidationGroup="form">*</asp:RequiredFieldValidator>
</td>
</tr>

<tr runat="server" visible="false">
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_motivoestado' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_motivoestado' runat='server' a_str_tabla='doc_motivoestado'
a_bln_obligatorio='True' a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_estadoTipoDocumento' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_estadoTipoDocumento' runat='server' a_str_tabla='doc_estadoTipoDocumento'
a_str_grupoValidacion='form' a_bln_obligatorio='True' />
</td>
<td>
</td>
</tr>
</table>
<table id='tbl_guardarformulario'>
<tr>
<td>
<asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje'
ForeColor='' />
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
<td valign='middle' align='right'>
<bti:BotonImagen ID='imbGuardar' runat='server' ImageUrl='../../images/botones/aceptar.png'
ValidationGroup='form' CssClass='imb' />
</td>
</tr>
</table>
</td>
</tr>
</table>
</asp:Panel>
</td>
</tr>
</table>
<asp:HiddenField ID='hddEstadoFormulario' runat='server' Value='<%# samm_logica.enu_estadoFormulario.buscar %>' />
<boc:bocadillo ID="Bocadillo" runat="server" />
