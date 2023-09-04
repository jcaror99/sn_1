<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="doc_documento_gasto.ascx.vb" Inherits="website.samm_componentes.controles_seg_doc_documento_gasto" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>


&nbsp;&nbsp;<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
TagPrefix="uc1" %>

<table class='tbl_marcoFormulario'>
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
<asp:TextBox ID='txt_documento_numero' runat='server' CssClass='txt_entero' ReadOnly="True"></asp:TextBox><act:filteredtextboxextender
id='ftb_documento_numero' runat='server' targetcontrolid='txt_documento_numero'
filtertype='Numbers' />
</td>
</tr>
<tr>
<td align='left'>
<asp:TextBox ID='txt_documento_numero_bus' runat='server' CssClass='txt_entero_bus'></asp:TextBox><act:filteredtextboxextender
id='ftb_documento_numero_bus' runat='server' targetcontrolid='txt_documento_numero_bus'
filtertype='Numbers' />
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

<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_prioridadDocumento' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_prioridadDocumento' runat='server' a_str_tabla='doc_prioridadDocumento'
a_bln_obligatorio='True' a_str_grupoValidacion='form' a_str_filtros="id_tipoDocumento=11" />
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
<asp:Label ID='lbl_fecha_ff' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_fecha_ff_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_fecha_ff_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fecha_ff' runat='server' a_str_prefijo='fh' a_bln_obligatorio='True'
a_str_grupoValidacion='form'></fec:fechaAvanzada>
</td>
</tr>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fecha_ff_bus' runat='server' a_str_prefijo='fh' a_str_grupoValidacion='form'
CssClass="txt_fecha_bus" CssClassHora="txt_hora_bus" a_bln_obligatorio='False'></fec:fechaAvanzada>
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
<asp:Label ID='lbl_documento_gasto' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado  ID='txt_documentoGasto' runat='server' a_bln_obligatorio="false"  ></txt:textoAvanzado >

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
<asp:TextBox ID='txt_documento_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_documento_codigo' runat='server' ControlToValidate='txt_documento_codigo'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>

<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_solicitante" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
  <uc1:busquedaAvanzada ID="busSolicitante" runat="server" a_str_tabla="seg_usuario" />
</td>
<td>
<%--<asp:RequiredFieldValidator ID='rfv_concatato' runat='server' ControlToValidate='busContactos'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>--%>
</td>
</tr>

<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_dias' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_dias' runat='server' CssClass='txt_numero'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rf_dias' runat='server' ControlToValidate='txt_dias'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
<td>
<act:FilteredTextBoxExtender ID='ftb_dias' runat='server' TargetControlID='txt_dias'
FilterType='Numbers,Custom' />

</td>
</tr>

</table>

</td>
<td class='td_separadorFormulario' rowspan='2'>
<img alt='' src='../../images/interfaz/spacer.gif' width='12' />
</td>
<td class='td_controlesFormulario' rowspan='2' style='height: 100%' valign='bottom'>
<table>

<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_concepto' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado  ID='txt_concepto' runat='server' a_bln_obligatorio="false"  ></txt:textoAvanzado >

</td>
<td>
</td>
</tr>

<tr>
<td class="td_lblFormulario">
<asp:Label ID='lbl_consignado' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
 
   <asp:RadioButtonList ID='rbl_consignado' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
RepeatLayout='Flow'>
<asp:ListItem Value='1' Text='SI'></asp:ListItem>
<asp:ListItem Value='0' Text='NO'></asp:ListItem>
</asp:RadioButtonList>
</td>

<asp:RequiredFieldValidator ID='rfv_consignado' runat='server' ControlToValidate='rbl_consignado'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</tr>

<tr>

<td class="td_lblFormulario">
<asp:Label ID="lbl_estados" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<bus:busquedaAvanzada ID="bus_estados" runat="server" a_str_tabla="doc_estadoTipoDocumento" />
</td>
<td>
</td>
</tr>

</table>
<table id='tbl_guardarformulario'  Visible="true">
<tr>
<td>
<asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje'
ForeColor='' />
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
<td valign='middle' align='right'>
<bti:BotonImagen ID='imbGuardar' runat='server'  Visible="true" ImageUrl='../../images/botones/aceptar.png'
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
