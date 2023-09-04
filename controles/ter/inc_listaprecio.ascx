<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_listaprecio.ascx.vb" Inherits="website.samm_componentes.controles_ter_inc_listaprecio" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<table>
<tr><td><asp:Label ID="lbl_listaprecio" runat ="server" CssClass ="lbl" ></asp:Label></td>
<td><bus:busquedaAvanzada ID="bus_listaprecio" runat="server" a_str_tabla="cat_listaPrecio" a_str_campo="listaprecio" a_bol_postBack="true"  /></td></tr>
<tr><td></td><td>
<asp:GridView ID="grd_listaprecio" runat="server" AutoGenerateColumns="false"  >
<Columns>
  <asp:TemplateField  HeaderText='res_metadata,cat_listaprecio_listaprecio' >
   <ItemTemplate>
   <asp:Label ID="lbl_listaprecio" runat="server" Text='<%# bind("cat_listaprecio_listaprecio") %>' > </asp:Label>
    </ItemTemplate>
   </asp:TemplateField>
   <asp:TemplateField>
   <ItemTemplate>
   <asp:ImageButton ID="imb_eliminar" runat ="server" CommandName="eliminar" CommandArgument='<%# eval("id") %>' ImageUrl="~/images/iconos/eliminar.gif"   />
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
</td></tr>

</table>
