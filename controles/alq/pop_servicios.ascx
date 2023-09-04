<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_servicios.ascx.vb" Inherits="website.samm_componentes.controles_alq_pop_servicios" %>
<table class="tbl_marcoFormulario" cellpadding="0" cellspacing="0" width="100%">
    <tr>
        <td>
            <asp:GridView ID="grv_servicios" runat="server" AutoGenerateColumns="false" AllowPaging="false" PageSize="20">
                <Columns>
                    <asp:TemplateField HeaderText="res_metadata,doc_documento_documento">
                        <ItemTemplate>
                            <asp:Label ID="lbl_documento" runat="server" Text='<%# eval("documento") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_metadata,doc_documento_ot_motivoservicio">
                        <ItemTemplate>
                            <asp:Label ID="lbl_documento" runat="server" Text='<%# eval("motivoservicio") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_metadata,doc_subtipodocumento_subtipodocumento">
                        <ItemTemplate>
                            <asp:Label ID="lbl_subtipo" runat="server" Text='<%# eval("subtipo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_metadata,doc_documento_fechacierre_ff">
                        <ItemTemplate>
                            <asp:Label ID="lbl_fechacierre" runat="server" Text='<%# eval("fechacierre") %>'></asp:Label>
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
        </td>
    </tr>

</table>
