<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_resumenCatalogo.ascx.vb" Inherits="website.samm_componentes.controles_gen_inc_resumenCatalogo" %>
<asp:GridView ID="GridView1" runat="server">
    <EmptyDataTemplate>
        <asp:Label ID="lbl_noCatalogos" runat="server" Text="<%$ Resources:res_mensajes,grillaVacia %>" CssClass='lbl_mensaje'></asp:Label>
    </EmptyDataTemplate>
    <FooterStyle CssClass="gri_pie" />
    <RowStyle CssClass="gri_item" />
    <PagerStyle CssClass="gri_paginacion" />
    <HeaderStyle CssClass="gri_titulo" />
    <AlternatingRowStyle CssClass="gri_itemAlterno" />
    <SelectedRowStyle CssClass="gri_itemSeleccionado" />
</asp:GridView>
