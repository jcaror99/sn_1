<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_afiliarRepuestos.ascx.vb"
    Inherits="website.samm_componentes.controles_alq_inc_afiliarRepuestos" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="uc3" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table>
    <tr>
        <td>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lbl_afilacion" runat="server" Text="" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drp_opcionafiliacion" runat="server" CssClass="drp" AutoPostBack="true">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lbl_numEquipos" runat="server" Text="" CssClass="lbl"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:CheckBox ID="chk_repuestosEquipo" runat="server" AutoPostBack="true" CssClass="lbl" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_repuesto" runat="server" Text="" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <uc3:busquedaAvanzadaMultiple ID="bus_repuesto" runat="server" a_bln_obligatorio="False" a_str_campo="catalogo,codigoInventario,catalogo_codigo"
                            a_bol_postBack="true" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_bodega" runat="server" Text="" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <uc3:busquedaAvanzadaMultiple ID="bus_bodega" runat="server" a_bln_obligatorio="False"
                            a_str_tabla="gen_bodega" a_str_campo="bodega,bodega_codigo" a_bol_postBack="true" />
                    </td>
                </tr>

            </table>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_repuestosAfiliados" runat="server"
                CssClass="lbl_etiquetaInformacion"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <div id="div_repuestos" runat="server" style='display: none; white-space: nowrap'>
                <asp:GridView ID="grv_repuestos" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField HeaderText="res_campoGrilla,cat_catalogo_repuesto_catalogo_repuesto">
                            <ItemTemplate>
                                <asp:Label ID="lbl_iditem" runat="server" Text='<%# eval("id") %>' CssClass="invisible"></asp:Label>
                                <asp:Label ID="Lbl_idCatalogo" runat="server" Text='<%# eval("id_catalogo") %>' CssClass="invisible"></asp:Label>
                                <asp:Label ID="lbl_Alquiler" runat="server" Text='<%# eval("detalleAlquiler") %>'
                                    CssClass="lbl"></asp:Label>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:GridView ID="grv_tarifas" runat="server" AutoGenerateColumns="false">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="res_campoGrilla,cat_tarifa_tarifa">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_tarifa" runat="server" Text='<%# eval("tarifa") %>' CssClass="lbl"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="res_campoGrilla,cnt_pagoscontrato_valor">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_valor" runat="server" Text='<%# eval("doc_itemDocumento_valorUnitarioPlaneado") %>' CssClass="lbl"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="res_campoGrilla,alq_tipotarifa_tipotarifa">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_tipotarifa" runat="server" Text='<%# eval("alq_tipotarifa_tipotarifa") %>' CssClass="lbl"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="res_campoGrilla,alq_tarifa_horasincluidas">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_horasincluida" runat="server" Text='<%# eval("horasincluidas") %>' CssClass="lbl"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbl_documentos" runat="server" CssClass="lbl"></asp:HyperLink></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="res_campoGrilla,doc_itemdocumento_cantidadplaneado">
                            <ItemTemplate>
                                <asp:Label ID="lbl_planeado" runat="server" Text='<%# eval("cantidadSolicitada") %>'
                                    CssClass="lbl"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="res_campoGrilla,doc_itemdocumento_cantidadejecutado">
                            <ItemTemplate>
                                <asp:Label ID="lbl_alquilado" runat="server" Text='<%# eval("cantidadAlquilada") %>'
                                    CssClass="lbl"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="res_campoGrilla,ter_sucursal_sucursal">
                            <ItemTemplate>
                                <asp:Label ID="lbl_sucusal" runat="server" Text='<%# eval("ter_sucursal_sucursal") %>'
                                    CssClass="lbl"></asp:Label>
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
                <table>
                    <tr>
                    </tr>
                </table>
            </div>
            <table>
                <tr>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_repuestosSinAlquiler" runat="server" Text="<%$Resources:res_etiquetas_alq,repuestos_alquiler %>"
                            CssClass="lbl_etiquetaInformacion"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_fechaEntrega" runat="server"
                            CssClass="lbl_etiquetaInformacion"></asp:Label>
                    </td>
                    <td>
                        <uc2:fechaAvanzada ID="fec_entrega" runat="server" a_bln_obligatorio="true" a_str_prefijo="fh" />
                    </td>
                </tr>
            </table>
            <div id="div_repuestosSinAlquiler" runat="server" style='display: none; white-space: nowrap'>
                <asp:GridView ID="grv_repuestonSinalquiler" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField HeaderText="">
                            <HeaderTemplate>
                                <asp:CheckBox ID="chb_seleccionar" runat="server" />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div style="text-align: center">
                                    <asp:CheckBox ID="chb_seleccionar" runat="server" CssClass="chb" />
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="res_campoGrilla,cat_catalogo_repuesto_catalogo_repuesto">
                            <ItemTemplate>
                                <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' CssClass="invisible"></asp:Label>
                                <asp:Label ID="lbl_id_catalogo" runat="server" Text='<%# eval("id_catalogo") %>'
                                    CssClass="invisible"></asp:Label>
                                <asp:Label ID="lbl_idAlquiler" runat="server" Text='<%# eval("cat_catalogo_codigoInventario") %>'
                                    CssClass="invisible"></asp:Label>
                                <asp:Label ID="lbl_repuesto" runat="server" Text='<%# eval("cat_catalogo_catalogo")& "("& eval("cat_catalogo_catalogo_codigo") &")" %>'
                                    CssClass="lbl"></asp:Label>

                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="res_campoGrilla,cat_catalogo_bodega_id_bodega">
                            <ItemTemplate>
                                <asp:Label ID="lbl_id_bodega" runat="server" Text='<%# eval("id_bodega") %>' CssClass="invisible"></asp:Label>
                                <asp:Label ID="lbl_bodega" runat="server" Text='<%# eval("gen_bodega_bodega") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="res_campoGrilla,cat_catalogo_bodega_existencia">
                            <ItemTemplate>
                                <asp:Label ID="lbl_existencia" runat="server" Text='<%# eval("existencia") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="res_campoGrilla,ter_sucursal_sucursal">
                            <ItemTemplate>
                                <uc1:busquedaAvanzada ID="bus_sucursal" runat="server" a_bln_obligatorio="true" a_str_tabla="ter_sucursal"
                                    a_bol_postBack="false" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="res_campoGrilla,cat_detallerepuesto_cantidad">
                            <ItemTemplate>
                                <asp:TextBox runat="server" ID="txt_cantidad" CssClass="txt_numero"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="res_campoGrilla,alq_tarifa_tarifa">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:GridView ID="grv_tarifas" runat="server" AutoGenerateColumns="false" OnRowDeleting="s_tarifasEliminar">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="res_campoGrilla,cat_tarifa_tarifa">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Lbl_id" runat="server" Text='<%# eval("id") %>' CssClass="invisible"></asp:Label>
                                                            <asp:Label ID="lbl_tarifa" runat="server" Text='<%# eval("itemdocumento") %>' CssClass="lbl"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="res_campoGrilla,cnt_pagoscontrato_valor">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_valor" runat="server" Text='<%# eval("valorunitarioplaneado") %>' CssClass="lbl"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="res_campoGrilla,alq_tipotarifa_tipotarifa">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Lbl_idtipotarifa" runat="server" Text='<%# eval("idtipotarifa") %>' CssClass="invisible"></asp:Label>
                                                            <asp:Label ID="lbl_tipotarifa" runat="server" Text='<%# eval("tipotarifa") %>' CssClass="lbl"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="res_campoGrilla,alq_tarifa_horasincluidas">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_horasincluida" runat="server" Text='<%# eval("horasincluida") %>' CssClass="lbl"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:ButtonField CommandName="Delete" CausesValidation="false" ButtonType="Image" ImageUrl="../../images/botones/eliminar.png" ControlStyle-Width="20" ControlStyle-Height="20" />

                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lbl_tarifas" runat="server" Text="" CssClass="lbl"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <uc1:busquedaAvanzada ID="bus_tarifas" runat="server" a_bln_obligatorio="true"
                                                            a_str_tabla="doc_itemDocumento" a_str_campo="itemdocumento,valorunitarioplaneado" a_str_filtroTemporal=" id>0 and id_catalogo>0 and id_catalogo in (select  id from [cat_catalogo.otro] where active=1 and periodoalquiler>0)" a_bol_postBack="true" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lbl_tipotarifa" runat="server" CssClass="lbl"></asp:Label></td>
                                                    <td>
                                                        <uc1:busquedaAvanzada ID="bus_tipotarifa" a_str_camposDrop="tipotarifa" a_str_tabla="alq_tipoTarifa" runat="server" a_str_camposGrilla="tipotarifa,tipotarifa_codigo" a_str_campo="tipotarifa" Onseleccionar="s_seleccionartarifa" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>

                                </table>

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
            </div>
            <table>
                <tr>
                    <td>
                        <bti:BotonImagen ID="bti_guardar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                            ValidationGroup="alq" />
                    </td>
                </tr>
            </table>
            </div>
        </td>
    </tr>

</table>
