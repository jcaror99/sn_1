<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_configuracion.ascx.vb"
    Inherits="website.samm_componentes.controles_cnt_inc_configuracion" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<table class='tbl_marcoFormulario'>

    <tr>
        <td>
            <table class='tbl_formulario' border='0' cellpadding='0' cellspacing='0'>
                <tr>
                    <td class='td_controlesFormulario' colspan='2' style='height: 100%' valign='bottom'>
                        <table>
                            <tr>
                                <td align='right'></td>
                                <td class='td_lblFormulario'>
                                    <asp:Label ID='lbl_id_subtipoDocumento' runat='server' CssClass='lblobligatorio'></asp:Label>
                                </td>
                                <td class='td_controlesFormulario'>
                                    <bus:busquedaAvanzada ID='bus_subtipoDocumento' runat='server' a_str_tabla='doc_subtipoDocumento'
                                        a_bln_obligatorio='True' a_str_grupoValidacion='form' />
                                </td>
                                <td></td>
                            </tr>

                            <tr>
                                <td align='right'></td>
                                <td class='td_lblFormulario'>
                                    <asp:Label ID='lbl_id_estadoTipoDocumento' runat='server' CssClass='lbl'></asp:Label>
                                </td>
                                <td class='td_controlesFormulario'>
                                    <bus:busquedaAvanzada ID='bus_estadoTipoDocumento' runat='server' a_str_tabla='doc_estadoTipoDocumento'
                                        a_bln_obligatorio='False' a_str_grupoValidacion='form' />
                                </td>
                                <td></td>
                            </tr>

                            <tr id="Tr1" runat="server">
                                <td align='right'></td>
                                <td class='td_lblFormulario'>
                                    <asp:Label ID='lbl_id_tipoServicio' runat='server' CssClass='lbl'></asp:Label>
                                </td>
                                <td class='td_controlesFormulario'>
                                    <bus:busquedaAvanzada ID='bus_tipoServicio' runat='server' a_str_tabla='gen_tipoServicio'
                                        a_bln_obligatorio='False' />
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td align='right'></td>
                                <td class='td_lblFormulario'>
                                    <asp:Label ID='lbl_id_usuario_coordinador' runat='server' CssClass='lbl'>rrr</asp:Label>
                                </td>
                                <td class='td_controlesFormulario'>
                                    <bus:busquedaAvanzada ID='bus_usuario_coordinador' runat='server' a_str_tabla='seg_usuario'
                                        a_bln_obligatorio='False' />
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td align='right'></td>
                                <td class='td_lblFormulario'>
                                    <asp:Label ID='lbl_id_departamentoSolicitud' runat='server' CssClass='lbl'></asp:Label>
                                </td>
                                <td class='td_controlesFormulario'>
                                    <bus:busquedaAvanzada ID='bus_departamentoSolicitud' runat='server' a_str_tabla='ort_departamentoSolicitud'
                                        a_bln_obligatorio='False' />
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td align='right'></td>
                                <td class='td_lblFormulario'>
                                    <asp:Label ID="lbl_subtipoDocumentoSolicitud" runat="server" CssClass='lbl'></asp:Label>
                                </td>
                                <td class='td_controlesFormulario'>
                                    <bus:busquedaAvanzada ID="bus_subtipoDocumentoSolicitud" runat="server" a_str_tabla="doc_subtipoDocumento"
                                        a_bln_obligatorio="false" />
                                </td>
                                <td></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                        <td>
                            <cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                                ValidationGroup="equipo"></cc1:BotonImagen><asp:ValidationSummary ID='vls' runat='server'
                                    ValidationGroup='equipo' CssClass='lbl_mensaje' ForeColor='' HeaderText='<%$Resources:res_mensajes,camposObligatorios %>'></asp:ValidationSummary>
                        </td>
                        <td>
                            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
                            <asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje'
                                ForeColor='' />
                        </td>
    </tr>
                </table>
            </td>
        </tr>
   <%-- <tr>
        <td>
            <asp:Panel ID="pnl_tiemposRespuesta" runat="server" CssClass="pnl">
            </asp:Panel>
            <asp:Panel ID="pnl_tiposServicio" runat="server" CssClass="pnl">
            </asp:Panel>
        </td>
    </tr>--%>
</table>
<%--</td>
    </tr>
</table>
</td> </tr> </table>
<asp:HiddenField ID='hddEstadoFormulario' runat='server' Value='<%# samm_logica.enu_estadoFormulario.buscar %>' />
<boc:bocadillo ID="Bocadillo" runat="server" />--%>

