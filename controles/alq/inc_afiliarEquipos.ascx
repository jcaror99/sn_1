<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_afiliarEquipos.ascx.vb"
    Inherits="website.samm_componentes.controles_alq_inc_afiliarEquipos" %>
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
                    <td>
                        <asp:Label ID="lbl_numEquipos" runat="server" Text="" CssClass="lbl"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_sucursal" runat="server" Text="" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <uc1:busquedaAvanzada ID="bus_sucursal" runat="server" a_bln_obligatorio="False"
                            a_str_tabla="ter_sucursal" a_bol_postBack="true" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_modelo" runat="server" Text="" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <uc3:busquedaAvanzadaMultiple ID="bus_modelo" runat="server" a_bln_obligatorio="False"
                            a_str_tabla="cat_catalogo.equipo" a_bol_postBack="true" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_equipos" runat="server" Text="" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <uc3:busquedaAvanzadaMultiple ID="bus_equipo" runat="server" a_bln_obligatorio="false" a_str_filtroTemporal=" id_estadoequipo=1 and id_sucursal in (select id from ter_sucursal where paraalquiler=1 and active=1) "
                            a_str_tabla="equ_equipo" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <asp:RadioButtonList ID="rbl_crearOT" runat="server" CssClass="rbl" RepeatDirection="Horizontal"
                AutoPostBack="true">
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_equiposAfiliados" runat="server"
                CssClass="lbl_etiquetaInformacion"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <div id="div_equipos" runat="server" style='display: none; white-space: nowrap'>

                <asp:GridView ID="grv_equipos" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField HeaderText="<%$Resources:res_campoGrilla,equ_equipo_equipo %>">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbl_idEquipo" runat="server" Text='<%# eval("id") %>' CssClass="invisible"></asp:Label>
                                            <asp:Label ID="lbl_equipo" runat="server" Text='<%# eval("detalleAlquiler") %>' Font-Bold="false"
                                                CssClass="lbl"></asp:Label>
                                        </td>
                                    </tr>
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
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="<%$Resources:res_campoGrilla,equ_detalleAlquiler_fechaDespacho_ff %>">
                            <ItemTemplate>
                                <asp:Label ID="lbl_fecha" runat="server" Text='<%# eval("fechadespacho_ff") %>'></asp:Label>
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
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <div id="div_equiposSinAlquiler" runat="server" style='display: none; white-space: nowrap; width: 1500px'>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_equiposSinAlquiler" runat="server" CssClass="lbl_etiquetaInformacion"></asp:Label>
                        </td>
                        <td></td>
                    </tr>
                    <tr>

                        <td>
                            <asp:Label ID="lbl_fechaEntrega" runat="server" CssClass="lbl"></asp:Label>
                        </td>
                        <td>
                            <uc2:fechaAvanzada ID="fec_fechaEntrega" runat="server" a_bln_obligatorio="true" />
                        </td>
                    </tr>

                </table>
                <asp:GridView ID="grv_equiposSinAlquiler" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField HeaderText="">
                            <HeaderTemplate>
                                <asp:CheckBox ID="chb_seleccionar" runat="server" />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div style="text-align: center">
                                    <asp:Image ID="ima_check" runat="server" Style="display: none;" ImageUrl="../../images/interfaz/blank.bmp"
                                        Visible='true' />
                                    <asp:CheckBox ID="chb_seleccionar" runat="server" CssClass='chb' />
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="res_campoGrilla,equ_equipo_equipo_serial">
                            <ItemTemplate>
                                <asp:Label ID="lbl_serial" runat="server" Text='<%# eval("equipo_serial") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="res_campoGrilla,equ_equipo_equipo">
                            <ItemTemplate>
                                <asp:Label ID="lbl_equipo" runat="server" Text='<%# eval("equipo") %>' Font-Bold="false" CssClass="lbl"></asp:Label>
                                <asp:Label ID="lbl_idEquipo" runat="server" Text='<%# eval("id") %>' CssClass="invisible"></asp:Label>
                                <asp:Label ID="lbl_idCatalogo" runat="server" Text='<%# eval("id_catalogo") %>' CssClass="invisible"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="res_campoGrilla,equ_estadoequipo_estadoequipo">
                            <ItemTemplate>
                                <asp:Label ID="lbl_estado" runat="server" Text='<%# eval("estado") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="res_campoGrilla,equ_equipo_ubicacion">
                            <ItemTemplate>
                                <asp:Label ID="lbl_ubicacion" runat="server" Text='<%# eval("ubicacion") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbl_horometro" runat="server" CssClass="lbl"></asp:Label>
                                            <act:FilteredTextBoxExtender ID='ftb_horometro' runat='server' TargetControlID='txt_horometro'
                                                FilterType='Numbers,Custom' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_horometro" runat="server" CssClass="txt_numero"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbl_idpadre" runat="server" CssClass="lbl"></asp:Label>
                                        </td>
                                        <td>
                                            <uc1:busquedaAvanzada ID="bus_padreALQ" runat="server" a_str_tabla="equ_equipo" a_str_campo="equipo,equipo_serial,equipo_codigo" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:CheckBox ID="chk_movercomponentes" runat="server" Checked="true" CssClass="lbl" />
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="res_campoGrilla,ter_sucursal_sucursal">
                            <ItemTemplate>
                                <uc1:busquedaAvanzada ID="bus_sucursal" runat="server" a_bln_obligatorio="true" a_str_tabla="ter_sucursal" a_bol_postBack="false" />
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
                                                        <asp:Label ID="lbl_tipotarifa" runat="server" CssClass="lbl"></asp:Label></td>
                                                    <td>
                                                        <uc1:busquedaAvanzada ID="bus_tipotarifa" a_str_camposDrop="tipoTarifa" a_str_tabla="alq_tipoTarifa" runat="server" a_str_camposGrilla="tipoTarifa,tipoTarifa_codigo" a_str_campo="tipoTarifa,tipoTarifa_codigo" Onseleccionar="s_seleccionartipotarifa" a_bol_postBack="true" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lbl_horas" runat="server" CssClass="lbl"></asp:Label>
                                                        <act:FilteredTextBoxExtender ID='ftb_horas' runat='server' TargetControlID='txt_horas'
                                                            FilterType='Numbers,Custom' />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txt_horas" runat="server" CssClass="txt"></asp:TextBox>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lbl_tarifas" runat="server" Text="" CssClass="lbl"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <uc1:busquedaAvanzada ID="bus_tarifas" runat="server" a_bln_obligatorio="true"
                                                            a_str_tabla="doc_itemDocumento" a_str_campo="itemdocumento,valorunitarioplaneado" a_str_filtroTemporal=" id_catalogo>0 and id>0 and id_catalogo in (select  id from [cat_catalogo.otro] where active=1 and periodoalquiler>0)" a_bol_postBack="true" Onseleccionar="s_seleccionartarifa" />
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
        </td>
    </tr>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_guardar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                ValidationGroup="alq" />
        </td>
    </tr>

</table>
