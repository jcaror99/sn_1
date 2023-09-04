<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_tarifasRepuesto.ascx.vb" Inherits="website.samm_componentes.controles_cat_inc_tarifasRepuesto" %>
<%@ Register assembly="controles" namespace="controles" tagprefix="bti" %>
<%@ Register src="~/controles/general/busquedaAvanzada.ascx" tagname="busquedaAvanzada" tagprefix="bus" %>

<table>
<tr><td>
<table>
<tr>
<td><asp:Label ID="lbl_tipoTarifa" runat="server" CssClass ="lbl" ></asp:Label></td>
<td><bus:busquedaAvanzada id="bus_tipotarifa" a_str_camposDrop ="tipoTarifa"  a_str_tabla ="alq_tipoTarifa" runat="server" a_str_camposGrilla="tipoTarifa,tipoTarifa_codigo"  a_str_campo="tipoTarifa,tipoTarifa_codigo"    /></td>
</tr>
<tr>
      <td><asp:Label ID="lbl_tarifas" runat="server" CssClass ="lbl" ></asp:Label></td>
      <td><bus:busquedaAvanzada ID="bus_tarifa" runat="server" a_bol_postBack="true" a_str_tabla ="cat_catalogo" a_str_campo ="catalogo,catalogo_codigo,codigoinventario" a_str_filtroTemporal="id_subtipocatalogo in(select id from cat_subtipocatalogo where id_tipocatalogo=6 )  and id in (select id from [cat_catalogo.otro] where active=1 and periodoalquiler >0) " /></td></tr>
      <tr><td><asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje" Visible ="false"  ></asp:Label></td><td></td></tr>
      </table>

</td> </tr>

<tr><td ><asp:GridView ID="grv_tarifas" runat ="server" AutoGenerateColumns ="false"  AllowPaging="true" >
<Columns>
<asp:TemplateField HeaderText="res_metadata,alq_tarifa_tarifa" >
<ItemTemplate>
<asp:Label id="lbl_id" runat="server" CssClass ="invisible" Text='<%# eval("id") %>'></asp:Label>
<asp:Label id="lbl_idtarifa" runat="server" CssClass ="invisible" Text='<%# eval("id_tarifa") %>'></asp:Label>
<asp:Label ID="lbl_tarifa" runat="server" CssClass ="lbl" Text='<%# eval("tarifa") %>'  ></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="res_metadata,alq_tipotarifa_tipotarifa" >
<ItemTemplate>
<asp:Label ID="lbl_tipotarifa" runat="server" CssClass ="lbl" Text='<%# eval("tipotarifa") %>'  ></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="res_metadata,cat_catalogo_precioventa" >
<ItemTemplate>
<asp:Label ID="lbl_precio" runat="server" CssClass ="lbl" Text='<%# eval("precio_total") %>'  ></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="res_metadata,cat_catalogo_codigo_catalogo" >
<ItemTemplate>
<asp:Label ID="lbl_codigo_inventario" runat="server" CssClass ="lbl" Text='<%# eval("codigo") %>'  ></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField  >
<ItemTemplate>
<bti:BotonImagen ID="btn_eliminar" runat="server" CommandName="eliminarTarifa" CommandArgument='<%# eval("id") %>' ImageUrl="~/images/iconos/eliminar.gif" />
</ItemTemplate>
</asp:TemplateField>
</Columns>
<RowStyle CssClass="gri_item" />
                    <PagerStyle CssClass="gri_paginacion" />
                    <HeaderStyle CssClass="gri_titulo" />
                    <AlternatingRowStyle CssClass="gri_itemAlterno" />
                    <SelectedRowStyle CssClass="gri_itemSeleccionado" />
</asp:GridView></td></tr>
</table>