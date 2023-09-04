<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_opcionReporte.ascx.vb" Inherits="website.samm_componentes.controles_rep_pop_opcionReporte" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
<tr>
<td><asp:Label ID="lbl_opcionReporte" runat="server" CssClass ="lbl"  Text='res_metadata,rep_opcionreporte_opcionreporte' ></asp:Label></td>
<td><asp:TextBox ID="txt_opcionReporte" runat="server" CssClass ="txt" ValidationGroup="opcion"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfv_reporte" ControlToValidate="txt_opcionReporte" ValidationGroup ="opcion"  runat="server" CssClass ='lbl_mensaje' Text='*'></asp:RequiredFieldValidator>
 </td>
</tr>
<tr>
<td><asp:Label ID="lbl_opcionCodigo" runat="server" CssClass ="lbl"  Text='res_metadata,rep_opcionreporte_opcionreporte_codigo' ></asp:Label></td>
<td><asp:TextBox ID="txt_opcionCodigo" runat="server" CssClass ="txt" ValidationGroup="opcion"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfv_codigo" ControlToValidate="txt_opcionCodigo"  ValidationGroup ="opcion" runat="server" CssClass ='lbl_mensaje' Text='*'></asp:RequiredFieldValidator> </td>
</tr>
<tr>
<td><asp:Label ID="lbl_defecto" runat="server" CssClass ="lbl"  Text='res_metadata,rep_opcionreporte_opcionreporte_defecto' ></asp:Label></td>
<td><asp:RadioButtonList ID="rbl_defecto" runat ="server" RepeatDirection="Horizontal"   ValidationGroup="opcion" >
<asp:ListItem Enabled="true" Value="1" Selected ="False" Text="res_etiquetas,si" ></asp:ListItem>
<asp:ListItem Enabled="true" Value="0" Selected ="False" Text="res_etiquetas,no" ></asp:ListItem>
</asp:RadioButtonList>
<asp:RequiredFieldValidator ID="rfv_defecto" ControlToValidate="rbl_defecto" runat="server" ValidationGroup ="opcion"  CssClass ='lbl_mensaje' Text='*'></asp:RequiredFieldValidator>
 </td>
</tr>
<tr>
<tr>
<td></td>
<td><asp:Label ID="lbl_mensaje" runat="server" CssClass ="lbl_mensaje"></asp:Label></td>
</tr>
<td></td>
<td><bti:BotonImagen ID="bti_guardar" runat ="server" ImageUrl="../../images/botones/aceptar.jpg"  CausesValidation="true" ValidationGroup ="opcion" /></td>
</tr>
<tr>
<td></td>

</tr>
</table>