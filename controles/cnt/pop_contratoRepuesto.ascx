<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_contratoRepuesto.ascx.vb" Inherits="website.samm_componentes.controles_cnt_pop_contratoRepuesto" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<table>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_repuesto" runat="server" Text='<%$Resources:res_metadata,cat_catalogo_repuesto_catalogo_repuesto %>' CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <uc1:busquedaAvanzada ID="bus_repuesto" runat="server" a_bln_obligatorio="true" a_str_grupoValidacion="rep" a_str_tabla="cat_catalogo.repuesto" />
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_cantidad" runat="server" Text='<%$Resources:res_metadata,cnt_contrato_catalogo_incluida %>' CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <asp:TextBox ID="txt_cantidad" runat="server" CssClass="txt"></asp:TextBox><asp:RequiredFieldValidator ID='rfv_cantidad' runat='server' ControlToValidate='txt_cantidad' ValidationGroup="rep" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_consumida" runat="server" Text='<%$Resources:res_metadata,cnt_contrato_catalogo_consumida %>' CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <asp:TextBox ID="txt_consumida" runat="server" CssClass="txt"></asp:TextBox><asp:RequiredFieldValidator ID='rfv_consumida' runat='server' ControlToValidate='txt_consumida' ValidationGroup="rep" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_saldo" runat="server" Text='<%$Resources:res_metadata,cnt_contrato_catalogo_saldo %>' CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <asp:TextBox ID="txt_saldo" runat="server" CssClass="txt" ReadOnly="true"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_precioVenta" runat="server" Text='<%$Resources:res_metadata,cnt_contrato_catalogo_precioventa %>' CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <asp:TextBox ID="txt_precioVenta" runat="server" CssClass="txt"></asp:TextBox><asp:RequiredFieldValidator ID='rfv_precioVenta' runat='server' ControlToValidate='txt_precioVenta' ValidationGroup="rep" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_notas" runat="server" Text='<%$Resources:res_metadata,cnt_contrato_catalogo_notas %>' CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <asp:TextBox ID="txt_notas" runat="server" CssClass="txt_multilinea"></asp:TextBox><asp:RequiredFieldValidator ID='rfv_notas' runat='server' ControlToValidate='txt_notas' ValidationGroup="rep" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <cc1:BotonImagen ID="bti_guardar" runat="server" ImageUrl="~/images/botones/aceptar.jpg" ValidationGroup="rep" /><asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='rep' CssClass='lbl_mensaje' ForeColor='' HeaderText='<%$Resources:res_mensajes,camposObligatorios %>' />
        </td>
    </tr>
</table>
