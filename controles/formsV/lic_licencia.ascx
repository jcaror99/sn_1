<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='lic_licencia.ascx.vb' Inherits='website.samm_componentes.controles_seg_lic_licencia' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table class='tbl_marcoFormulario'><tr><td> 
<asp:Panel ID='pan_formulario' runat='server' DefaultButton='imbGuardar'>
<table class='tbl_formulario' border='0' cellpadding='0' cellspacing='0'>
<tr><td align='right' colspan='1' class='td_formEspacioH'><img alt='' src='../../images/interfaz/spacer.gif' style='width:17px;height:1px' /></td><td align='right' colspan='3' class='td_formEspacioV'></td></tr><tr><td align='right'></td><td align='right' valign='top'><act:ToggleButtonExtender ID='ToggleButtonExtender1' runat='server' CheckedImageAlternateText='<%$ Resources:res_controles,ayuda_especificano %>' CheckedImageUrl='../../images/iconos/ojo1.png' ImageHeight='26' ImageWidth='30' TargetControlID='chb_ayudaCampo' UncheckedImageAlternateText='<%$ Resources:res_controles,ayuda_especifica %>' UncheckedImageUrl='../../images/iconos/ojo2.png'></act:ToggleButtonExtender><table border='0' cellpadding='0' cellspacing='0' id='tbl_estadoformulario'><tr><td><asp:Label ID='lbl_estadoFormulario' runat='server' CssClass='lbl_estadoFormulario'></asp:Label></td><td><asp:CheckBox ID='chb_ayudaCampo' runat='server' AutoPostBack='True' CssClass='chb' /></td></tr></table><table>
<tr>
<td align='right'></td>        <td class='td_lblFormulario'>
<asp:Label ID='lbl_licencia' runat='server' cssclass='lblobligatorio'></asp:Label></td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_licencia' runat='server'  MaxLength='300' CssClass='txt_multilinea'></asp:TextBox>
</td>        <td>
<asp:RequiredFieldValidator ID='rfv_licencia' runat='server' ControlToValidate='txt_licencia' ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="" >*</asp:RequiredFieldValidator>
</td>     </tr>
<tr>
<td align='right'></td>        <td class='td_lblFormulario'>
<asp:Label ID='lbl_licencia_codigo' runat='server' cssclass='lbl'></asp:Label></td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_licencia_codigo' runat='server'  MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>        <td>
</td>     </tr>
<tr>
<td align='right'></td>        <td class='td_lblFormulario'>
<asp:Label ID='lbl_serial' runat='server' cssclass='lbl'></asp:Label></td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_serial' runat='server' />
<%--<asp:TextBox   MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>--%>
</td>        <td>
</td>     </tr>
<tr>
<td align='right'></td>        <td class='td_lblFormulario'>
<asp:Label ID='lbl_clave' runat='server' cssclass='lbl'></asp:Label></td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_clave' runat='server'  MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>        <td>
</td>     </tr>
</table>
</td><td class='td_separadorFormulario' rowspan='2'><img alt='' src='../../images/interfaz/spacer.gif' width='12px' /></td><td class='td_controlesFormulario' rowspan='2' style='height:100%' valign='bottom'><table> 
<tr align='right'>
<td align='right'></td>        <td>
<table cellpadding='0' cellspacing='0'><tr><td  align='right'>
<asp:Label ID='lbl_fechaInicio_ff' runat='server' cssclass='lblobligatorio'></asp:Label></td>
<td align='right' style='padding-left:8px'>
<asp:Label ID='lbl_fechaInicio_ff_busDesde' runat='server' cssclass='lblobligatorio'></asp:Label></td>
</tr><tr><td></td>
<td align='right'>
<asp:Label ID='lbl_fechaInicio_ff_busA' runat='server' cssclass='lblobligatorio'></asp:Label></td>
</tr></table></td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'><tr><td>
<fec:fechaAvanzada ID='fec_fechaInicio_ff' runat='server'  a_str_prefijo='ff'  a_bln_obligatorio='true' a_str_grupoValidacion='form' ></fec:fechaAvanzada></td></tr>
<tr><td>
<fec:fechaAvanzada ID='fec_fechaInicio_ff_bus' runat='server' cssclass='txt_fecha_bus' cssclasshora='txt_hora_bus' a_str_prefijo='ff' ></fec:fechaAvanzada></td></tr></table></td>   <td>
</td>     </tr>
<tr align='right'>
<td align='right'></td>        <td>
<table cellpadding='0' cellspacing='0'><tr><td  align='right'>
<asp:Label ID='lbl_fechaFin_ff' runat='server' cssclass='lblobligatorio'></asp:Label></td>
<td align='right' style='padding-left:8px'>
<asp:Label ID='lbl_fechaFin_ff_busDesde' runat='server' cssclass='lblobligatorio'></asp:Label></td>
</tr><tr><td></td>
<td align='right'>
<asp:Label ID='lbl_fechaFin_ff_busA' runat='server' cssclass='lblobligatorio'></asp:Label></td>
</tr></table></td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'><tr><td>
<fec:fechaAvanzada ID='fec_fechaFin_ff' runat='server'  a_str_prefijo='ff'  a_bln_obligatorio='true' a_str_grupoValidacion='form' ></fec:fechaAvanzada></td></tr>
<tr><td>
<fec:fechaAvanzada ID='fec_fechaFin_ff_bus' runat='server' cssclass='txt_fecha_bus' cssclasshora='txt_hora_bus' a_str_prefijo='ff' ></fec:fechaAvanzada></td></tr></table></td>   <td>
</td>     </tr>
<tr>
<td align='right'></td>        <td class='td_lblFormulario'>
<asp:Label ID='lbl_id_tercero' runat='server' cssclass='lblobligatorio'></asp:Label></td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tercero' runat='server' a_str_tabla='ter_tercero' a_bln_obligatorio='True' a_str_grupoValidacion='form'  /></td>        <td>
</td>     </tr>
<tr>
<td align='right'></td>        <td class='td_lblFormulario'>
<asp:Label ID='lbl_id_catalogo' runat='server' cssclass='lblobligatorio'></asp:Label></td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_catalogo' runat='server' a_str_tabla='cat_catalogo' a_bln_obligatorio='True' a_str_grupoValidacion='form'  /></td>        <td>
</td>     </tr>
</table>
<table id='tbl_guardarformulario'><tr><td><asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje' ForeColor='' /></td><td valign='middle' align='right'>
<bti:BotonImagen ID='imbGuardar' runat='server' ImageUrl='../../images/botones/aceptar.png'  ValidationGroup='form'  CssClass='imb'/>
</td></tr></table></td></tr></table>
</asp:Panel></td></tr></table>
<asp:HiddenField ID='hddEstadoFormulario' runat='server' Value='<%# samm_logica.enu_estadoFormulario.buscar %>' />
<boc:bocadillo ID="Bocadillo" runat="server" />