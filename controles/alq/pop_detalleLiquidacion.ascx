<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_detalleLiquidacion.ascx.vb" Inherits="website.samm_componentes.controles_alq_pop_detalleLiquidacion" %>
<asp:GridView ID="grd_detalle" runat="server" AutoGenerateColumns="False" AllowPaging="true" PageSize="30">
    <EmptyDataTemplate>
        <asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, grillaVacia %>'></asp:Label>
    </EmptyDataTemplate>
    <Columns>
        <%--<asp:BoundField HeaderText ="res_metadata,doc_documento_documento" DataField ="documento"  />--%>

        <asp:TemplateField HeaderText="res_metadata,doc_documento_documento" ItemStyle-HorizontalAlign="Right">
            <ItemTemplate>
                <asp:Label ID="lbl_documento" runat="server" Text='<%#Eval("documento") %>' ToolTip='<%# Cdate(Eval("fecha_fh")).ToString("dd/MM/yyyy") %>'> </asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="res_metadata,doc_itemdocumento_itemdocumento" ItemStyle-HorizontalAlign="Right">
            <ItemTemplate>
                <asp:Label ID="lbl_itemdocumento" runat="server" Text='<%#Eval("itemdocumento") %>' ToolTip='<%# Cdate(Eval("fecha_fh")).ToString("dd/MM/yyyy") %>'> </asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <%--<asp:BoundField HeaderText ="res_metadata,doc_documento_fecha_fh" DataFormatString="{0:dd-MM-yyyy}" HtmlEncode="false" DataField ="fecha_fh" />
<asp:TemplateField HeaderText ="res_metadata,doc_documento_fecha_fh" ItemStyle-HorizontalAlign ="Right" >
<ItemTemplate>
<asp:Label ID="lbl_fecha" runat ="server"  Text='<%# Cdate(eval("fecha_fh")).toString("dd/MM/yyyy") %>' > </asp:Label>
</ItemTemplate>
</asp:TemplateField>--%>
        <asp:TemplateField HeaderText="res_metadata,dis_evento_catalogo_total" ItemStyle-HorizontalAlign="Right">
            <ItemTemplate>
                <asp:Label ID="lbl_valor" runat="server" Text='<%# FormatCurrency(Eval("valor"), 2) %>'> </asp:Label>
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
