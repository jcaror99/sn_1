<%@ Page Language="VB" MasterPageFile="~/master/master/mas_grillaFormularioHorizontal.master"
    AutoEventWireup="false" CodeBehind="alq_devolverEquipos.aspx.vb" Inherits="website.samm_web.forms_alq_devolverEquipos"
    Title="devolver Equipos" %>

<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada'
    TagPrefix='uc1' %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada"
    TagPrefix="uc2" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/informacion.ascx" TagName="informacion"
    TagPrefix="uc4" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName='tabs' TagPrefix='tab' %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" runat="Server">
<asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo' Text="<%$ Resources:res_tituloPagina, forms_alq_afiliarEquipos%>"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" runat="Server">
    <table cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <uc4:informacion ID="inf_alquiler" runat="server" a_bln_orientacionVertical="false" />
            </td>
        </tr>
        <tr><td></br></td></tr>
        <tr>
            <td>
                <tab:tabs ID='tb_devolver' runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:MultiView ID="mvw_modulos" runat="server">
                    <asp:View ID="vw_equipo" runat="server">
                        <table class="tbl_marcoFormulario">
                            <tr>
                                <td>
                                    <asp:Label ID="lbl_equiposAlquiler" runat="server" CssClass="lbl_etiquetaInformacion"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="grv_detalleAlquiler" runat="server" AutoGenerateColumns="False">
                                        <EmptyDataTemplate>
                                            <asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, grillaVacia %>'></asp:Label></EmptyDataTemplate>
                                        <Columns>
                                            <asp:TemplateField HeaderText="">
                                                <HeaderTemplate>
                                                    <asp:CheckBox ID="chb_seleccionar" runat="server" />
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="chb_seleccionar" runat="server" />
                                                    <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' CssClass="invisible" />
                                                    <asp:Label ID="lbl_idEquipo" runat="server" Text='<%# eval("id_equipo") %>' CssClass="invisible" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField HeaderText='res_campoGrilla,equ_equipo_equipo' DataField="serial"
                                                ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField HeaderText='res_campoGrilla,equ_detallealquiler_fechadespacho_ff'
                                                DataField='despacho' ItemStyle-HorizontalAlign="Center" />
                                            <asp:TemplateField HeaderText="res_campoGrilla,ter_sucursal_sucursal">
                                                <ItemTemplate>
                                                    <uc1:busquedaAvanzada ID="bus_sucursal" runat="server" a_str_grupoValidacion="alq"
                                                        a_str_tabla="ter_sucursal" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_fechaultimafactura_fh'>
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_fechaUltimaFactura" runat="server" Text='<%# Format(eval("fechaUltimaFactura_fh"),"dd/MM/yyyy") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_fechadevolucion_ff'>
                                                <ItemTemplate>
                                                    <uc2:fechaAvanzada ID="fec_fechaDevolucion" runat="server" a_bln_obligatorio="True"
                                                        a_str_grupoValidacion="alq" a_str_prefijo="fh" FechaSeleccionada='<%# eval("fechaDevolucion") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="res_campoGrilla,equ_detallealquiler_horometro">
                                                <ItemTemplate>
                                                    <asp:TextBox ID="txt_horometro" runat="server" CssClass="txt_numero" Visible='<%# IIF(eval("mHorometro"),"true","false") %>' Text ='<%# eval("horometro") %>'    ></asp:TextBox>
                                                    <act:filteredtextboxextender id='ftb_horometro' runat='server' targetcontrolid='txt_horometro'
                                                        filtertype='Numbers,Custom' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lbl_idpadre" runat="server" CssClass="lbl"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <uc1:busquedaAvanzada ID="bus_padreALQ" runat="server" a_str_tabla="equ_equipo" a_str_campo="equipo,equipo_serial,equipo_codigo" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                            </td>
                                                            <td>
                                                            </td>
                                                            <td>
                                                                <asp:CheckBox ID="chk_movercomponentes" runat="server" Checked="true" CssClass="lbl" />
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
                                    <asp:CheckBox ID="chb_ejecutarAlquiler" runat="server" Text="" Checked="false" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <bti:BotonImagen ID="bti_aceptarEquipos" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                                        ValidationGroup="alq" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="vw_noser" runat="server">
                        <table class="tbl_marcoFormulario">
                            <tr>
                                <td>
                                    <asp:Label ID="lbl_noSerializados" runat="server" CssClass="lbl_etiquetaInformacion"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="grv_noSerializados" runat="server" AutoGenerateColumns="False">
                                        <EmptyDataTemplate>
                                            <asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, grillaVacia %>'></asp:Label></EmptyDataTemplate>
                                        <Columns>
                                            <asp:TemplateField HeaderText="">
                                                <HeaderTemplate>
                                                    <asp:CheckBox ID="chb_seleccionar" runat="server" />
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="chb_seleccionar" runat="server" OnCheckedChanged="chb_CheckedChanged"  AutoPostBack="true" />
                                                    <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' CssClass="invisible" />
                                                    <asp:Label ID="lbl_idCatalogo" runat="server" Text='<%# eval("id_catalogo") %>' CssClass="invisible" />
                                                    <asp:Label ID="lbl_idAlquiler" runat="server" Text='<%# eval("id_alquiler") %>' CssClass="invisible" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField HeaderText='res_campoGrilla,equ_detallealquiler_detallealquiler'
                                                DataField="detalleAlquiler" ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField HeaderText='res_campoGrilla,equ_detallealquiler_fechadespacho_ff'
                                                DataField='despacho' ItemStyle-HorizontalAlign="Center" />
                                            <asp:TemplateField HeaderText="res_campoGrilla,gen_bodega_bodega">
                                                <ItemTemplate>
                                                    <uc1:busquedaAvanzada ID="bus_bodega" runat="server" a_bln_obligatorio="True" Onseleccionar="s_seleccionarBodega"
                                                        a_str_tabla="gen_bodega" a_str_grupoValidacion="noSerializados" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_fechaultimafactura_fh'>
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_fechaUltimaFactura" runat="server" Text='<%# Format(eval("fechaUltimaFactura_fh"),"dd/MM/yyyy") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_fechadevolucion_ff'>
                                                <ItemTemplate>
                                                    <uc2:fechaAvanzada ID="fec_fechaDevolucion" runat="server" a_bln_obligatorio="True"
                                                        a_str_grupoValidacion="alq" a_str_prefijo="fh" FechaSeleccionada='<%# now %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_cantidadalquilada'>
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_cantidadAlquilada" runat="server" Text='<%# eval("cantidadAlquilada") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_cantidaddevuelta'>
                                                <ItemTemplate>
                                                    <asp:TextBox ID="txt_cantidad" runat="server" CssClass="txt" />
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
                            <tr>
                                <td>
                                    <asp:CheckBox ID="chb_ejecutarMovimiento" runat="server" Text="" Checked="false" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <bti:BotonImagen ID="bti_aceptarNoSerializados" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                                        ValidationGroup="noSerializados" />
                                </td>
                            </tr>
                          
                        </table>
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
            </td>
        </tr>
    </table>
    <uc2:popup ID="pop_temparios" runat="server" a_bol_mostrarSAMM="false" />
</asp:Content>
