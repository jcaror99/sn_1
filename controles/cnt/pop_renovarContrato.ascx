<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_renovarContrato.ascx.vb" Inherits="website.samm_componentes.controles_cnt_pop_renovarContrato" %>

<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>

<table>
    <tr>
        <td class="td_lblFormulario">
            <asp:Label ID="lbl_fecha" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td>
            <uc1:fechaAvanzada ID="fec_fecha" runat="server" a_str_prefijo="ff" a_bln_obligatorio="true" a_str_grupoValidacion="cnt" />
        </td>
    </tr>
    <tr>
        <td class="td_lblFormulario">
            <asp:Label ID="lbl_ajustarManuales" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td style="white-space: nowrap;">
            <asp:RadioButtonList ID="rbl_ajustarManuales" runat="server" CssClass="rbl">
                <asp:ListItem Selected="True" Value="0"></asp:ListItem>
                <asp:ListItem Value="1"></asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
</table>
<cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="~/images/botones/aceptar.jpg"
    ValidationGroup="cnt" /><br />
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
