<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_usuariosBodega.ascx.vb" Inherits="website.samm_componentes.controles_gen_inc_usuariosBodega" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<table>
<tr>
<td>
<asp:Label ID="lbl_usuarios" runat=server CssClass ='lbl'></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_usuario" runat="server" a_str_tabla ="seg_usuario" a_bol_postBack ="true" />
</td>
</tr>
<tr>
<td></td>
<td>
<asp:GridView ID="grd_usuarioBodega" runat="server" AutoGenerateColumns="false" >
<Columns>
<asp:BoundField HeaderText ="seg_usuario_nombre" DataField="seg_usuario_nombre" />
<asp:CheckBoxField HeaderText ="gen_bodega_usuario_sugerir" DataField="sugerir" />
<asp:TemplateField  >
<ItemTemplate>
<bti:BotonImagen ID="bti_eliminar" runat ="server" CausesValidation="false" ImageUrl="../../images/iconos/eliminar.gif" CommandArgument= '<%# eval("id")&"|"& eval("id_usuario") %>' />
</ItemTemplate>
</asp:TemplateField>
</Columns>
 <FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
</asp:GridView>
</td>
</tr>
</table>
