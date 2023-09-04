<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='cnt_periodoContrato.ascx.vb' Inherits='website.samm_componentes.controles_seg_cnt_periodoContrato' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table class='tbl_marcoFormulario'><tr><td> 
<asp:Panel ID='pan_formulario' runat='server' DefaultButton='imbGuardar'>
<table class='tbl_formulario' border='0' cellpadding='0' cellspacing='0'>
<tr><td align='right' colspan='1' class='td_formEspacioH'><img alt="" src="../../images/interfaz/spacer.gif" style="width:17px;height:1px" /><img alt='' src='../../images/interfaz/spacer.gif' style='width:17px;height:1px' /></td><td align='right' colspan='3' class='td_formEspacioV'></td></tr><tr><td align='right'></td><td align='right' valign='top'><act:ToggleButtonExtender ID='ToggleButtonExtender1' runat='server' CheckedImageAlternateText='<%$ Resources:res_controles,ayuda_especificano %>' CheckedImageUrl='../../images/iconos/ojo1.png' ImageHeight='26' ImageWidth='30' TargetControlID='chb_ayudaCampo' UncheckedImageAlternateText='<%$ Resources:res_controles,ayuda_especifica %>' UncheckedImageUrl='../../images/iconos/ojo2.png'></act:ToggleButtonExtender><table border='0' cellpadding='0' cellspacing='0' id='tbl_estadoformulario'><tr><td><asp:Label ID='lbl_estadoFormulario' runat='server' CssClass='lbl_estadoFormulario'></asp:Label></td><td><asp:CheckBox ID='chb_ayudaCampo' runat='server' AutoPostBack='True' CssClass='chb' /></td></tr></table><table>
<tr>
<td align='right'></td>        <td class='td_lblFormulario'>
<asp:Label ID='lbl_periodoContrato' runat='server' cssclass='lblobligatorio'></asp:Label></td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_periodoContrato' runat='server'  MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>        <td>
<asp:RequiredFieldValidator ID='rfv_periodoContrato' runat='server' ControlToValidate='txt_periodoContrato' ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="" >*</asp:RequiredFieldValidator>
</td>     </tr>
<tr>
<td align='right'></td>        <td class='td_lblFormulario'>
<asp:Label ID='lbl_periodoContrato_codigo' runat='server' cssclass='lbl'></asp:Label></td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_periodoContrato_codigo' runat='server'  MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>        <td>
</td>     </tr>
</table>
<table id='tbl_guardarformulario'><tr><td><asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje' ForeColor='' /></td><td valign='middle' align='right'>
<bti:BotonImagen ID='imbGuardar' runat='server' ImageUrl='../../images/botones/aceptar.png'  ValidationGroup='form'  CssClass='imb'/>
</td></tr></table></td></tr></table>
</asp:Panel></td></tr></table>
<asp:HiddenField ID='hddEstadoFormulario' runat='server' Value='<%# samm_logica.enu_estadoFormulario.buscar %>' />
<boc:bocadillo ID="Bocadillo" runat="server" />