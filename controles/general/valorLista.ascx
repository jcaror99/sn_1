<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="valorLista.ascx.vb" Inherits="website.samm_controles.controles_general_valorLista" %>
<asp:GridView ID="grd_precios" runat="server" AutoGenerateColumns="False">
    <EmptyDataTemplate>
        <asp:Label ID="lbl" runat="server" CssClass="lbl_mensaje" Text='<%$Resources:res_mensajes,grillaVacia %>'></asp:Label>
    </EmptyDataTemplate>
    <Columns>
        <asp:BoundField HeaderText='<%$Resources:res_campoGrilla,cat_listaprecio_listaprecio %>' DataField="listaprecio" ItemStyle-HorizontalAlign="Center" />
        <asp:BoundField HeaderText='<%$Resources:res_campoGrilla,cat_catalogo_listaprecio_precioventa %>' DataField="precioventa"  ItemStyle-HorizontalAlign="Center"/>
        <asp:BoundField HeaderText='<%$Resources:res_campoGrilla,cat_tipocatalogo_listaprecio_porcentaje%>' DataField="porcentaje"  ItemStyle-HorizontalAlign="Center" />
    </Columns>
    <FooterStyle CssClass="gri_pie" />
    <RowStyle CssClass="gri_item" />
    <PagerStyle CssClass="gri_paginacion" />
    <HeaderStyle CssClass="gri_titulo" />
    <AlternatingRowStyle CssClass="gri_itemAlterno" />
    <SelectedRowStyle CssClass="gri_itemSeleccionado" />
</asp:GridView>
