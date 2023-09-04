<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="buscarOT.ascx.vb" Inherits="website.samm_componentes.controles_doc_buscarOT" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register src="~/controles/general/busquedaAvanzadaMultiple.ascx" tagname="busquedaAvanzadaMultiple" tagprefix="uc3" %>

<table>
    <tr>
        <td valign='top'>
            <table>
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
                    <td class='td_lblFormulario'>
                        <asp:Label ID='lbl_id_sucursal' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                    <td class='td_controlesFormulario'>
                            <uc3:busquedaAvanzadaMultiple  ID='bus_sucursal' runat='server' a_str_tabla='ter_sucursal'
                            a_bln_obligatorio='False' a_bol_postBack="true"  />
                            
                    </td>
                </tr>
                  <tr>
                    <td class='td_lblFormulario'>
                        <asp:Label ID='lbl_departamento' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                    <td class='td_controlesFormulario'>
                        <bus:busquedaAvanzada ID='bus_departamento' runat='server' a_str_tabla='ort_departamentoSolicitud'
                            a_bln_obligatorio='False' a_bol_postBack="true" CssClass='_bus' />
                    </td>
                </tr>
                
                <tr>
                    <td class='td_lblFormulario'>
                        <asp:Label ID='lbl_zona' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                    <td class='td_controlesFormulario'>
                        <bus:busquedaAvanzada ID='bus_zona' runat='server' a_str_tabla='gen_zona'
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
                    <td class='td_lblFormulario'>
                        <asp:Label ID='lbl_id_tipoServicio' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                    <td class='td_controlesFormulario'>
                        <bus:busquedaAvanzada ID='bus_tipoServicio' runat='server' a_str_tabla='gen_tipoServicio'
                            a_bln_obligatorio='False' CssClass='_bus' />
                    </td>
                </tr>
                <tr>
                    <td class='td_lblFormulario'>
                        <asp:Label ID='lbl_id_equipo' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                    <td class='td_controlesFormulario'>
                        <bus:busquedaAvanzada ID='bus_equipo' runat='server' a_str_tabla='equ_equipo' a_bln_obligatorio='False'
                            a_bol_postBack="true" a_str_campo="equipo,equipo_serial,equipo_codigo" CssClass='_bus' />
                    </td>
                </tr>
                <tr>
                    <td class='td_lblFormulario'>
                        <asp:Label ID='lbl_id_contrato' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                    <td class='td_controlesFormulario'>
                        <bus:busquedaAvanzada ID='bus_contrato' runat='server' a_str_tabla='cnt_contrato'
                            a_bln_obligatorio='False' CssClass='_bus' />
                        <%--ponerle el numero del contrato--%>
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_estados" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td class="td_controlesFormulario">
                        <bus:busquedaAvanzada ID="bus_estados" runat="server" a_str_tabla="doc_estadoTipoDocumento"
                            CssClass='_bus' />
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="Lbl_subOT" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td class="td_controlesFormulario">
                        <bus:busquedaAvanzada ID="Bus_subOT" runat="server" a_str_tabla="doc_subtipoDocumento"
                            CssClass='_bus' />
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_proveedor" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td class="td_controlesFormulario">
                        <bus:busquedaAvanzada ID="bus_proveedor" runat="server" a_str_tabla="ter_tercero" a_str_filtros="esProveedor=1"
                            CssClass='_bus' />
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
                    </td>
                </tr>
                <tr>
                <td style="text-align :left" ><asp:Label ID="lbl_numeroREG" runat="server" CssClass ="lbl" ></asp:Label></td>
                </tr>
                <tr>
                <td align='left'>
                    <asp:Label ID="lbl_numEquipos" runat="server" CssClass="lbl"></asp:Label>&nbsp;
                    <asp:Label ID="Label1" runat="server" CssClass="lbl" Text="Ver:"></asp:Label><asp:DropDownList ID="drpNumeroRegistros" runat="server" AutoPostBack=true CssClass="drp">
                    <asp:ListItem Selected=True Text="10" Value="10"></asp:ListItem>
                    <asp:ListItem Text="50" Value="50"></asp:ListItem>
                    <asp:ListItem Text="100" Value="100"></asp:ListItem>
                    <asp:ListItem Text="200" Value="200"></asp:ListItem>
                    <asp:ListItem Text="500" Value="500"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="grd_ot" runat="server" AllowPaging="True" PagerSettings-Mode="Numeric"
                            PageSize="15" Width="600px" AutoGenerateColumns="False">
                            <Columns>
                                <asp:TemplateField ItemStyle-HorizontalAlign='Left'>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_id" runat="server" Text='<%# Eval("id") %>' Visible="false"></asp:Label><asp:Label
                                            ID="lbl_campo" runat="server" Visible="false"></asp:Label><asp:CheckBox ID="chb_seleccionar"
                                                runat="server" /></ItemTemplate>
                                    <HeaderTemplate>
                                        <asp:CheckBox ID="chb_seleccionar" runat="server" /></HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-HorizontalAlign='Left' HeaderText="<%$ Resources:res_campoGrilla,doc_documento_documento %>">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_doc" runat="server" Text='<%# eval("prefijo") & " - " & eval("numero") %>'></asp:Label></ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="fecha_fh" HeaderText="<%$ Resources:res_campoGrilla,doc_documento_fecha_fh %>"
                                    ReadOnly="True" SortExpression="fecha_fh" />
                                <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="tipoServicio" HeaderText="<%$ Resources:res_campoGrilla,gen_tiposervicio_tiposervicio %>"
                                    ReadOnly="True" SortExpression="tipoServicio" />
                                <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="estadoTipoDocumento"
                                    HeaderText="<%$ Resources:res_campoGrilla,doc_estadotipodocumento_estadotipodocumento %>"
                                    ReadOnly="True" SortExpression="estadoTipoDocumento" />
                                <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="zona" HeaderText="<%$ Resources:res_campoGrilla,gen_zona_zona %>"
                                    ReadOnly="True" SortExpression="zona" />
                                <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="tercero_cliente" HeaderText="<%$ Resources:res_campoGrilla,doc_documento_id_tercero_cliente %>"
                                    ReadOnly="True" SortExpression="tercero_cliente" />
                                <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="sucursal" HeaderText="<%$ Resources:res_campoGrilla,ter_sucursal_sucursal %>"
                                    ReadOnly="True" SortExpression="sucursal" />
                                <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="contrato" HeaderText="<%$ Resources:res_campoGrilla,cnt_contrato_contrato %>"
                                    ReadOnly="True" SortExpression="contrato" />
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
