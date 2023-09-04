<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_descuentos.ascx.vb" Inherits="website.samm_componentes.controles_seg_inc_descuentos" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<asp:GridView ID="grd_comision" runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla, cat_subtipocatalogo_subtipocatalogo%>">
            <ItemTemplate>
                <asp:Label ID="lbl" CssClass="lbl" runat="server" Text='<%# eval("subtipoCatalogo") & "  (" & eval("cat_tipoCatalogo_tipoCatalogo") & ")" %>' ></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla, com_comision_descuentominimo%>">
            <ItemTemplate>
                <asp:TextBox ID="txt_minimo" runat="server" CssClass="txt_numero"></asp:TextBox>
                <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="False"></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla, com_comision_descuentomaximo%>">
            <ItemTemplate>
                <asp:TextBox ID="txt_maximo" runat="server" CssClass="txt_numero"></asp:TextBox>
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
<bti:BotonImagen ID="bti_aceptar" runat="server" CssClass='imb' ImageUrl="~/images/botones/aceptar.png"/>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje" Text=""></asp:Label>
