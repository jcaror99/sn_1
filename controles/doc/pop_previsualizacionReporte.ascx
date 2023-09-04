<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_previsualizacionReporte.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_previsualizacionReporte" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<link href="../../css/pop_previsualizacion.css?mr" type="text/css" rel="stylesheet" />

<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje" Visible="false"></asp:Label>

<div id="panelPrincipal">
    <div id="panelBorradores">
        <table>
            <asp:Repeater ID="rpt_borradores" runat="server">
                <ItemTemplate>
                    <tr>
                        <td>
                            <bti:BotonImagen ID="bti_borrador" AlternateText='<%# Eval("id_programacion") %>'
                                runat="server" CausesValidation="false" ImageUrl="~/images/botones/previewReporte.png"
                                OnClick="bti_borrador_click"></bti:BotonImagen>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
    <div id="panelContenido">
        <asp:Label ID="lbl_seccionInformacionGeneral" runat="server" CssClass="lbl seccion"></asp:Label>
        <br />
        <div class="divSeccion">
            <asp:Label ID="lbl_reporteTerminado" runat="server" CssClass="lbl"></asp:Label>
            <asp:Label ID="lbl_reporteTerminadoValor" runat="server" CssClass=""></asp:Label>
            <br />
            <asp:Label ID="lbl_ultimoHorometro" runat="server" CssClass="lbl"></asp:Label>
            <asp:Label ID="lbl_ultimoHorometroValor" runat="server" CssClass=""></asp:Label>
            <br />
            <asp:Label ID="lbl_trabajos" runat="server" CssClass="lbl"></asp:Label>
            <div id="lbl_trabajosValor" runat="server" class="div_valor">
            </div>
            <asp:Label ID="lbl_compromisos" runat="server" CssClass="lbl"></asp:Label>
            <div id="lbl_compromisosValor" runat="server" class="div_valor">
            </div>
            <asp:Label ID="lbl_recomendaciones" runat="server" CssClass="lbl"></asp:Label>
            <div id="lbl_recomendacionesValor" runat="server" class="div_valor">
            </div>
            <asp:Label ID="lbl_altura" runat="server" CssClass="lbl"></asp:Label>
            <asp:Label ID="lbl_alturaValor" runat="server" class="div_valor"></asp:Label>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lbl_ubicacion" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <bti:BotonImagen ID="bti_ubicacion" Visible="false" runat="server" CausesValidation="false"
                            ImageUrl="~/images/botones/map.png" OnClick="bti_ubicacion_click"></bti:BotonImagen>
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <asp:Label ID="lbl_seccionProgramacion" runat="server" CssClass="lbl seccion"></asp:Label>
        <br />
        <div class="divSeccion">
            <asp:Label ID="lbl_inicio" runat="server" CssClass="lbl"></asp:Label>
            <asp:Label ID="lbl_inicioValor" runat="server" CssClass=""></asp:Label>
            <br />
            <asp:Label ID="lbl_fin" runat="server" CssClass="lbl"></asp:Label>
            <asp:Label ID="lbl_finValor" runat="server" CssClass=""></asp:Label>
        </div>
        <br />
        <br />
        <asp:Label ID="lbl_seccionActividades" runat="server" CssClass="lbl seccion"></asp:Label>
        <br />
        <div class="divSeccion">
            <asp:Repeater ID="rpt_actividades" runat="server">
                <ItemTemplate>
                    <asp:Label ID="lbl_actividadValor" runat="server" CssClass=""><%# Eval("actividad") %></asp:Label>
                    <br />
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <br />
        <br />
        <asp:Label ID="lbl_seccionActividadesAdicionales" runat="server" CssClass="lbl seccion"></asp:Label>
        <br />
        <div class="divSeccion">
            <asp:Repeater ID="rpt_actividadesAdicionales" runat="server">
                <ItemTemplate>
                    <div class="div_item">
                        <asp:Label ID="lbl_actividadValor" runat="server" CssClass=""><%# Eval("actividad") %></asp:Label>
                        <br />
                        <asp:Label ID="lbl_duracion" runat="server" CssClass="lbl"><%#Eval("duracion_etiqueta")%></asp:Label>
                        <asp:Label ID="lbl_duracionValor" runat="server" CssClass=""><%#Eval("duracion")%></asp:Label>
                        <br />
                        <asp:Label ID="lbl_orden" runat="server" CssClass="lbl"><%#Eval("orden_etiqueta")%></asp:Label>
                        <asp:Label ID="lbl_ordenValor" runat="server" CssClass=""><%#Eval("orden")%></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <br />
        <br />
        <asp:Label ID="lbl_seccionChecklist" runat="server" CssClass="lbl seccion"></asp:Label>
        <br />
        <div class="divSeccion">
            <asp:Repeater ID="rpt_lista" runat="server">
                <ItemTemplate>
                    <asp:Label ID="lbl_lista" runat="server" CssClass="lbl"><%# Eval("lista") %></asp:Label>
                    <asp:Label ID="lbl_idLista" runat="server" Text='<%# Eval("id_lista") %>' Visible="false" />
                    <br />
                    <div class="divSeccion">
                        <asp:Repeater ID="rpt_checklist" runat="server">
                            <ItemTemplate>
                                <asp:Label ID="lbl_atributo" runat="server" CssClass="lbl_principal"><%# Eval("atributo") %></asp:Label>
                                <br />
                                <asp:Label ID="lbl_texto" runat="server" CssClass="lbl"><%#Eval("texto_etiqueta")%></asp:Label>
                                <div id="lbl_textoValor" runat="server" class="div_valor" style='<%# Iif(Eval("texto") = "", "display:none", "")%>'>
                                    <%# Eval("texto") %></div>
                                <asp:Label ID="lbl_idsOpciones" runat="server" Text='<%# Eval("ids_opciones") %>'
                                    Visible="false" />
                                <div class="divSeccion">
                                    <asp:Repeater ID="rpt_opciones" runat="server">
                                        <ItemTemplate>
                                            -
                                            <asp:Label ID="lbl_opcion" runat="server" CssClass=""><%#Eval("opcion")%></asp:Label>
                                            <br />
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <br />
        <br />
        <asp:Label ID="lbl_seccionNuevaProgramacion" runat="server" CssClass="lbl seccion"></asp:Label>
        <br />
        <div class="divSeccion">
            <asp:Label ID="lbl_inicioNuevaProgramacion" runat="server" CssClass="lbl"></asp:Label>
            <asp:Label ID="lbl_inicioNuevaProgramacionValor" runat="server" CssClass=""></asp:Label>
            <br />
            <asp:Label ID="lbl_finNuevaProgramacion" runat="server" CssClass="lbl"></asp:Label>
            <asp:Label ID="lbl_finNuevaProgramacionValor" runat="server" CssClass=""></asp:Label>
        </div>
        <br />
        <br />
        <asp:Label ID="lbl_seccionRepuestosPendientes" runat="server" CssClass="lbl seccion"></asp:Label>
        <br />
        <div class="divSeccion">
            <asp:Repeater ID="rpt_tiposDocumento" runat="server">
                <ItemTemplate>
                    <asp:Label ID="lbl_tipoDocumento" runat="server" CssClass="lbl" Text='<%# Eval("tipoDocumento") %>' />
                    <asp:Label ID="lbl_idTipoDocumento" runat="server" Text='<%# Eval("id_tipoDocumento") %>'
                        Visible="false" />
                    <div class="divSeccion">
                        <asp:Repeater ID="rpt_repuestos" runat="server">
                            <ItemTemplate>
                                <div class="div_item">
                                    <asp:Label ID="lbl_repuesto" runat="server" CssClass=""><%#Eval("repuesto")%></asp:Label>
                                    <br />
                                    <asp:Label ID="lbl_cantidad" runat="server" CssClass="lbl"><%#Eval("cantidad_etiqueta")%></asp:Label>
                                    <asp:Label ID="lbl_cantidadValor" runat="server" CssClass=""><%#Eval("cantidad")%></asp:Label>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <br />
        <br />
        <asp:Label ID="lbl_seccionRepuestosEjecutados" runat="server" CssClass="lbl seccion"></asp:Label>
        <br />
        <div class="divSeccion">
            <asp:Repeater ID="rpt_bodegas" runat="server">
                <ItemTemplate>
                    <asp:Label ID="lbl_bodega" runat="server" CssClass="lbl" Text='<%# Eval("bodega") %>' />
                    <asp:Label ID="lbl_idBodega" runat="server" Text='<%# Eval("id_bodega") %>' Visible="false" />
                    <div class="divSeccion">
                        <asp:Repeater ID="rpt_repuestosEjecutados" runat="server">
                            <ItemTemplate>
                                <div class="div_item">
                                    <asp:Label ID="lbl_catalogo" runat="server" CssClass=""><%#Eval("catalogo")%></asp:Label>
                                    <br />
                                    <asp:Label ID="lbl_cantidad" runat="server" CssClass="lbl"><%#Eval("cantidad_etiqueta")%></asp:Label>
                                    <asp:Label ID="lbl_cantidadValor" runat="server" CssClass=""><%#Eval("cantidad")%></asp:Label>
                                    <br />
                                    <asp:Label ID="lbl_detalle" runat="server" CssClass="lbl" Visible='<%# Iif(Eval("detalle") = "", "false", "true")%>'><%#Eval("detalle_etiqueta")%></asp:Label>
                                    <asp:Label ID="lbl_detalleValor" runat="server" CssClass="" Visible='<%# Iif(Eval("detalle") = "", "false", "true")%>'><%#Eval("detalle")%></asp:Label>
                                    <br style='<%# Iif(Eval("detalle") = "", "display:none", "")%>' />
                                    <asp:Label ID="lbl_centroCosto" runat="server" CssClass="lbl" Visible='<%# Iif(Eval("centroCosto") = "", "false", "true")%>'><%#Eval("centroCosto_etiqueta")%></asp:Label>
                                    <asp:Label ID="lbl_centroCostoValor" runat="server" CssClass="" Visible='<%# Iif(Eval("centroCosto") = "", "false", "true")%>'><%#Eval("centroCosto")%></asp:Label>
                                    <br style='<%# Iif(Eval("centroCosto") = "", "display:none", "")%>' />
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <br />
        <br />
        <asp:Label ID="lbl_seccionDetalleGasto" runat="server" CssClass="lbl seccion"></asp:Label>
        <br />
        <div class="divSeccion">
            <asp:Repeater ID="rpt_detallesGasto" runat="server">
                <ItemTemplate>
                    <div class="div_item">
                        <asp:Label ID="lbl_catalogo" runat="server" CssClass=""><%#Eval("catalogo")%></asp:Label>
                        <br />
                        <asp:Label ID="lbl_cantidad" runat="server" CssClass="lbl"><%#Eval("cantidad_etiqueta")%></asp:Label>
                        <asp:Label ID="lbl_cantidadValor" runat="server" CssClass=""><%#Eval("cantidad")%></asp:Label>
                        <br />
                        <asp:Label ID="lbl_detalle" runat="server" CssClass="lbl"><%#Eval("detalle_etiqueta")%></asp:Label>
                        <asp:Label ID="lbl_detalleValor" runat="server" CssClass=""><%#Eval("detalle")%></asp:Label>
                        <br />
                        <asp:Label ID="lbl_valor" runat="server" CssClass="lbl"><%#Eval("valor_etiqueta")%></asp:Label>
                        <asp:Label ID="lbl_valorValor" runat="server" CssClass=""><%#Eval("valor")%></asp:Label>
                        <br />
                        <asp:Label ID="lbl_fecha" runat="server" CssClass="lbl"><%#Eval("fecha_etiqueta")%></asp:Label>
                        <asp:Label ID="lbl_fechaValor" runat="server" CssClass=""><%#Eval("fecha")%></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <br />
        <br />
        <asp:Label ID="lbl_seccionTecnicos" runat="server" CssClass="lbl seccion"></asp:Label>
        <br />
        <div class="divSeccion">
            <asp:Repeater ID="rpt_tecnicos" runat="server">
                <ItemTemplate>
                    <asp:Label ID="lbl_tecnico" runat="server" CssClass=""><%#Eval("tecnico")%></asp:Label>
                    <br />
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <br />
        <br />
        <asp:Label ID="lbl_seccionFirma" runat="server" CssClass="lbl seccion"></asp:Label>
        <br />
        <div class="divSeccion">
            <asp:Label ID="lbl_fechaFirma" runat="server" CssClass="lbl"></asp:Label>
            <asp:Label ID="lbl_fechaFirmaValor" runat="server" CssClass=""></asp:Label>
            <br />
            <asp:Image ID="img_firma" CssClass="imagen" runat="server" Visible="false" />
        </div>
        <br />
        <br />
        <asp:Label ID="lbl_seccionAdjuntos" runat="server" CssClass="lbl seccion"></asp:Label>
        <br />
        <div class="divSeccion">
            <asp:Repeater ID="rpt_adjuntos" runat="server">
                <ItemTemplate>
                    <div class="div_item">
                        <asp:Image ID="img_adjunto" CssClass="imagen" runat="server" ImageUrl='<%#Eval("archivo")%>' />
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</div>
