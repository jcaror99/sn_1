<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_movimiento.ascx.vb" Inherits="website.samm_componentes.controles_alq_pop_movimiento" %>

<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc2" %>
<%@ Register Src="~/controles/cnt/inc_informacionEquipos.ascx" TagName="inc_informacionEquipos"
    TagPrefix="uc3" %>
<%@ Register Src='~/controles/general/tabs.ascx' TagName='tabs' TagPrefix='tab' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/informacion.ascx" TagName="informacion" TagPrefix="uc4" %>

<table class="tbl_marcoFormulario" cellpadding="0" cellspacing="0" width="100%">
    <tr>
        <td>
            <asp:GridView ID="grv_movimientos" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="res_metadata,doc_documento_documento">
                        <ItemTemplate>
                            <asp:Label ID="lbl_documento" runat="server" Text='<%# eval("documento") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_metadata,doc_tipodocumento_tipodocumento">
                        <ItemTemplate>
                            <asp:Label ID="lbl_subtipo" runat="server" Text='<%# eval("tipo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_nombreColumna,fechacreacion">
                        <ItemTemplate>
                            <asp:Label ID="lbl_fechacierre" runat="server" Text='<%# eval("fechacreacion") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_metadata,doc_documento_fechacierre_ff">
                        <ItemTemplate>
                            <asp:Label ID="lbl_fechacierre" runat="server" Text='<%# eval("fechacierre") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_metadata,doc_itemdocumento_cantidadejecutado" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:Label ID="lbl_cantidad" runat="server" Text='<%# eval("cantidad") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_metadata,doc_estadotipodocumento_estadotipodocumento">
                        <ItemTemplate>
                            <asp:Label ID="lbl_fechacierre" runat="server" Text='<%# eval("estado") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_metadata,gen_bodega_bodega">
                        <ItemTemplate>
                            <asp:Label ID="lbl_fechacierre" runat="server" Text='<%# eval("bodega") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_etiquetas_alq,saldo">
                        <ItemTemplate>
                            <asp:Label ID="lbl_fechacierre" runat="server" Text='<%# eval("saldo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="res_etiquetas_alq,cannorecibido" DataField="norecibido" />
                    <asp:BoundField HeaderText="res_etiquetas_alq,docnorecibido" DataField="docnorecibido" />

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
