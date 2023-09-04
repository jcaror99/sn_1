<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_fallasConfiguradas.ascx.vb" Inherits="website.samm_componentes.controles_gen_inc_fallasConfiguradas" %>
<asp:GridView ID="grd_fallas" runat="server">
    <EmptyDataTemplate>
        <asp:Label ID="lbl_noFallas" runat="server" Text="<%$ Resources:res_mensajes,grillaVacia %>" CssClass='lbl_mensaje'></asp:Label>
    </EmptyDataTemplate>
    <FooterStyle CssClass="gri_pie" />
    <RowStyle CssClass="gri_item" />
    <PagerStyle CssClass="gri_paginacion" />
    <HeaderStyle CssClass="gri_titulo" />
    <AlternatingRowStyle CssClass="gri_itemAlterno" />
    <SelectedRowStyle CssClass="gri_itemSeleccionado" />
</asp:GridView>
