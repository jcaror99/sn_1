<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_trabajosSol.ascx.vb"
    Inherits="website.samm_componentes.controles_ort_inc_trabajosSol" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<table>
    <tr>
        <td>
            <bti:BotonImagen ID="btnNuevo" runat="server" CausesValidation="False" CssClass="imb"
                ImageUrl="~/images/botones/agregar.gif" Visible=false></bti:BotonImagen>
            <bti:BotonImagen ID="btn_editar" runat="server" CausesValidation="false" CssClass="imb"
                ImageUrl="~/images/botones/editar.gif" Visible=false></bti:BotonImagen>
            <bti:BotonImagen ID="btn_eliminar" runat="server" CausesValidation="false" CssClass="imb"
                ImageUrl="~/images/botones/quitar.gif" Visible=false></bti:BotonImagen>
            <bti:BotonImagen ID="btn_informe" runat="server" CausesValidation="false" CssClass="imb"
                ImageUrl="~/images/botones/ort_infcliente.gif" Visible=false></bti:BotonImagen>
            <bti:BotonImagen ID="btn_actualizar" runat="server" CausesValidation="false" CssClass="imb"
                ImageUrl="~/images/botones/actualizar.gif" Visible=false></bti:BotonImagen>
        </td>
    </tr>
    <tr>
        <td style="text-align: left;">
            <%--<gri:grilla ID="grdTrabajos" runat="server" a_bln_paginacionNormal="true"></gri:grilla>--%>
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: left;" colspan="2">
            <table>
                <tr>
                    <td style="white-space: nowrap;">
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="lbl_fecha" runat="server" CssClass="lbl"></asp:Label>
                                </td>
                                <td>
                                    <uc2:fechaAvanzada ID="fec_reportes" runat="server" a_str_prefijo="ff" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="lbl_hasta" runat="server" CssClass="lbl"></asp:Label>
                                </td>
                                <td>
                                    <uc2:fechaAvanzada ID="fec_reportes0" runat="server" a_str_prefijo="ff" />
                                </td>
                                <td>
                                    <bti:BotonImagen ID="btn_buscarFecha" runat="server" CausesValidation="false" CssClass="imb"
                                        ImageUrl="~/images/botones/buscarba.gif"></bti:BotonImagen>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <asp:Label ID="lbl_tecnico" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <uc1:busquedaAvanzadaMultiple ID="bus_tecnicos" runat="server" a_str_filtros="id_cargo in (select id from seg_cargo where esTecnico=1)"
                            a_str_tabla="seg_usuario" />
                    </td>
                    <td>
                        <asp:Label ID="lbl_actividad" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <uc1:busquedaAvanzadaMultiple ID="bus_actividades" runat="server" a_str_tabla="cat_catalogo.actividad" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_duracionHorasHombre" runat="server" CssClass="lbl"></asp:Label>
                        <asp:Label ID="lbl_duracionHorasHombreTexto" runat="server" Style="width: 10px"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbl_duracionOt" runat="server" CssClass="lbl"></asp:Label>
                        <asp:Label ID="lbl_duracionOtTexto" runat="server" Style="width: 10px"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbl_numeroReportes" runat="server" CssClass="lbl"></asp:Label>
                        <asp:Label ID="lbl_numeroReportesTexto" runat="server" Style="width: 10px"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="grd_trabajos" runat="server" AutoGenerateColumns="False">
                <FooterStyle CssClass="gri_pie" />
                <RowStyle CssClass="gri_item" />
                <PagerStyle CssClass="gri_paginacion" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" HeaderStyle-CssClass="invisible"
                        ItemStyle-CssClass="invisible" ControlStyle-CssClass="invisible" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink ID="hpr_geo" runat="server" Target="_blank" NavigateUrl='<%#Eval("geo") %>'
                                Visible='<%# iif(Eval("geo") = "", "false", "true") %>' ImageUrl="../../images/iconos/mundo.jpg"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="res_campoGrilla,ort_reportetecnico_numero" DataField="numero" />
                    <asp:BoundField HeaderText="res_campoGrilla,ort_programacion_desde_fh" DataField="fecha" />
                    <asp:BoundField HeaderText="res_campoGrilla,ort_programacion_duracion" DataField="duracion" />
                    <asp:BoundField HeaderText="res_nombreColumna,horasHombre" DataField="horasHombre" />
                    <asp:TemplateField HeaderText="res_campoGrilla,ort_reportetecnico_trabajos">
                        <ItemTemplate>
                            <asp:Label ID="lbl_trabajos" runat="server" Text='<%#Eval("trabajos") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_campoGrilla,ort_reportetecnico_compromisos">
                        <ItemTemplate>
                            <asp:Label ID="lbl_compromisos" runat="server" Text='<%#Eval("compromisos") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_campoGrilla,ort_reportetecnico_recomendaciones">
                        <ItemTemplate>
                            <asp:Label ID="lbl_recomendaciones" runat="server" Text='<%#Eval("recomendaciones") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_nombreColumna,tecnico">
                        <ItemTemplate>
                            <asp:HyperLink ID="lnk" runat="server" Target="_blank" CssClass="lnk" NavigateUrl='<%#Eval("link") %>'
                                Text='<%# eval("tecnicos") %>'></asp:HyperLink>
                            <asp:Label ID="lbl_id" runat="server" CssClass="invisible" Text='<%#Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="res_campoGrilla,equ_falla_falla">
                        <ItemTemplate>
                            <asp:HyperLink ID="lnk_falla" runat="server" Target="_blank" CssClass="lnk" NavigateUrl='<%#Eval("link_fallas") %>'
                                Text='<%# eval("fallas") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_campoGrilla,cat_catalogo_actividad_catalogo_actividad">
                        <ItemTemplate>
                            <asp:HyperLink ID="lnk_actividad" runat="server" Target="_blank" CssClass="lnk" NavigateUrl='<%#Eval("link_actividades") %>'
                                Text='<%# eval("actividades") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_campoGrilla,doc_documento_documento">
                        <ItemTemplate>
                            <asp:Label ID="lbl_doc_ot" runat="server" CssClass="lbl" Text='<%#Eval("doc_ot") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_campoGrilla,ort_canalatencion">
                        <ItemTemplate>
                            <asp:Label ID="lbl_canalAtencion" runat="server" Text='<%#Eval("canalAtencion") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField >
                        <ItemTemplate>
                            <asp:HyperLink ID="hpr_imprimir" style="cursor:pointer; cursor: hand;" runat="server" ImageUrl="../../images/iconos/imprimirReporteNoFirmado.png"
                                OnClick='<%#Eval("link_imprimir") %>' Visible='<%# IIF(Eval("link_imprimir") = "", False, True) %>'></asp:HyperLink>
                                
                                <asp:HyperLink ID="hpr_imprimirConFirma" style="cursor:pointer; cursor: hand;" runat="server" ImageUrl="../../images/iconos/imprimirReporteFirmado.png"
                                OnClick='<%#Eval("link_imprimirConFirma") %>' Visible='<%# IIF(Eval("link_imprimirConFirma") = "", False, True) %>'></asp:HyperLink>
                                
                                <asp:Image ID="hpr_firma" runat="server" ImageUrl="../../images/iconos/reporteFirmado.png"
                                 Visible='<%# IIf(Eval("link_firma") = False, False, True) %>'></asp:Image>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
