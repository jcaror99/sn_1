<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_actualizarContactos.ascx.vb" Inherits="website.samm_componentes.controles_ter_pop_actualizarContactos" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table>
<tr>
<td>
<asp:CheckBox ID="chk_dir" runat ="server"  />
<asp:CheckBox ID="chk_tel" runat ="server"  />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_mensaje" runat="server" CssClass ='lbl_mensaje' >
</asp:Label>
</td>
</tr>
<tr>
<td>
<bti:BotonImagen ID="btn_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.png" CausesValidation="true" ValidationGroup="actuCont" />
</td>
<asp:Label ID="lbl_msg" runat="server" Visible="false"></asp:Label>
</tr>
</table>
