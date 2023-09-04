<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="cat_detalleExistencias.ascx.vb" Inherits="website.samm_componentes.controles_cat_cat_detalleExistencias" %>
<table class="tbl_marcoFormulario">
    <tr>
        <td>
            <asp:GridView ID="grd_existencias" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla,gen_bodega_bodega %>' DataField="bodega" />
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla,cat_catalogo_bodega_existencia %>' DataField="existencia" />
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
