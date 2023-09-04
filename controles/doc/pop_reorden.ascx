<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_reorden.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_reorden" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<table>
    <tr>
        <td>
            <asp:Label ID="lbl_bodega" runat="server" CssClass='lbl' Text='<%$ Resources:res_metadata, gen_bodega_bodega %>'></asp:Label>
             </td>
        <td>  
        <uc1:busquedaAvanzada ID="bus_bodega" runat="server" a_str_tabla="gen_bodega" a_bol_postBack="true" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="grd_items" runat="server" AutoGenerateColumns="False">
                <EmptyDataTemplate>
                    <asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$Resources:res_mensajes,grillaVacia%>'></asp:Label>
                </EmptyDataTemplate>
                <Columns>
                    <asp:TemplateField HeaderText='res_campoGrilla,cat_catalogo_repuesto_catalogo_repuesto'>
                        <ItemTemplate>
                            <asp:HiddenField ID="hdd_idCatalogo" runat="server" Value='<%# eval("id_catalogo") %>' />
                            <asp:Label ID="lbl_catalogo" runat="server" Text='<%# eval("catalogo") %>' ToolTip='<%# eval("detalles") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='res_campoGrilla,cat_catalogo_codigoinventario'>
                        <ItemTemplate>
                            <asp:Label ID="lbl_codigo" runat="server" Text='<%# eval("codigoInventario") %>'
                                ToolTip='<%# eval("codigo") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='res_campoGrilla,cat_catalogo_bodega_existencia'>
                        <ItemTemplate>
                            <asp:Label ID="lbl_existencia" runat="server" Text='<%# eval("existencia") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='res_campoGrilla,cat_catalogo_bodega_existenciaminima'>
                        <ItemTemplate>
                            <asp:Label ID="lbl_existenciaMinima" runat="server" Text='<%# eval("existenciaminima") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='res_campoGrilla,cat_catalogo_bodega_existenciamaxima'>
                        <ItemTemplate>
                            <asp:Label ID="lbl_existenciaMaxima" runat="server" Text='<%# eval("existenciamaxima") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='res_campoGrilla,cat_catalogo_bodega_reservado'>
                        <ItemTemplate>
                            <asp:Label ID="lbl_reservado" runat="server" Text='<%# eval("reservado") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='res_campoGrilla,cat_catalogo_bodega_enordenes'>
                        <ItemTemplate>
                            <asp:Label ID="lbl_enordenes" runat="server" Text='<%# eval("enordenes") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='res_nombreColumna,sugerir'>
                        <ItemTemplate>
                            <asp:TextBox ID="txt_sugerido" runat="server" CssClass="txt_numero" Text='<%# CInt(eval("sugerir")) %>'></asp:TextBox>
                            <act:filteredtextboxextender id='ftb_sugerido' runat='server' targetcontrolid='txt_sugerido'
                                filtertype='Numbers,Custom'/>
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
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="center">
            <cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="~/images/botones/aceptar.jpg"
                CausesValidation="false" />
        </td>
    </tr>
</table>
