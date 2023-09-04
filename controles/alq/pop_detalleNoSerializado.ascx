<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_detalleNoSerializado.ascx.vb" Inherits="website.samm_componentes.controles_alq_pop_detalleNoSerializado" %>
<asp:GridView ID="grd_detalle" runat="server" AutoGenerateColumns="False" AllowPaging="true" PageSize="30">
    <EmptyDataTemplate>
        <asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, grillaVacia %>'></asp:Label>
    </EmptyDataTemplate>
    <Columns>
        <asp:TemplateField HeaderText="res_metadata,doc_documento_documento" ItemStyle-HorizontalAlign="Right">
            <ItemTemplate>
                <asp:Label ID="lbl_documento" runat="server" Text='<%# eval("documento") %>'> </asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="res_metadata,doc_tipodocumento_tipodocumento" ItemStyle-HorizontalAlign="Right">
            <ItemTemplate>
                <asp:Label ID="lbl_cierre" runat="server" Text='<%# eval("tipodocumento") %>'> </asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="res_metadata,doc_documento_fechacierre_ff" ItemStyle-HorizontalAlign="Right">
            <ItemTemplate>
                <asp:Label ID="lbl_cierre" runat="server" Text='<%#CDate(eval("cierre")) %>'> </asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="res_metadata,doc_itemdocumento_cantidadejecutado" ItemStyle-HorizontalAlign="Right">
            <ItemTemplate>
                <asp:Label ID="lbl_itemdocumento" runat="server" Text='<%# eval("cantidadejecutado") %>'> </asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="res_metadata,doc_estadotipodocumento_estadotipodocumento" ItemStyle-HorizontalAlign="Right">
            <ItemTemplate>
                <asp:Label ID="lbl_estado" runat="server" Text='<%# eval("estado") %>'> </asp:Label>
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
