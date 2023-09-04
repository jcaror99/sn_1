<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="buscarDocumentos.ascx.vb" 
Inherits="website.samm_componentes.controles_doc_buscarDocumentos" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
    <tr>
        <td valign='top'>
            <table>
                <tr>
                    <td class='td_lblFormulario'>
                        <asp:Label ID='lbl_subtipo_documento' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                    <td class='td_controlesFormulario'>
                        <bus:busquedaAvanzada ID='bus_subtipo_documento' runat='server' a_str_tabla='doc_subtipoDocumento'
                            a_bln_obligatorio='True' a_bol_postBack="true" a_str_campo="subtipoDocumento,id_tipoDocumento" CssClass='_bus' />
                    </td>
                  </tr>
                  <tr>
                        <td colspan="2" align="center"  >
                        <asp:HyperLink ID="hyp_OT" CssClass='hyp' runat="server" Visible='true'></asp:HyperLink>
                        </td>
                  </tr>
                  <tr>
                        <td colspan="2" align="center">
                            <asp:Label ID="lbl_cerrarCotizacion" runat="server" CssClass="lbl_mensaje"></asp:Label>
                        </td>
                  </tr>
                  <tr>
                  <td class='td_lblFormulario'>
                        <asp:Label ID='lbl_id_tercero_cliente' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                    <td class='td_controlesFormulario'>
                        <bus:busquedaAvanzada ID='bus_tercero_cliente' runat='server' a_str_tabla='ter_tercero'
                            a_bln_obligatorio='False' a_bol_postBack="true" CssClass='_bus' />
                    </td>
                  </tr>
                  <tr>
                  <td>
                        <table cellpadding='0' cellspacing='0'>
                            <tr>
                                <td align='right'>
                                    <asp:Label ID='lbl_fecha_fh' runat='server' CssClass='lbl'></asp:Label>
                                </td>
                                <td align='right' style='padding-left: 8px'>
                                    <asp:Label ID='lbl_fecha_fh_busDesde' runat='server' CssClass='lbl'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td align='right'>
                                    <asp:Label ID='lbl_fecha_fh_busA' runat='server' CssClass='lbl'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class='td_controlesFormulario'>
                        <table cellpadding='0' cellspacing='0'>
                            <tr>
                                <td>
                                    <fec:fechaAvanzada ID='fec_fecha_fh' runat='server' a_str_prefijo='fh' CssClass="txt_fecha_bus"
                                        a_bln_obligatorio='False' CssClassHora="txt_hora_bus"></fec:fechaAvanzada>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <fec:fechaAvanzada ID='fec_fecha_fh_bus' runat='server' a_str_prefijo='fh' CssClass="txt_fecha_bus"
                                        CssClassHora="txt_hora_bus" a_bln_obligatorio='false'></fec:fechaAvanzada>
                                </td>
                            </tr>
                        </table>
                    </td>
                  </tr>
                  <tr>
                  <td>
                        <table cellpadding='0' cellspacing='0'>
                            <tr>
                                <td align='right'>
                                    <asp:Label ID='lbl_fechaSugerida_fh' runat='server' CssClass='lbl'></asp:Label>
                                </td>
                                <td align='right' style='padding-left: 8px'>
                                    <asp:Label ID='lbl_fechaSugerida_fh_busDesde' runat='server' CssClass='lbl'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td align='right'>
                                    <asp:Label ID='lbl_fechaSugerida_fh_busA' runat='server' CssClass='lbl'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class='td_controlesFormulario'>
                        <table cellpadding='0' cellspacing='0'>
                            <tr>
                                <td>
                                    <fec:fechaAvanzada ID='fec_fechaSugerida_fh' runat='server' a_str_prefijo='fh' CssClass="txt_fecha_bus"
                                        a_bln_obligatorio='False' CssClassHora="txt_hora_bus"></fec:fechaAvanzada>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <fec:fechaAvanzada ID='fec_fechaSugerida_fh_bus' runat='server' a_str_prefijo='fh' CssClass="txt_fecha_bus"
                                        CssClassHora="txt_hora_bus" a_bln_obligatorio='false'></fec:fechaAvanzada>
                                </td>
                            </tr>
                        </table>
                    </td>
                  </tr>
                  <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_estados" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td class="td_controlesFormulario">
                        <bus:busquedaAvanzada ID="bus_estados" runat="server" a_str_tabla="doc_estadoTipoDocumento"
                            a_bol_postBack="true" CssClass='_bus' />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg" />
                    </td>
                </tr>
               </table>
         </td>
         <td>
            <table>
                <tr>
                    <td align='left'>
                        <bti:BotonImagen ID="bti_siguiente" runat="server" ImageUrl="../../images/botones/siguiente.png" />
                    </td>
                </tr>
                <tr>
                    <td align='left'>
                        <asp:CheckBox ID="chb_seleccionarTODO" runat="server" CssClass='chb' />
                        <asp:DropDownList CssClass="drp" ID="drpnum" AutoPostBack="true" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                   <tr>
                <td style="text-align :left " ><asp:Label ID="lbl_numeroREG" runat="server" CssClass ="lbl" ></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="grd_ot" runat="server" AllowPaging="True" PagerSettings-Mode="Numeric"
                            PageSize="15" Width="600px" AutoGenerateColumns="False">
                            <Columns>
                                <asp:TemplateField ItemStyle-HorizontalAlign='Center'>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_id" runat="server" Text='<%# Eval("id") %>' Visible="false"></asp:Label><asp:Label
                                            ID="lbl_campo" runat="server" Visible="false"></asp:Label><asp:CheckBox ID="chb_seleccionar"
                                                runat="server" /></ItemTemplate>
                                    <HeaderTemplate>
                                        <asp:CheckBox ID="chb_seleccionar" runat="server" /></HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-HorizontalAlign='Left' HeaderText="<%$ Resources:res_campoGrilla,doc_documento_documento_numero %>">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_doc" runat="server" Text='<%# eval("prefijo") & " - " & eval("documento_numero") %>'></asp:Label></ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="documento" HeaderText="<%$ Resources:res_campoGrilla,doc_documento_documento %>"
                                    ReadOnly="True" SortExpression="documento" />
                                <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="fecha_fh" HeaderText="<%$ Resources:res_campoGrilla,doc_documento_fecha_fh %>"
                                    ReadOnly="True" SortExpression="fecha_fh" />
   
                                <%--<asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="estadoTipoDocumento"
                                    HeaderText="<%$ Resources:res_campoGrilla,doc_estadotipodocumento_estadotipodocumento %>"
                                    ReadOnly="True" SortExpression="estadoTipoDocumento" />
                                <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="zona" HeaderText="<%$ Resources:res_campoGrilla,gen_zona_zona %>"
                                    ReadOnly="True" SortExpression="zona" />
                                <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="tercero_cliente" HeaderText="<%$ Resources:res_campoGrilla,doc_documento_id_tercero_cliente %>"
                                    ReadOnly="True" SortExpression="tercero_cliente" />
                                <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="sucursal" HeaderText="<%$ Resources:res_campoGrilla,ter_sucursal_sucursal %>"
                                    ReadOnly="True" SortExpression="sucursal" />
                                <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="contrato" HeaderText="<%$ Resources:res_campoGrilla,cnt_contrato_contrato %>"
                                    ReadOnly="True" SortExpression="contrato" />--%>
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
        </td>
    </tr>
</table>



