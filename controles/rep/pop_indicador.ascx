<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_indicador.ascx.vb" Inherits="website.samm_componentes.controles_rep_pop_indicador" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
<tr>
<td><asp:Label ID="lbl_indicador" runat="server" CssClass ="lbl" Text='res_metadata,rep_indicador_indicador' ></asp:Label> </td>
<td>
<asp:TextBox ID="txt_indicador" runat="server" CssClass ="txt" ValidationGroup="indicador" ></asp:TextBox>
<asp:RequiredFieldValidator ID="rfv_indicador" ControlToValidate="txt_indicador" runat="server" ValidationGroup ="indicador"  CssClass ='lbl_mensaje' Text='*'></asp:RequiredFieldValidator>
</td>
</tr><tr>
<td><asp:Label ID="lbl_indicadorcodigo" runat="server" CssClass ="lbl" Text='res_metadata,rep_indicador_indicador_codigo' ></asp:Label> </td>
<td><asp:TextBox ID="txt_indicadorcodigo" runat="server" CssClass ="txt" ></asp:TextBox>
</td>
</tr>
<tr>
<td><asp:Label ID="Lbl_titulo" runat="server" CssClass ="lbl" Text='res_metadata,rep_indicador_titulo' ></asp:Label> </td>
<td><asp:TextBox ID="Txt_titulo" runat="server" CssClass ="txt" ></asp:TextBox>
</td>
</tr>
<tr>
<td><asp:Label ID="lbl_descripcion" runat="server" CssClass ="lbl" Text='res_metadata,rep_indicador_descripcion' ></asp:Label> </td>
<td><asp:TextBox ID="txt_descripcion" runat="server" CssClass ="txt" ></asp:TextBox>
</td>
</tr>
<tr>
<td><asp:Label ID="Lbl_cabecera" runat="server" CssClass ="lbl" Text='res_metadata,rep_indicador_cabecera' ></asp:Label> </td>
<td><asp:TextBox ID="Txt_cabecera" runat="server" CssClass ="txt" ></asp:TextBox>
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