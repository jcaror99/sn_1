<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='doc_prioridadDocumento.ascx.vb'
Inherits='website.samm_componentes.controles_seg_doc_prioridadDocumento_N' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table class='tbl_marcoFormulario'>
<tr>
<td>
<asp:Panel ID='pan_formulario' runat='server' DefaultButton='imbGuardar'>
<table class='tbl_formulario' border='0' cellpadding='0' cellspacing='0'>
<tr>
<td align='right' colspan='1' class='td_formEspacioH'>
<img alt="" src="../../images/interfaz/spacer.gif" style="width: 17px; height: 1px" />
</td>
<td align='right' colspan='3' class='td_formEspacioV'>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td align='right' valign='top'>
<act:togglebuttonextender id='ToggleButtonExtender1' runat='server' checkedimagealternatetext='<%$ Resources:res_controles,ayuda_especificano %>'
checkedimageurl='../../images/iconos/ojo1.png' imageheight='26' imagewidth='30'
targetcontrolid='chb_ayudaCampo' uncheckedimagealternatetext='<%$ Resources:res_controles,ayuda_especifica %>'
uncheckedimageurl='../../images/iconos/ojo2.png'></act:togglebuttonextender>
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
<asp:Label ID='lbl_prioridadDocumento' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_prioridadDocumento' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_prioridadDocumento' runat='server' ControlToValidate='txt_prioridadDocumento'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_prioridadDocumento_codigo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_prioridadDocumento_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
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
    <asp:Label ID='lbl_tiempoRespuesta' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
    <asp:Label ID='lbl_tiempoRespuesta_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
    <asp:Label ID='lbl_tiempoRespuesta_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
    <asp:TextBox ID='txt_tiempoRespuesta' runat='server' CssClass='txt_entero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
    <asp:TextBox ID='txt_tiempoRespuesta_bus' runat='server' CssClass='txt_entero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_tiempoRespuesta' runat='server' ControlToValidate='txt_tiempoRespuesta'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
id='ftb_tiempoRespuesta' runat='server' targetcontrolid='txt_tiempoRespuesta'
filtertype='Numbers' /><act:filteredtextboxextender id='ftb_tiempoRespuesta_bus'
    runat='server' targetcontrolid='txt_tiempoRespuesta_bus' filtertype='Numbers' />
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_tipoDocumento' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tipoDocumento' runat='server' a_str_tabla='doc_tipoDocumento'
a_bln_obligatorio='True' a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_estrategiaPrioridad' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_estrategiaPrioridad' runat='server' a_str_tabla='doc_estrategiaPrioridad'
a_bln_obligatorio='True' a_str_grupoValidacion='form' a_str_campo="estrategiaPrioridad" />
</td>
<td>
</td>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
    <asp:Label ID='lbl_orden' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
    <asp:TextBox runat="server" ID="txt_orden" Width="50" CssClass='txt_entero'></asp:TextBox>
</td>
</tr>
</tr>
</table>
<table id='tbl_guardarformulario'>
<tr>
<td>
<asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje'
ForeColor='' />
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
