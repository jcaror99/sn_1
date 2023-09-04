<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_elementosNoSerializados.ascx.vb"
    Inherits="website.samm_componentes.controles_equ_inc_elementosNoSerializados" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple" TagPrefix="mul" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table style="width: 850px;">
    <tr>
        <td>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lbl_fecha" runat="server" CssClass="lbl"></asp:Label></td>
                    <td>
                        <fec:fechaAvanzada ID="fec_fecha" runat="server" a_str_prefijo="ff" a_bln_obligatorio="false" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_catalogo" runat="server" CssClass="lbl"></asp:Label></td>
                    <td>
                        <mul:busquedaAvanzadaMultiple ID="bus_catalogo" runat="server" a_str_tabla="cat_catalogo" a_str_campo="catalogo,catalogo_codigo,codigoinventario" />
                    </td>
                </tr>
                <tr></tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_sucursal" runat="server" CssClass="lbl"></asp:Label></td>
                    <td>
                        <mul:busquedaAvanzadaMultiple ID="bus_sucursal" runat="server" a_str_tabla="ter_sucursal" a_str_campo="sucursal" />
                    </td>
                </tr>
                <tr>

                    <td colspan="2">
                        <bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.png" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>

    <tr>
        <td colspan="3">
            <%--   <gri:grilla ID="gri_detalle" runat="server" a_bln_paginacionNormal="true" />--%>
            <asp:GridView ID="grd_detalle" runat="server" AutoGenerateColumns="False" AllowPaging="true" PageSize="30">
                <EmptyDataTemplate>
                    <asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, grillaVacia %>'></asp:Label>
                </EmptyDataTemplate>
                <Columns>
                    <asp:TemplateField HeaderText="res_metadata,cat_catalogo_catalogo" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="lbl_documento" runat="server" Text='<%#Eval("cat_catalogo_catalogo") %>'> </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_metadata,cat_usoseccionatributo_usoseccionatributo_codigo">
                        <ItemTemplate>
                            <asp:Label ID="lbl_codigo" runat="server" CssClass="lbl" Text='<%#Eval("cat_catalogo_codigoInventario") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_etiquetas_alq,despacho"
                        ItemStyle-HorizontalAlign="Right">
                        <ItemTemplate>
                            <asp:Label ID="lbl_despacho" runat="server" Text='<%#Eval("fechadespacho_ff") %>'> </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_etiquetas_alq,devolucion">
                        <ItemTemplate>
                            <asp:Label ID="lbl_devolucion" runat="server" Text='<%#Eval("fechadevolucion_ff") %>'> </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_metadata,equ_detallealquiler_fechaultimafactura_fh"
                        ItemStyle-HorizontalAlign="Right">
                        <ItemTemplate>
                            <asp:Label ID="lbl_UltimaFactura" runat="server" Text='<%#Eval("fechaUltimaFactura_fh") %>'> </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_metadata,ter_sucursal_sucursal">
                        <ItemTemplate>
                            <asp:Label ID="lbl_sucursal" runat="server" CssClass="lbl" Text='<%#Eval("ter_sucursal_sucursal") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_etiquetas_alq,calq" ItemStyle-HorizontalAlign="Right">
                        <ItemTemplate>
                            <asp:Label ID="lbl_calq" runat="server" Text='<%#Eval("cantidadAlquilada") %>'> </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-HorizontalAlign="Right">
                        <ItemTemplate>
                            <bti:BotonImagen ID="btn_detalleSerializado" runat="server" CommandName="verDetalleNoSer" CommandArgument='<%#Eval("id") %>' ImageUrl="../../images/iconos/doc_verHistorial.jpg" />
                            <%--<bti:BotonImagen ID="btn_editar" runat ="server" CommandName ="editar"  CommandArgument='<%# eval("id_detalle") %>' ImageUrl= "../../images/botones/editar.gif"/>
                            --%>
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
