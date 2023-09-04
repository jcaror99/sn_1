<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_relacionGasto.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_relacionGasto" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
 <table class='tbl_marcoFormulario'>
    <tr>
        <td>
            <asp:GridView ID="grd_detalle" runat="server" AutoGenerateColumns="False">
                <EmptyDataTemplate>
                    <asp:Label ID="lbl" runat="server" CssClass="lbl_mensaje" Text='<%$Resources:res_mensajes,grillaVacia %>'></asp:Label></EmptyDataTemplate>
                <FooterStyle CssClass="gri_pie" />
                <RowStyle CssClass="gri_item" />
                <PagerStyle CssClass="gri_paginacion" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                <Columns>
                 <asp:BoundField HeaderText='Referencia' DataField="cat_catalogo_catalogo" />
                 <asp:BoundField HeaderText='Item' DataField="item" />
                  <asp:TemplateField HeaderText='Gastos'>
                        <ItemTemplate>
                            <asp:Label ID="lbl_gastos" runat="server" Text='<%# eval("link") %>' ></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
