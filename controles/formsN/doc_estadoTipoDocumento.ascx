<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='doc_estadoTipoDocumento.ascx.vb'
Inherits='website.samm_componentes.controles_seg_doc_estadoTipoDocumento_N' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Src="~/controles/general/paletaColores.ascx" TagName="paleta" TagPrefix="pal" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table
class='tbl_marcoFormulario'>
<tr>
<td>
<as
<asp:Panel ID='pan_formulario' runat='server' DefaultButton='imbGuardar'>
<table class="tbl_formulario" cellspacing="0" cellpadding="0" border="0">
<tbody>
<tr>
<td class="td_formEspacioH" align="right" colspan="1">
<img style="width: 17px; height: 1px" alt="" src="../../images/interfaz/spacer.gif" />
</td>
<td class="td_formEspacioV" align="right" colspan="3">
</td>
</tr>
<tr>
<td align="right">
</td>
<td valign="top" align="right">
<act:togglebuttonextender id="ToggleButtonExtender1" runat="server" uncheckedimageurl="../../images/iconos/ojo2.png"
uncheckedimagealternatetext="<%$ Resources:res_controles,ayuda_especifica %>"
targetcontrolid="chb_ayudaCampo" imagewidth="30" imageheight="26" checkedimageurl="../../images/iconos/ojo1.png"
checkedimagealternatetext="<%$ Resources:res_controles,ayuda_especificano %>"></act:togglebuttonextender>
<table id="tbl_estadoformulario" cellspacing="0" cellpadding="0" border="0">
<tbody>
<tr>
<td>
<asp:Label ID="lbl_estadoFormulario" runat="server" CssClass="lbl_estadoFormulario"></asp:Label>
</td>
<td>
<asp:CheckBox ID="chb_ayudaCampo" runat="server" CssClass="chb" AutoPostBack="True">
</asp:CheckBox>
</td>
</tr>
</tbody>
</table>
<table>
<tbody>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_estadoTipoDocumento" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:TextBox ID="txt_estadoTipoDocumento" runat="server" CssClass="txt_multilinea"
MaxLength="100"></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID="rfv_estadoTipoDocumento" runat="server" CssClass="lbl_mensaje"
ForeColor="" SetFocusOnError="True" ValidationGroup="form" ControlToValidate="txt_estadoTipoDocumento">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_estadoTipoDocumento_codigo" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:TextBox ID="txt_estadoTipoDocumento_codigo" runat="server" CssClass="txt_multilinea"
MaxLength="100"></asp:TextBox>


</td>
<td>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_id_tipoDocumento" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
<bus:busquedaAvanzada ID="bus_tipoDocumento" runat="server" a_bln_obligatorio="True"
a_str_grupoValidacion="form" a_str_tabla="doc_tipoDocumento" a_bol_postBack="true">
</bus:busquedaAvanzada>
</td>
<td>
</td>
</tr>



<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_afectaIndicador" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:RadioButtonList ID="rbl_afectaIndicador" runat="server" CssClass="rbl" RepeatLayout="Flow"
RepeatDirection="Horizontal">
<asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
<asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
<asp:RequiredFieldValidator ID="rfv_afectaIndicador" runat="server" CssClass="lbl_mensaje"
ForeColor="" SetFocusOnError="True" ValidationGroup="form" ControlToValidate="rbl_afectaIndicador">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_editaDocumento" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:RadioButtonList ID="rbl_editaDocumento" runat="server" CssClass="rbl" RepeatLayout="Flow"
RepeatDirection="Horizontal">
<asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
<asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
<asp:RequiredFieldValidator ID="rfv_editaDocumento" runat="server" CssClass="lbl_mensaje"
ForeColor="" SetFocusOnError="True" ValidationGroup="form" ControlToValidate="rbl_editaDocumento">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr align="right">
<td align="right">
</td>
<td>
<table cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td align="right">
<asp:Label ID="lbl_Orden" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td style="padding-left: 8px" align="right">
<asp:Label ID="lbl_Orden_busDesde" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align="right">
<asp:Label ID="lbl_Orden_busA" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
</tr>
</tbody>
</table>
</td>
<td class="td_controlesFormulario">
<table cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td>
<asp:TextBox ID="txt_Orden" runat="server" CssClass="txt_entero"></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID="txt_Orden_bus" runat="server" CssClass="txt_entero_bus"></asp:TextBox>
</td>
</tr>
</tbody>
</table>
</td>
<td>
<asp:RequiredFieldValidator ID="rfv_Orden" runat="server" CssClass="lbl_mensaje"
ForeColor="" SetFocusOnError="True" ValidationGroup="form" ControlToValidate="txt_Orden">*</asp:RequiredFieldValidator><act:filteredtextboxextender
id="ftb_Orden" runat="server" targetcontrolid="txt_Orden" filtertype="Numbers"></act:filteredtextboxextender><act:filteredtextboxextender
id="ftb_Orden_bus" runat="server" targetcontrolid="txt_Orden_bus" filtertype="Numbers"></act:filteredtextboxextender>
</td>
</tr>
<tr runat="server" visible="false">
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_puedeRegresar" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:RadioButtonList ID="rbl_puedeRegresar" runat="server" CssClass="rbl" RepeatLayout="Flow"
RepeatDirection="Horizontal">
<asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
<asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
<asp:RequiredFieldValidator ID="rfv_puedeRegresar" runat="server" CssClass="lbl_mensaje"
ForeColor="" SetFocusOnError="True" ValidationGroup="form" ControlToValidate="rbl_puedeRegresar">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_color" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
<pal:paleta ID="paleta_color" runat="server" a_bln_obligatorio="true"  a_str_grupoValidacion="form"/>

</td>
<td>

</td>
</tr>

<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_afectaInventario" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:RadioButtonList ID="rbl_afectaInventario" runat="server" CssClass="rbl" RepeatLayout="Flow"
RepeatDirection="Horizontal">
<asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
<asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
<asp:RequiredFieldValidator ID="rfv_afectaInventario" runat="server" CssClass="lbl_mensaje"
ForeColor="" SetFocusOnError="True" ValidationGroup="form" ControlToValidate="rbl_afectaInventario">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr id="tr_permisos" runat="server">
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_permisos" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:RadioButtonList ID="rbl_permisos" runat="server" CssClass="rbl" RepeatLayout="Flow"
RepeatDirection="Horizontal">
<asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
<asp:ListItem Value='0' Selected="True" Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
<asp:RequiredFieldValidator ID="rfv_permisos" runat="server" CssClass="lbl_mensaje"
ForeColor="" SetFocusOnError="True" ValidationGroup="form" ControlToValidate="rbl_permisos">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_descripcion" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<txt:textoAvanzado ID='txt_descripcion' CssClass="txt_formulario" runat='server'>
</txt:textoAvanzado>
</td>
<td>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_sp" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:TextBox ID='txt_sp' CssClass="txt_formulario" runat='server'>
</asp:TextBox> 
</td>
<td>
</td>
</tr>

<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_sp_ejecucionfinal" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:TextBox ID='txt_sp_ejecucionfinal' CssClass="txt_formulario" runat='server'>
</asp:TextBox> 
</td>
<td>
</td>
</tr>


<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_tiempoEjecucion" runat="server" CssClass="lbl" Visible=true></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:TextBox ID="txt_tiempoEjecucion" runat="server" CssClass="txt_multilinea" Visible=true></asp:TextBox>
</td>
<td>
</td>
</tr>

<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_observacionesObligatorio" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:RadioButtonList ID="rbl_observacionesObligatorio" runat="server" CssClass="rbl" RepeatLayout="Flow"
RepeatDirection="Horizontal">
<asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
<asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
<asp:RequiredFieldValidator ID="rfv_observacionesObligatorio" runat="server" CssClass="lbl_mensaje"
ForeColor="" SetFocusOnError="True" ValidationGroup="form" ControlToValidate="rbl_observacionesObligatorio">*</asp:RequiredFieldValidator>
</td>
</tr>

<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_motivosObligatorio" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:RadioButtonList ID="rbl_motivosObligatorio" runat="server" CssClass="rbl" RepeatLayout="Flow"
RepeatDirection="Horizontal">
<asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
<asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
</asp:RadioButtonList>
</td>


</tr>
<%--<tr><td align="right"></td><td valign="top" class="td_lblFormulario"><asp:Label ID="lbl_subtipoDocumento" runat="server" CssClass="lbl"></asp:Label></td><td class="td_controlesFormulario"><asp:CheckBoxList ID="chl_subtipoDocumento" runat="server" DataTextField="subtipoDocumento"DataValueField="id"></asp:CheckBoxList></td><td></td></tr>--%></tbody></table>
<table id="tbl_guardarformulario">
<tbody>
<tr>
<td>
<asp:ValidationSummary ID="vlsFormulario" runat="server" CssClass="lbl_mensaje" ForeColor=""
ValidationGroup="form"></asp:ValidationSummary>
</td>
<td valign="middle" align="right">
<bti:BotonImagen ID="imbGuardar" runat="server" CssClass="imb" ValidationGroup="form"
ImageUrl="../../images/botones/aceptar.png"></bti:BotonImagen>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</asp:Panel>
</td>
</tr>
</table>
<asp:HiddenField ID='hddEstadoFormulario' runat='server' Value='<%# samm_logica.enu_estadoFormulario.buscar %>' />
<boc:bocadillo ID="Bocadillo" runat="server" />
