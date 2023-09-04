<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_usuariosBodega.ascx.vb" Inherits="website.samm_componentes.controles_seg_inc_usuariosBodega" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
<tr>
<td>
<asp:GridView ID="grd_bodegas" runat ="server" AutoGenerateColumns="false"  >
<Columns>
<asp:BoundField DataField="bodega" HeaderText ="res_metadata,gen_bodega_bodega" />
<asp:TemplateField HeaderText="res_etiquetas,asignada" >
<ItemTemplate >
<asp:CheckBox ID="chk_asignada" runat="server" CausesValidation="false"  Checked='<%#eval("asignada")%>'   />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField>
<ItemTemplate >
<bti:BotonImagen ID="imb_sugerir" runat="server" CausesValidation="false"  ImageUrl="../../images/iconos/txtdef.gif" CommandArgument ='<%# eval("id_bodegaUsuario")&"|"& eval("id_bodega") %>' />
</ItemTemplate>
</asp:TemplateField>
<asp:CheckBoxField DataField="sugerida" HeaderText="res_etiquetas,sugerir" ReadOnly ="true" />
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
<tr>
<td>
<bti:BotonImagen ID="btn_aceptar" runat="server" ImageUrl="~/images/botones/aceptar.jpg" />
</td>
</tr>
</table>