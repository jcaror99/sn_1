<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_facturarPreliquidacion.ascx.vb" Inherits="website.samm_componentes.controles_doc_pop_facturarPreliquidacion" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
    <tr id="tr_fechaFactura" runat="server">
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_fechaFactura" runat="server" CssClass="lbl"></asp:Label></td>
        <td class='td_controlesFormulario'>
            <fec:fechaAvanzada ID="fec_fechaFactura" runat="server" a_str_prefijo="ff" a_bln_obligatorio="true" a_str_grupoValidacion="fac" />
        </td>
    </tr>
    <tr id="tr_montoFactura" runat="server">
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_montoFactura" runat="server" CssClass="lbl"></asp:Label></td>
        <td class='td_controlesFormulario'>
            <asp:TextBox ID="txt_montoFactura" runat="server" CssClass="txt_numero"></asp:TextBox><asp:RequiredFieldValidator ID="rfv_montoFactura" runat="server" ControlToValidate="txt_montoFactura" ErrorMessage="" ValidationGroup="fac" ForeColor="" CssClass="lbl_mensaje">*</asp:RequiredFieldValidator><act:FilteredTextBoxExtender ID='ftb_montoFactura' runat='server' TargetControlID='txt_montoFactura' FilterType='Numbers,Custom' />
        </td>
    </tr>
    <tr id="tr_codigoFactura" runat="server">
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_codigoFactura" runat="server" CssClass="lbl"></asp:Label></td>
        <td class='td_controlesFormulario'>
            <asp:TextBox ID="txt_codigoFactura" runat="server" CssClass="txt"></asp:TextBox><asp:RequiredFieldValidator ID="rfv_codigoFactura" runat="server" ControlToValidate="txt_codigoFactura" ErrorMessage="" ValidationGroup="fac" ForeColor="" CssClass="lbl_mensaje">*</asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td colspan='2'>
            <bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg" ValidationGroup='fac' /></td>
    </tr>
    <tr>
        <td colspan='2'>
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label></td>
    </tr>
</table>
