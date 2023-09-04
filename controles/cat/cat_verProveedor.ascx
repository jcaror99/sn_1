<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="cat_verProveedor.ascx.vb"
    Inherits="website.samm_componentes.controles_cat_cat_verProveedor" %>
<asp:GridView ID="grd_proveedores" runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="tercero" HeaderText='<%$ Resources:res_campoGrilla,ter_tercero_tercero %>' ItemStyle-HorizontalAlign="Center" />
        <asp:TemplateField HeaderText='<%$ Resources:res_nombreColumna,valorComprado%>' ItemStyle-HorizontalAlign="Center">
            <ItemTemplate>
                <asp:Label ID="lbl_comprado" runat="server" Text='<%# eval("valorCompra") %>' ToolTip='<%# eval("valorCompra_doc") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText='<%$ Resources:res_nombreColumna,valorCotizado%>' ItemStyle-HorizontalAlign="Center">
            <ItemTemplate>
                <asp:Label ID="lbl_comprado" runat="server" Text='<%# eval("valorCotizacion") %>' ToolTip='<%# eval("valorCotizacion_doc") %>'></asp:Label>
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
