<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_origenDato.ascx.vb" Inherits="website.samm_componentes.controles_rep_pop_origenDato" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
<tr>
<td><asp:Label ID="lbl_origenDato" runat="server" CssClass ="lbl" Text='res_metadata,rep_origendato_origendato' ></asp:Label> </td>
<td>
<asp:TextBox ID="txt_origenDato" runat="server" CssClass ="txt" ValidationGroup="origen" ></asp:TextBox>
<asp:RequiredFieldValidator ID="rfv_origen" ControlToValidate="txt_origenDato" runat="server" ValidationGroup ="origen"  CssClass ='lbl_mensaje' Text='*'></asp:RequiredFieldValidator>
</td>
</tr><tr>
<td><asp:Label ID="lbl_origenCodigo" runat="server" CssClass ="lbl" Text='res_metadata,rep_origendato_origendato_codigo' ></asp:Label> </td>
<td><asp:TextBox ID="txt_origenCodigo" runat="server" CssClass ="txt" ></asp:TextBox>
</td>
</tr><tr>
<td><asp:Label ID="lbl_duracion" runat="server" CssClass ="lbl" Text='res_metadata,rep_origendato_duracion' ></asp:Label> </td>
<td><asp:TextBox ID="txt_duracion" runat="server" CssClass ="txt" ></asp:TextBox>
</td>
</tr>
<tr>
<td></td>
<td><asp:Label ID="lbl_mensaje" runat="server" CssClass ="lbl_mensaje"></asp:Label></td>
</tr>
<tr>
<td></td>
<td><bti:BotonImagen ID="bti_guardar" runat ="server"  ImageUrl="../../images/botones/aceptar.jpg" CausesValidation="true" ValidationGroup ="origen" /></td>
</tr>
<tr>
<td></td>
</tr>
</table>
