<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='doc_flujoDocumento.ascx.vb'
Inherits='website.samm_componentes.controles_seg_doc_flujoDocumento' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table class='tbl_marcoFormulario'>
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
<asp:Label ID='lbl_flujoDocumento' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_flujoDocumento' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_flujoDocumento' runat='server' ControlToValidate='txt_flujoDocumento'
    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_flujoDocumento_codigo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_flujoDocumento_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_restrictivo' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_restrictivo' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
    RepeatLayout='Flow'>
    <asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
    <asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_restrictivo' runat='server' ControlToValidate='rbl_restrictivo'
    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_subtipoDocumento_origen' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_subtipoDocumento_origen' runat='server' a_str_tabla='doc_subtipoDocumento'
    a_bln_obligatorio='False' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_subtipoDocumento_destino' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_subtipoDocumento_destino' runat='server' a_str_tabla='doc_subtipoDocumento'
    a_bln_obligatorio='True' a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_estadoTipoDocumento_origen' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_estadoTipoDocumento_origen' runat='server' a_str_tabla='doc_estadoTipoDocumento'
    a_bln_obligatorio='False' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_estadoTipoDocumento_resultado' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_estadoTipoDocumento_resultado' runat='server' a_str_tabla='doc_estadoTipoDocumento'
    a_bln_obligatorio='False' />
</td>
<td>
</td>
</tr>
<tr>
<td align="right">
&nbsp;
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_replicarItems" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:DropDownList ID="drp_replicarItems" runat="server">
    <asp:ListItem Value="0" Text='<%$Resources:res_controles,noReplica %>'></asp:ListItem>
    <asp:ListItem Value="1" Text='<%$Resources:res_controles,planeadoAPlaneado %>'></asp:ListItem>
    <asp:ListItem Value="2" Text='<%$Resources:res_controles,planeadoAEjecutado %>'></asp:ListItem>
    <asp:ListItem Value="3" Text='<%$Resources:res_controles,ejecutadoAPlaneado %>'></asp:ListItem>
</asp:DropDownList>
</td>
<td>
&nbsp;
</td>
</tr>
<tr>
<td align="right">
&nbsp;
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_replicarItemsActividades" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:DropDownList ID="drp_replicarItemsActividades" runat="server">
    <asp:ListItem Value="0" Text='<%$Resources:res_controles,noReplica %>'></asp:ListItem>
    <asp:ListItem Value="1" Text='<%$Resources:res_controles,planeadoAPlaneado %>'></asp:ListItem>
    <asp:ListItem Value="2" Text='<%$Resources:res_controles,planeadoAEjecutado %>'></asp:ListItem>
    <asp:ListItem Value="3" Text='<%$Resources:res_controles,ejecutadoAPlaneado %>'></asp:ListItem>
</asp:DropDownList>
</td>
<td>
&nbsp;
</td>
</tr>

<tr>
<td align="right">
&nbsp;</td>
<td class='td_lblFormulario' >
<asp:Label ID="lbl_replicaComentario" runat="server" CssClass='lbl' ></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:DropDownList ID="drp_comentario" runat="server" CssClass ='drp' >
</asp:DropDownList>
</td>
<td></td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_replicarAtributos' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_replicarAtributos' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
    RepeatLayout='Flow'>
    <asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
    <asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_replicarAtributos' runat='server' ControlToValidate='rbl_replicarAtributos'
    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
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
