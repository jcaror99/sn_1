<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_origenDatoSP.ascx.vb" Inherits="website.samm_componentes.controles_rep_pop_origenDatoSP" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
<tr>
<td><asp:Label ID="lbl_origenDato" runat="server" CssClass ="lbl" ></asp:Label> </td>
</tr>
<tr>
<td>
<asp:TextBox TextMode='MultiLine' ID="txt_origenDato" runat="server" CssClass ="txt" ValidationGroup="origen" Width=400px Height =200px></asp:TextBox>
<asp:RequiredFieldValidator ID="rfv_origen" ControlToValidate="txt_origenDato" runat="server" ValidationGroup ="origen"  CssClass ='lbl_mensaje' Text='*'></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td><asp:Label ID="lbl_mensaje" runat="server" CssClass ="lbl_mensaje"></asp:Label></td>
</tr>
<tr>
<td><bti:BotonImagen ID="bti_guardar" runat ="server"  ImageUrl="../../images/botones/aceptar.jpg" CausesValidation="true" ValidationGroup ="origen" /></td>
</tr>
<tr>
<td></td>
</tr>
</table>
