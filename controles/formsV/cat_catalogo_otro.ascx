<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='cat_catalogo_otro.ascx.vb'
    Inherits='website.samm_componentes.controles_seg_cat_catalogo_otro' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table class='tbl_marcoFormulario'>
    <tr>
        <td>
            <asp:Panel ID='pan_formulario' runat='server' DefaultButton='imbGuardar'>
                <table class='tbl_formulario' border='0' cellpadding='0' cellspacing='0'>
                    <tr>
                        <td align='right' colspan='1' class='td_formEspacioH'>
                            <img alt="" src="../../images/interfaz/spacer.gif" style="width: 17px; height: 1px" />
                            <img alt='' src='../../images/interfaz/spacer.gif' style='width: 17px; height: 1px' />
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
                                        <asp:Label ID='lbl_catalogo_otro' runat='server' CssClass='lblobligatorio'></asp:Label>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <asp:TextBox ID='txt_catalogo_otro' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID='rfv_catalogo_otro' runat='server' ControlToValidate='txt_catalogo_otro'
                                            ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align='right'>
                                    </td>
                                    <td class='td_lblFormulario'>
                                        <asp:Label ID='lbl_codigoInventario' runat='server' CssClass='lblobligatorio'></asp:Label>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <asp:TextBox ID='txt_codigoInventario' runat='server' MaxLength='50' CssClass='txt_multilinea'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID='rfv_codigoInventario' runat='server' ControlToValidate='txt_codigoInventario'
                                            ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align='right'>
                                    </td>
                                    <td class='td_lblFormulario'>
                                        <asp:Label ID='lbl_catalogo_codigo' runat='server' CssClass='lbl'></asp:Label>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <asp:TextBox ID='txt_catalogo_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID='rfv_catalogo_codigo' runat='server' Enabled="false"
                                            ControlToValidate='txt_catalogo_codigo' ValidationGroup="form" SetFocusOnError='True'
                                            CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align='right'>
                                    </td>
                                    <td class='td_lblFormulario'>
                                        <asp:Label ID='lbl_id_familia' runat='server' CssClass='lblobligatorio'></asp:Label>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <bus:busquedaAvanzada ID='bus_familia' runat='server' a_str_tabla='gen_familia' a_bln_obligatorio='True'
                                            a_str_grupoValidacion='form' a_bol_recursivoTodoelArbol="true" />
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td align='right'>
                                    </td>
                                    <td class='td_lblFormulario'>
                                        <asp:Label ID='lbl_id_subTipoCatalogo' runat='server' CssClass='lblobligatorio'></asp:Label>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <bus:busquedaAvanzada ID='bus_subTipoCatalogo' runat='server' a_str_tabla='cat_subtipoCatalogo'
                                            a_bln_obligatorio='True' a_str_grupoValidacion='form' a_bol_postBack="true" />
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td align='right'>
                                    </td>
                                    <td class='td_lblFormulario'>
                                        <asp:Label ID='lbl_id_impuesto' runat='server' CssClass='lblobligatorio'></asp:Label>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <bus:busquedaAvanzada ID='bus_impuesto' runat='server' a_str_tabla='gen_impuesto'
                                            a_bln_obligatorio='True' a_str_grupoValidacion='form' />
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td align='right'>
                                    </td>
                                    <td class='td_lblFormulario'>
                                        <asp:Label ID='lbl_id_unidad' runat='server' CssClass='lblobligatorio'></asp:Label>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <bus:busquedaAvanzada ID='bus_unidad' runat='server' a_str_tabla='gen_unidad' a_bln_obligatorio='True'
                                            a_str_grupoValidacion='form' />
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td class='td_separadorFormulario' rowspan='2'>
                            <img alt='' src='../../images/interfaz/spacer.gif' width='12px' />
                        </td>
                        <td class='td_controlesFormulario' rowspan='2' style='height: 100%' valign='bottom'>
                            <table>
                                <tr align='right'>
                                    <td align='right'>
                                    </td>
                                    <td>
                                        <table cellpadding='0' cellspacing='0'>
                                            <tr>
                                                <td align='right'>
                                                    <asp:Label ID='lbl_precioVenta' runat='server' CssClass='lbl'></asp:Label>
                                                </td>
                                                <td align='right' style='padding-left: 8px'>
                                                    <asp:Label ID='lbl_precioVenta_busDesde' runat='server' CssClass='lbl'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                                <td align='right'>
                                                    <asp:Label ID='lbl_precioVenta_busA' runat='server' CssClass='lbl'></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <table cellpadding='0' cellspacing='0'>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID='txt_precioVenta' runat='server' CssClass='txt_precio'></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID='txt_precioVenta_bus' runat='server' CssClass='txt_precio_bus'></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <act:filteredtextboxextender id='ftb_precioVenta' runat='server' targetcontrolid='txt_precioVenta'
                                            filtertype='Numbers,Custom' />
                                        <act:filteredtextboxextender id='ftb_precioVenta_bus' runat='server' targetcontrolid='txt_precioVenta_bus'
                                            filtertype='Numbers,Custom' />
                                    </td>
                                </tr>
                                <tr align='right'>
                                    <td align='right'>
                                    </td>
                                    <td>
                                        <table cellpadding='0' cellspacing='0'>
                                            <tr>
                                                <td align='right'>
                                                    <asp:Label ID='lbl_tiempoConsecucion' runat='server' CssClass='lbl'>
                                                    </asp:Label>
                                                </td>
                                                <td align='right' style='padding-left: 8px'>
                                                    <asp:Label ID='lbl_tiempoConsecucion_busDesde' runat='server' CssClass='lbl'>
                                                    </asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                                <td align='right'>
                                                    <asp:Label ID='lbl_tiempoConsecucion_busA' runat='server' CssClass='lbl'></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <table cellpadding='0' cellspacing='0'>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID='txt_tiempoConsecucion' runat='server' CssClass='txt_entero'></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID='txt_tiempoConsecucion_bus' runat='server' CssClass='txt_entero_bus'></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <act:filteredtextboxextender id='ftb_tiempoConsecucion' runat='server' targetcontrolid='txt_tiempoConsecucion'
                                            filtertype='Numbers' />
                                        <act:filteredtextboxextender id='ftb_tiempoConsecucion_bus' runat='server' targetcontrolid='txt_tiempoConsecucion_bus'
                                            filtertype='Numbers' />
                                    </td>
                                </tr>
                                <tr>
                                    <td align='right'>
                                    </td>
                                    <td class='td_lblFormulario'>
                                        <asp:Label ID='lbl_esNacional' runat='server' CssClass='lblobligatorio'></asp:Label>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <asp:RadioButtonList ID='rbl_esNacional' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
                                            RepeatLayout='Flow'>
                                            <asp:ListItem Value='1'>S&#237;</asp:ListItem>
                                            <asp:ListItem Value='0'>No</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID='rfv_esNacional' runat='server' ControlToValidate='rbl_esNacional'
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
                                                    <asp:Label ID='lbl_costo' runat='server' CssClass='lblobligatorio'></asp:Label>
                                                </td>
                                                <td align='right' style='padding-left: 8px'>
                                                    <asp:Label ID='lbl_costo_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                                <td align='right'>
                                                    <asp:Label ID='lbl_costo_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <table cellpadding='0' cellspacing='0'>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID='txt_costo' runat='server' CssClass='txt_precio'></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID='txt_costo_bus' runat='server' CssClass='txt_precio_bus'></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID='rfv_costo' runat='server' ControlToValidate='txt_costo'
                                            ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
                                                id='ftb_costo' runat='server' targetcontrolid='txt_costo' filtertype='Numbers,Custom' />
                                        <act:filteredtextboxextender id='ftb_costo_bus' runat='server' targetcontrolid='txt_costo_bus'
                                            filtertype='Numbers,Custom' />
                                    </td>
                                </tr>
                                <tr>
                                    <td align='right'>
                                    </td>
                                    <td class='td_lblFormulario'>
                                        <asp:Label ID='lbl_periodoAlquiler' runat='server' CssClass='lbl'></asp:Label>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <asp:DropDownList ID="drp_periodoAlquiler" runat="server" ValidationGroup="form"  >
                                        </asp:DropDownList><asp:RequiredFieldValidator InitialValue="0" ID="rfvperiodo"  ValidationGroup="form" runat="server" ControlToValidate="drp_periodoAlquiler"
SetFocusOnError="True" CssClass="lbl_mensaje" ForeColor=''>*</asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td align='right'>
                                    </td>
                                    <td class='td_lblFormulario'>
                                        <asp:Label ID='lbl_descripcion' runat='server' CssClass='lbl'></asp:Label>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <txt:textoAvanzado ID='txt_descripcion' runat='server' a_bln_obligatorio='False'
                                            a_str_grupoValidacion='form'></txt:textoAvanzado>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td align='right'>
                                    </td>
                                    <td class='td_lblFormulario'>
                                        <asp:Label ID='lbl_bloquearCostear' runat='server' CssClass='lbl'></asp:Label>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <asp:RadioButtonList ID='rbl_bloquearCostear' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
                                            RepeatLayout='Flow'>
                                            <asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
                                            <asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                            </table>
                            <table id='tbl_guardarformulario'>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label><asp:ValidationSummary
                                            ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje'
                                            ForeColor='' />
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
