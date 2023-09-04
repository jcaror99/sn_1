<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_adicional.ascx.vb" Inherits="website.samm_componentes.controles_alq_pop_adicional" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table>
    <tr>
        <td>
            <asp:Label ID="lbl_item" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_item" runat="server" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_detalle" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_detalle" runat="server" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_valor" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_valor" runat="server" CssClass="txt_numero"></asp:TextBox></td>
    </tr>

    <tr>
        <td>
            <asp:Label ID="lbl_descuento" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_descuento" runat="server" CssClass="txt_numero"></asp:TextBox></td>
    </tr>

    <tr>
        <td>
            <asp:Label ID="lbl_iva" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_iva" runat="server" CssClass="txt_numero" Enabled="false"></asp:TextBox></td>
    </tr>

    <tr>
        <td>
            <asp:Label ID="lbl_cantidad" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_cantidad" runat="server" CssClass="txt_numero"></asp:TextBox></td>
    </tr>
    <tr style="text-align: center">
        <td colspan="2">
            <bti:botonimagen id="btn_editar" runat="server" imageurl="../../images/botones/aceptar.png" validationgroup="editar" />
        </td>
    </tr>
</table>
