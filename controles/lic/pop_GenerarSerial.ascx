<%@ Control Language="VB" AutoEventWireup="true" CodeBehind="pop_GenerarSerial.ascx.vb"
Inherits="website.samm_componentes.controles_lic_pop_GenerarSerial" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
<tr>
<td>
<asp:Label ID="lbl_clave" CssClass="lbl" runat="server"></asp:Label>
</td>
<td>
<asp:TextBox ID="txt_clave" CssClass="txt" runat="server" ReadOnly="true"></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_serial" CssClass="lbl" runat="server"></asp:Label>
</td>
<td>
<asp:TextBox ID="txt_serial" CssClass="txt" runat="server" ReadOnly="true"></asp:TextBox>
</td>
</tr>
<tr>
<td colspan="2">
<asp:Label ID="lbl_mensaje" CssClass="lbl" runat="server"></asp:Label>
</td>
</tr>
</table>
<table>
<asp:Repeater ID="rptDatos" runat="server">
<ItemTemplate><tr>
<td><%# Eval("k") %></td><td><%#Eval("v")%></td>
<td><%#Eval("sentencia")%></td>
</tr></ItemTemplate>
</asp:Repeater>
</table>
<bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="false" ImageUrl="../../images/botones/aceptar.png" />
