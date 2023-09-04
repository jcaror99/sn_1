<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_renovardetalle.ascx.vb" Inherits="website.samm_componentes.controles_alq_pop_renovardetalle" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table>
    <tr>
        <td>
            <asp:Label ID="lbl_detalle" runat="server" CssClass="lbl"></asp:Label></td>
        <td>
            <asp:TextBox ID="txt_detalle" runat="server" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje">  </asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <bti:botonimagen id="imb_renovar" runat="server" imageurl="../../images/botones/aceptar.jpg" />
        </td>
    </tr>
</table>
