<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='doc_documento_traslado.ascx.vb'
Inherits='website.samm_componentes.controles_seg_doc_documento_traslado' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
&nbsp;&nbsp;<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
TagPrefix="uc1" %><table class='tbl_marcoFormulario'>
<tr>
<td>
<asp:Panel ID='pan_formulario' runat='server' DefaultButton='imbGuardar'>
<table class='tbl_formulario' border='0' cellpadding='0' cellspacing='0'>
<tr>
<td align='right' colspan='1' class='td_formEspacioH'>
    <img alt="" src="../../images/interfaz/spacer.gif" style="width: 17px; height: 1px" /><img
        alt='' src='../../images/interfaz/spacer.gif' style='width: 17px; height: 1px' />
</td>
<td align='right' colspan='3' class='td_formEspacioV'>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td align='right' valign='top'>
    <act:togglebuttonextender id='ToggleButtonExtender1' runat='server' checkedimagealternatetext='<%$ Resources:res_controles,ayuda_especificano %>'
        checkedimageurl='../../images/iconos/ojo1.png' imageheight='26' imagewidth='30'
        targetcontrolid='chb_ayudaCampo' uncheckedimagealternatetext='<%$ Resources:res_controles,ayuda_especifica %>'
        uncheckedimageurl='../../images/iconos/ojo2.png'></act:togglebuttonextender>
    <table border='0' cellpadding='0' cellspacing='0' id='tbl_estadoformulario'>
        <tr>
            <td>
                <asp:Label ID='lbl_estadoFormulario' runat='server' CssClass='lbl_estadoFormulario'></asp:Label>
            </td>
            <td>
                <asp:CheckBox ID='chb_ayudaCampo' runat='server' AutoPostBack='True' CssClass='chb' />
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td align='right'>
            </td>
            <td class='td_lblFormulario'>
                <table cellpadding='0' cellspacing='0' align="right">
                    <tr>
                        <td rowspan="3">
                            <asp:TextBox ID='txt_prefijo' runat='server' MaxLength='10' CssClass='txt_formulario'
                                BorderWidth="0px" BackColor="transparent" Font-Bold="true" Width="50px"></asp:TextBox><asp:Label
                                    ID="lbl_separador" runat="server" Text="-"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID='lbl_documento_numero_busDesde' runat='server' CssClass=''></asp:Label>
                        </td>
                        <td align='right'>
                        </td>
                    </tr>
                    <tr>
                        <td align='right'>
                            <asp:Label ID='lbl_documento_numero_busA' runat='server' CssClass=''></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class='td_controlesFormulario'>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td align='left'>
                            <asp:TextBox ID='txt_documento_numero' runat='server' CssClass='txt_entero' ReadOnly="True"></asp:TextBox><act:filteredtextboxextender
                                id='ftb_documento_numero' runat='server' targetcontrolid='txt_documento_numero'
                                filtertype='Numbers' />
                        </td>
                    </tr>
                    <tr>
                        <td align='left'>
                            <asp:TextBox ID='txt_documento_numero_bus' runat='server' CssClass='txt_entero_bus'></asp:TextBox><act:filteredtextboxextender
                                id='ftb_documento_numero_bus' runat='server' targetcontrolid='txt_documento_numero_bus'
                                filtertype='Numbers' />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td align='right'>
            </td>
            <td class='td_lblFormulario'>
                <asp:Label ID='lbl_id_subtipoDocumento' runat='server' CssClass='lblobligatorio'></asp:Label>
            </td>
            <td class='td_controlesFormulario'>
                <bus:busquedaAvanzada ID='bus_subtipoDocumento' runat='server' a_str_tabla='doc_subtipoDocumento'
                    a_bln_obligatorio='True' a_str_grupoValidacion='form' aObol_guardarNoExiste="true" />
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td align='right'>
            </td>
            <td class='td_lblFormulario'>
                <asp:Label ID='lbl_documento_traslado' runat='server' CssClass='lbl'></asp:Label>
            </td>
            <td class='td_controlesFormulario'>
                <asp:TextBox ID='txt_documento_traslado' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID='rfv_documento_traslado' runat='server' ControlToValidate='txt_documento_traslado'
                ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align='right'>
            </td>
            <td class='td_lblFormulario'>
                <asp:Label ID='lbl_documento_codigo' runat='server' CssClass='lbl'></asp:Label>
            </td>
            <td class='td_controlesFormulario'>
                <asp:TextBox ID='txt_documento_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
            </td>
            <td>
            <asp:RequiredFieldValidator ID='rfv_documento_codigo' runat='server' ControlToValidate='txt_documento_codigo'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align='right'>
            <td align='right'>
            </td>
            <td>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td align='right'>
                            <asp:Label ID='lbl_fecha_fh' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                        <td align='right' style='padding-left: 8px'>
                            <asp:Label ID='lbl_fecha_fh_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td align='right'>
                            <asp:Label ID='lbl_fecha_fh_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class='td_controlesFormulario'>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td>
                            <fec:fechaAvanzada ID='fec_fecha_fhCopia' runat='server' a_str_prefijo='ff'></fec:fechaAvanzada>
                            <fec:fechaAvanzada ID='fec_fecha_fh' runat='server' a_str_prefijo='fh' a_bln_obligatorio='true'
                                a_str_grupoValidacion='form' a_bol_deshabilitar="true"></fec:fechaAvanzada>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <fec:fechaAvanzada ID='fec_fecha_fh_bus' runat='server' a_str_prefijo='fh' CssClass="txt_fecha_bus"
                                CssClassHora="txt_hora_bus"></fec:fechaAvanzada>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td align='right'>
            </td>
            <td class='td_lblFormulario'>
                <asp:Label ID='lbl_id_prioridadDocumento' runat='server' CssClass='lblobligatorio'></asp:Label>
            </td>
            <td class='td_controlesFormulario'>
                <bus:busquedaAvanzada ID='bus_prioridadDocumento' runat='server' a_str_tabla='doc_prioridadDocumento'
                    a_bln_obligatorio='True' a_str_grupoValidacion='form' />
            </td>
            <td>
            </td>
        </tr>
        <tr align='right'>
            <td align='right'>
            </td>
            <td>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td align='right'>
                            <asp:Label ID='lbl_fechaLimite_fh' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                        <td align='right' style='padding-left: 8px'>
                            <asp:Label ID='lbl_fechaLimite_fh_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td align='right'>
                            <asp:Label ID='lbl_fechaLimite_fh_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class='td_controlesFormulario'>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td>
                            <fec:fechaAvanzada ID='fec_fechaLimite_fh' runat='server' a_str_prefijo='fh' a_bln_obligatorio='True'
                                a_str_grupoValidacion='form'></fec:fechaAvanzada>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <fec:fechaAvanzada ID='fec_fechaLimite_fh_bus' runat='server' a_str_prefijo='fh'
                                CssClass="txt_fecha_bus" CssClassHora="txt_hora_bus"></fec:fechaAvanzada>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
            </td>
        </tr>
        <tr runat="server" visible="false">
            <td align='right'>
            </td>
            <td class='td_lblFormulario'>
                <asp:Label ID='lbl_id_tercero_cliente' runat='server' CssClass='lblobligatorio'></asp:Label>
            </td>
            <td class='td_controlesFormulario'>
                <bus:busquedaAvanzada ID='bus_tercero_cliente' runat='server' a_str_tabla='ter_tercero'
                    a_bln_obligatorio='True' />
            </td>
            <td>
            </td>
        </tr>
    </table>
</td>
<td class='td_separadorFormulario' rowspan='2'>
    <img alt='' src='../../images/interfaz/spacer.gif' width='12' />
</td>
<td class='td_controlesFormulario' rowspan='2' style='height: 100%' valign='bottom'>
    <table>
        <tr>
            <td align="right">
            </td>
            <td class="td_lblFormulario">
                <asp:Label ID="Label1" runat="server" CssClass="lbl" Text="<%$ Resources:res_etiquetas_ort,contactos %>"></asp:Label>
            </td>
            <td class="td_controlesFormulario">
                <uc1:busquedaAvanzadaMultiple ID="busContactos" runat="server" a_str_tabla="ter_contacto" />
            </td>
            <td>
            </td>
        </tr>
        <tr runat="server" visible="false" id="tr_documentoPadre">
            <td align='right'>
            </td>
            <td class='td_lblFormulario'>
                <asp:Label ID='lbl_id_documento' runat='server' CssClass='lblobligatorio'></asp:Label>
            </td>
            <td class='td_controlesFormulario'>
                <bus:busquedaAvanzada ID='bus_documento' runat='server' a_str_tabla='doc_documento'
                    a_bln_obligatorio='True' />
            </td>
            <td>
            </td>
        </tr>
        <tr align='right'>
            <td align='right'>
            </td>
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
                            <fec:fechaAvanzada ID='fec_fechaSugerida_fh' runat='server' a_str_prefijo='fh' a_bln_obligatorio='False' a_str_grupoValidacion='form'>
                            </fec:fechaAvanzada>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <fec:fechaAvanzada ID='fec_fechaSugerida_fh_bus' runat='server' a_str_prefijo='fh'
                                CssClass="txt_fecha_bus" CssClassHora="txt_hora_bus"></fec:fechaAvanzada>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
            </td>
        </tr>
        <tr align='right'>
            <td align='right'>
            </td>
            <td>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td align='right'>
                            <asp:Label ID='lbl_fechaCierre_ff' runat='server' CssClass='lbl'></asp:Label>
                        </td>
                        <td align='right' style='padding-left: 8px'>
                            <asp:Label ID='lbl_fechaCierre_ff_busDesde' runat='server' CssClass='lbl'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td align='right'>
                            <asp:Label ID='lbl_fechaCierre_ff_busA' runat='server' CssClass='lbl'></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class='td_controlesFormulario'>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td>
                            <fec:fechaAvanzada ID='fec_fechaCierre_ff' runat='server' a_str_prefijo='ff' a_bln_obligatorio='false'
                                a_str_grupoValidacion='form'></fec:fechaAvanzada>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <fec:fechaAvanzada ID='fec_fechaCierre_ff_bus' runat='server' a_str_prefijo='ff'
                                CssClass="txt_fecha_bus" CssClassHora="txt_hora_bus"></fec:fechaAvanzada>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td align='right'>
            </td>
            <td class='td_lblFormulario'>
                <asp:Label ID='lbl_id_bodega_origen' runat='server' CssClass='lblobligatorio'></asp:Label>
            </td>
            <td class='td_controlesFormulario'>
                <bus:busquedaAvanzada ID='bus_bodega_origen' runat='server' a_str_tabla='gen_bodega'
                    a_bln_obligatorio='True' a_str_grupoValidacion='form' />
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td align='right'>
            </td>
            <td class='td_lblFormulario'>
                <asp:Label ID='lbl_id_bodega_destino' runat='server' CssClass='lblobligatorio'></asp:Label>
            </td>
            <td class='td_controlesFormulario'>
                <bus:busquedaAvanzada ID='bus_bodega_destino' runat='server' a_str_tabla='gen_bodega'
                    a_bln_obligatorio='True' a_str_grupoValidacion='form' />
            </td>
            <td>
            </td>
        </tr>
        <tr id="Tr1" runat="server" visible="false" align='right'>
            <td align='right'>
            </td>
            <td>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td align='right'>
                            <asp:Label ID='lbl_subtotal' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                        <td align='right' style='padding-left: 8px'>
                            <asp:Label ID='lbl_subtotal_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td align='right'>
                            <asp:Label ID='lbl_subtotal_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class='td_controlesFormulario'>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td>
                            <asp:TextBox ID='txt_subtotal' runat='server' CssClass='txt_numero'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID='txt_subtotal_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <asp:RequiredFieldValidator ID='rfv_subtotal' runat='server' ControlToValidate='txt_subtotal'
                    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
                        id='ftb_subtotal' runat='server' targetcontrolid='txt_subtotal' filtertype='Numbers,Custom' /><act:filteredtextboxextender
                            id='ftb_subtotal_bus' runat='server' targetcontrolid='txt_subtotal_bus' filtertype='Numbers,Custom' />
            </td>
        </tr>
        <tr id="Tr2" runat="server" visible="false" align='right'>
            <td align='right'>
            </td>
            <td>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td align='right'>
                            <asp:Label ID='lbl_descuento' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                        <td align='right' style='padding-left: 8px'>
                            <asp:Label ID='lbl_descuento_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td align='right'>
                            <asp:Label ID='lbl_descuento_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class='td_controlesFormulario'>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td>
                            <asp:TextBox ID='txt_descuento' runat='server' CssClass='txt_numero'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID='txt_descuento_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <asp:RequiredFieldValidator ID='rfv_descuento' runat='server' ControlToValidate='txt_descuento'
                    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
                        id='ftb_descuento' runat='server' targetcontrolid='txt_descuento' filtertype='Numbers,Custom' /><act:filteredtextboxextender
                            id='ftb_descuento_bus' runat='server' targetcontrolid='txt_descuento_bus' filtertype='Numbers,Custom' />
            </td>
        </tr>
        <tr id="Tr3" runat="server" visible="false" align='right'>
            <td align='right'>
            </td>
            <td>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td align='right'>
                            <asp:Label ID='lbl_iva' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                        <td align='right' style='padding-left: 8px'>
                            <asp:Label ID='lbl_iva_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td align='right'>
                            <asp:Label ID='lbl_iva_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class='td_controlesFormulario'>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td>
                            <asp:TextBox ID='txt_iva' runat='server' CssClass='txt_numero'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID='txt_iva_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <asp:RequiredFieldValidator ID='rfv_iva' runat='server' ControlToValidate='txt_iva'
                    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
                        id='ftb_iva' runat='server' targetcontrolid='txt_iva' filtertype='Numbers,Custom' /><act:filteredtextboxextender
                            id='ftb_iva_bus' runat='server' targetcontrolid='txt_iva_bus' filtertype='Numbers,Custom' />
            </td>
        </tr>
        <tr id="Tr4" runat="server" visible="false" align='right'>
            <td align='right'>
            </td>
            <td>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td align='right'>
                            <asp:Label ID='lbl_total' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                        <td align='right' style='padding-left: 8px'>
                            <asp:Label ID='lbl_total_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td align='right'>
                            <asp:Label ID='lbl_total_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class='td_controlesFormulario'>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td>
                            <asp:TextBox ID='txt_total' runat='server' CssClass='txt_numero'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID='txt_total_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <asp:RequiredFieldValidator ID='rfv_total' runat='server' ControlToValidate='txt_total'
                    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
                        id='ftb_total' runat='server' targetcontrolid='txt_total' filtertype='Numbers,Custom' /><act:filteredtextboxextender
                            id='ftb_total_bus' runat='server' targetcontrolid='txt_total_bus' filtertype='Numbers,Custom' />
            </td>
        </tr>
        <tr align='right'>
            <td align='right'>
            </td>
            <td>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td align='right'>
                            <asp:Label ID='lbl_costo' runat='server' CssClass='lbl'></asp:Label>
                        </td>
                        <td align='right' style='padding-left: 8px'>
                            <asp:Label ID='lbl_costo_busDesde' runat='server' CssClass='lbl'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td align='right'>
                            <asp:Label ID='lbl_costo_busA' runat='server' CssClass='lbl'></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class='td_controlesFormulario'>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td>
                            <asp:TextBox ID='txt_costo' runat='server' CssClass='txt_numero'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID='txt_costo_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <asp:RequiredFieldValidator ID='rfv_costo' runat='server' ControlToValidate='txt_costo'
                    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor=""
                    Enabled="false">*</asp:RequiredFieldValidator><act:filteredtextboxextender id='ftb_costo'
                        runat='server' targetcontrolid='txt_costo' filtertype='Numbers,Custom' /><act:filteredtextboxextender
                            id='ftb_costo_bus' runat='server' targetcontrolid='txt_costo_bus' filtertype='Numbers,Custom' />
            </td>
        </tr>
        <tr id="Tr6" runat="server" visible="false" align='right'>
            <td align='right'>
            </td>
            <td>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td align='right'>
                            <asp:Label ID='lbl_rentabilidad' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                        <td align='right' style='padding-left: 8px'>
                            <asp:Label ID='lbl_rentabilidad_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td align='right'>
                            <asp:Label ID='lbl_rentabilidad_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class='td_controlesFormulario'>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td>
                            <asp:TextBox ID='txt_rentabilidad' runat='server' CssClass='txt_numero'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID='txt_rentabilidad_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <asp:RequiredFieldValidator ID='rfv_rentabilidad' runat='server' ControlToValidate='txt_rentabilidad'
                    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
                        id='ftb_rentabilidad' runat='server' targetcontrolid='txt_rentabilidad' filtertype='Numbers,Custom' /><act:filteredtextboxextender
                            id='ftb_rentabilidad_bus' runat='server' targetcontrolid='txt_rentabilidad_bus'
                            filtertype='Numbers,Custom' />
            </td>
        </tr>
        <tr id="Tr7" runat="server" visible="false" align='right'>
            <td align='right'>
            </td>
            <td>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td align='right'>
                            <asp:Label ID='lbl_trm' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                        <td align='right' style='padding-left: 8px'>
                            <asp:Label ID='lbl_trm_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td align='right'>
                            <asp:Label ID='lbl_trm_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class='td_controlesFormulario'>
                <table cellpadding='0' cellspacing='0'>
                    <tr>
                        <td>
                            <asp:TextBox ID='txt_trm' runat='server' CssClass='txt_numero'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID='txt_trm_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <asp:RequiredFieldValidator ID='rfv_trm' runat='server' ControlToValidate='txt_trm'
                    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
                        id='ftb_trm' runat='server' targetcontrolid='txt_trm' filtertype='Numbers,Custom' /><act:filteredtextboxextender
                            id='ftb_trm_bus' runat='server' targetcontrolid='txt_trm_bus' filtertype='Numbers,Custom' />
            </td>
        </tr>
        <tr runat="server" visible="false">
            <td align='right'>
            </td>
            <td class='td_lblFormulario'>
                <asp:Label ID='lbl_id_tercero_proveedor' runat='server' CssClass='lblobligatorio'></asp:Label>
            </td>
            <td class='td_controlesFormulario'>
                <bus:busquedaAvanzada ID='bus_tercero_proveedor' runat='server' a_str_tabla='ter_tercero'
                    a_bln_obligatorio='True' />
            </td>
            <td>
            </td>
        </tr>
        <tr runat="server" visible="false">
            <td align='right'>
            </td>
            <td class='td_lblFormulario'>
                <asp:Label ID='lbl_id_moneda' runat='server' CssClass='lblobligatorio'></asp:Label>
            </td>
            <td class='td_controlesFormulario'>
                <bus:busquedaAvanzada ID='bus_moneda' runat='server' a_str_tabla='gen_moneda' a_bln_obligatorio='True'/>
            </td>
            <td>
            </td>
        </tr>
        <tr runat="server" visible="true">
            <td align='right'>
            </td>
            <td class='td_lblFormulario'>
                <asp:Label ID='lbl_id_estadoTipoDocumento' runat='server' CssClass='lbl'></asp:Label>
            </td>
            <td class='td_controlesFormulario'>
                <bus:busquedaAvanzada ID='bus_estadoTipoDocumento' runat='server' a_str_tabla='doc_estadoTipoDocumento'
                    a_str_grupoValidacion='form' />
            </td>
            <td>
            </td>
        </tr>
        <tr runat="server" visible="false">
            <td align='right'>
            </td>
            <td class='td_lblFormulario'>
                <asp:Label ID='lbl_id_motivoestado' runat='server' CssClass='lblobligatorio'></asp:Label>
            </td>
            <td class='td_controlesFormulario'>
                <bus:busquedaAvanzada ID='bus_motivoestado' runat='server' a_str_tabla='doc_motivoestado'
                    a_bln_obligatorio='True'  />
            </td>
            <td>
            </td>
        </tr>
    </table>
    <table id='tbl_guardarformulario'>
        <tr>
            <td>
                <asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje'
                    ForeColor='' />
                <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
            </td>
            <td valign='middle' align='right'>
                <bti:BotonImagen ID='imbGuardar' runat='server' ImageUrl='../../images/botones/aceptar.png'
                    ValidationGroup='form' CssClass='imb' />
            </td>
        </tr>
    </table>
</td>
</tr>
</table>
</asp:Panel>
</td>
</tr>
</table>
<asp:HiddenField ID='hddEstadoFormulario' runat='server' Value='<%# samm_logica.enu_estadoFormulario.buscar %>' />
<boc:bocadillo ID="Bocadillo" runat="server" />
