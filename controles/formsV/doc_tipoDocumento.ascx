<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="doc_tipoDocumento.ascx.vb"
Inherits="website.samm_componentes.controles_seg_doc_tipoDocumento" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="act" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="textoAvanzado" TagPrefix="txt" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table class="tbl_marcoFormulario">
<tr>
<td>
<asp:Panel ID="pan_formulario" runat="server" DefaultButton="imbGuardar">
<table class="tbl_formulario" border="0" cellpadding="0" cellspacing="0">
<tr>
<td align="right" colspan="1" class="td_formEspacioH">
<img alt="" src="../../images/interfaz/spacer.gif" style="width: 17px; height: 1px" />
</td>
<td align="right" colspan="3" class="td_formEspacioV">
</td>
</tr>
<tr>
<td align="right">
</td>
<td align="right" valign="top">
<act:togglebuttonextender id="ToggleButtonExtender1" runat="server" checkedimagealternatetext="<%$ Resources:res_controles,ayuda_especificano %>"
checkedimageurl="../../images/iconos/ojo1.png" imageheight="26" imagewidth="30"
targetcontrolid="chb_ayudaCampo" uncheckedimagealternatetext="<%$ Resources:res_controles,ayuda_especifica %>"
uncheckedimageurl="../../images/iconos/ojo2.png"></act:togglebuttonextender>
<table border="0" cellpadding="0" cellspacing="0" id="tbl_estadoformulario">
<tr>
<td>
    <asp:Label ID="lbl_estadoFormulario" runat="server" CssClass="lbl_estadoFormulario"></asp:Label>
</td>
<td>
    <asp:CheckBox ID="chb_ayudaCampo" runat="server" AutoPostBack="True" CssClass="chb" />
</td>
</tr>
</table>
<table>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
    <asp:Label ID="lbl_tipoDocumento" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
    <asp:TextBox ID="txt_tipoDocumento" runat="server" MaxLength="100" CssClass="txt_multilinea"></asp:TextBox>
</td>
<td>
    <asp:RequiredFieldValidator ID="rfv_tipoDocumento" runat="server" ControlToValidate="txt_tipoDocumento"
        ValidationGroup="form" SetFocusOnError="True" CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
    <asp:Label ID="lbl_tipoDocumento_codigo" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
    <asp:TextBox ID="txt_tipoDocumento_codigo" runat="server" MaxLength="100" CssClass="txt_multilinea"></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
    <asp:Label ID="lbl_esSalida" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
    <asp:RadioButtonList ID="rbl_esSalida" runat="server" CssClass="rbl" RepeatDirection="Horizontal"
        RepeatLayout="Flow">
        <asp:ListItem Value="1" Text="<%$ Resources:res_etiquetas,si %>"></asp:ListItem>
        <asp:ListItem Value="0" Text="<%$ Resources:res_etiquetas,no %>"></asp:ListItem>
    </asp:RadioButtonList>
</td>
<td>
    <asp:RequiredFieldValidator ID="rfv_esSalida" runat="server" ControlToValidate="rbl_esSalida"
        ValidationGroup="form" SetFocusOnError="True" CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
    <asp:Label ID="lbl_mostrarBodega" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
    <asp:RadioButtonList ID="rbl_mostrarBodega" runat="server" CssClass="rbl" RepeatDirection="Horizontal"
        RepeatLayout="Flow">
        <asp:ListItem Value="1" Text="<%$ Resources:res_etiquetas,si %>"></asp:ListItem>
        <asp:ListItem Value="0" Text="<%$ Resources:res_etiquetas,no %>"></asp:ListItem>
    </asp:RadioButtonList>
</td>
<td>
    <asp:RequiredFieldValidator ID="rfv__mostrarBodega" runat="server" ControlToValidate="rbl_mostrarBodega"
        ValidationGroup="form" SetFocusOnError="True" CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
    <asp:Label ID="lbl_mostrarCentroCosto" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
    <asp:RadioButtonList ID="rbl_mostrarCentroCosto" runat="server" CssClass="rbl" RepeatDirection="Horizontal"
        RepeatLayout="Flow">
        <asp:ListItem Value="1" Text="<%$ Resources:res_etiquetas,si %>"></asp:ListItem>
        <asp:ListItem Value="0" Text="<%$ Resources:res_etiquetas,no %>"></asp:ListItem>
    </asp:RadioButtonList>
</td>
<td>
    <asp:RequiredFieldValidator ID="rfv_mostrarCentroCosto" runat="server" ControlToValidate="rbl_mostrarCentroCosto"
        ValidationGroup="form" SetFocusOnError="True" CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
    <asp:Label ID="lbl_mostrarInconterm" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
    <asp:RadioButtonList ID="rbl_mostrarInconterm" runat="server" CssClass="rbl" RepeatDirection="Horizontal"
        RepeatLayout="Flow">
        <asp:ListItem Value="1" Text="<%$ Resources:res_etiquetas,si %>"></asp:ListItem>
        <asp:ListItem Value="0" Text="<%$ Resources:res_etiquetas,no %>"></asp:ListItem>
    </asp:RadioButtonList>
</td>
<td>
    <asp:RequiredFieldValidator ID="rfv_mostrarInconterm" runat="server" ControlToValidate="rbl_mostrarInconterm"
        ValidationGroup="form" SetFocusOnError="True" CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
    <asp:Label ID="lbl_puedeSerMayor" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
    <asp:RadioButtonList ID="rbl_puedeSerMayor" runat="server" CssClass="rbl" RepeatDirection="Horizontal"
        RepeatLayout="Flow">
        <asp:ListItem Value="1" Text="<%$ Resources:res_etiquetas,si %>"></asp:ListItem>
        <asp:ListItem Value="0" Text="<%$ Resources:res_etiquetas,no %>"></asp:ListItem>
    </asp:RadioButtonList>
</td>
<td>
    <asp:RequiredFieldValidator ID="rfv_puedeSerMayor" runat="server" ControlToValidate="rbl_puedeSerMayor"
        ValidationGroup="form" SetFocusOnError="True" CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
    <asp:Label ID="lbl_puedeSerMenor" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
    <asp:RadioButtonList ID="rbl_puedeSerMenor" runat="server" CssClass="rbl" RepeatDirection="Horizontal"
        RepeatLayout="Flow">
        <asp:ListItem Value="1" Text="<%$ Resources:res_etiquetas,si %>"></asp:ListItem>
        <asp:ListItem Value="0" Text="<%$ Resources:res_etiquetas,no %>"></asp:ListItem>
    </asp:RadioButtonList>
</td>
<td>
    <asp:RequiredFieldValidator ID="rfv_puedeSerMenor" runat="server" ControlToValidate="rbl_puedeSerMenor"
        ValidationGroup="form" SetFocusOnError="True" CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>

<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
    <asp:Label ID="lbl_esUrgente" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
    <asp:RadioButtonList ID="rbl_esUrgente" runat="server" CssClass="rbl" RepeatDirection="Horizontal"
        RepeatLayout="Flow">
        <asp:ListItem Value="1" Text="<%$ Resources:res_etiquetas,si %>"></asp:ListItem>
        <asp:ListItem Value="0" Text="<%$ Resources:res_etiquetas,no %>"></asp:ListItem>
    </asp:RadioButtonList>
</td>
<td>
    <asp:RequiredFieldValidator ID="rfv_esUrgente" runat="server" ControlToValidate="rbl_puedeSerMenor"
        ValidationGroup="form" SetFocusOnError="True" CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>





</table>
<table id="tbl_guardarformulario">
<tr >
<td colspan ="2">
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"  > </asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:ValidationSummary ID="vlsFormulario" runat="server" ValidationGroup="form" CssClass="lbl_mensaje"
        ForeColor="" />
</td>
<td valign="middle" align="right">
    <bti:BotonImagen ID="imbGuardar" runat="server" ImageUrl="../../images/botones/aceptar.png"
        ValidationGroup="form" CssClass="imb" />
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
<asp:HiddenField ID="hddEstadoFormulario" runat="server" Value="<%# samm_logica.enu_estadoFormulario.buscar %>" />
<boc:bocadillo ID="Bocadillo" runat="server" />
