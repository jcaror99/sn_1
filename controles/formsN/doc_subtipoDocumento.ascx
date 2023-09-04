<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='doc_subtipoDocumento.ascx.vb'
    Inherits='website.samm_componentes.controles_seg_doc_subtipoDocumento_N' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
&nbsp;<table class='tbl_marcoFormulario'>
    <tr>
        <td>
            <asp:Panel ID='pan_formulario' runat='server' DefaultButton='imbGuardar'>
                <table class='tbl_formulario' border='0' cellpadding='0' cellspacing='0'>
                    <tr>
                        <td align='right' colspan='1' class='td_formEspacioH'>
                            <img alt="" src="../../images/interfaz/spacer.gif" style="width: 17px; height: 1px" />
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
                                        <asp:Label ID='lbl_subtipoDocumento' runat='server' CssClass='lblobligatorio'></asp:Label>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <asp:TextBox ID='txt_subtipoDocumento' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID='rfv_subtipoDocumento' runat='server' ControlToValidate='txt_subtipoDocumento'
                                            ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align='right'>
                                    </td>
                                    <td class='td_lblFormulario'>
                                        <asp:Label ID='lbl_subtipoDocumento_codigo' runat='server' CssClass='lbl'></asp:Label>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <asp:TextBox ID='txt_subtipoDocumento_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td align='right'>
                                    </td>
                                    <td class='td_lblFormulario'>
                                        <asp:Label ID='lbl_id_tipoDocumento' runat='server' CssClass='lblobligatorio'></asp:Label>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <bus:busquedaAvanzada ID='bus_tipoDocumento' runat='server' a_str_tabla='doc_tipoDocumento'
                                            a_bln_obligatorio='True' a_str_grupoValidacion='form' />
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td align='right'>
                                    </td>
                                    <td class='td_lblFormulario'>
                                        <asp:Label ID='lbl_prefijo' runat='server' CssClass='lblobligatorio'></asp:Label>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <asp:TextBox ID='txt_prefijo' runat='server' MaxLength='10' CssClass='txt_multilinea'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID='rfv_prefijo' runat='server' ControlToValidate='txt_prefijo'
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
                                                    <asp:Label ID='lbl_consecutivo' runat='server' CssClass='lblobligatorio'></asp:Label>
                                                </td>
                                                <td align='right' style='padding-left: 8px'>
                                                    <asp:Label ID='lbl_consecutivo_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                                <td align='right'>
                                                    <asp:Label ID='lbl_consecutivo_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <table cellpadding='0' cellspacing='0'>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID='txt_consecutivo' runat='server' CssClass='txt_entero'></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID='txt_consecutivo_bus' runat='server' CssClass='txt_entero_bus'></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID='rfv_consecutivo' runat='server' ControlToValidate='txt_consecutivo'
                                            ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
                                                id='ftb_consecutivo' runat='server' targetcontrolid='txt_consecutivo' filtertype='Numbers' /><act:filteredtextboxextender
                                                    id='ftb_consecutivo_bus' runat='server' targetcontrolid='txt_consecutivo_bus'
                                                    filtertype='Numbers' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align='right'>
                                        <asp:Label ID='lbl_programar' runat='server' CssClass='lblobligatorio'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:RadioButtonList ID="rbl_programar" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Enabled="true" Value="1" Selected="False" Text="res_etiquetas,si"></asp:ListItem>
                                            <asp:ListItem Enabled="true" Value="0" Selected="False" Text="res_etiquetas,no"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID='rfv_programar' runat='server' ControlToValidate='rbl_programar'
                                            ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align='right'>
                                        <asp:Label ID='lbl_bloqueaDes' runat='server' CssClass='lblobligatorio'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:RadioButtonList ID="rbl_bloqueaDes" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Enabled="true" Value="1" Selected="False" Text="res_etiquetas,si"></asp:ListItem>
                                            <asp:ListItem Enabled="true" Value="0" Selected="False" Text="res_etiquetas,no"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align='right'>
                                        <asp:Label ID='lbl_ejecDevolucion' runat='server' CssClass='lblobligatorio'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:RadioButtonList ID="rbl_ejecDevolucion" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Enabled="true" Value="1" Selected="False" Text="res_etiquetas,si"></asp:ListItem>
                                            <asp:ListItem Enabled="true" Value="0" Selected="False" Text="res_etiquetas,no"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID='rfv_ejecDevolucion' runat='server' ControlToValidate='rbl_ejecDevolucion'
                                            ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align='right'>
                                        <asp:Label ID='lbl_cerrarSol' runat='server' CssClass='lblobligatorio'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:RadioButtonList ID="rbl_cerrarSol" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Enabled="true" Value="1" Selected="False" Text="res_etiquetas,si"></asp:ListItem>
                                            <asp:ListItem Enabled="true" Value="0" Selected="False" Text="res_etiquetas,no"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align='right'>
                                        <asp:Label ID='lbl_carg_urgente' runat='server' Visible='false' CssClass='lblobligatorio'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:RadioButtonList ID="rbl_carg_urgente" Visible="false" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Enabled="true" Value="1" Selected="False" Text="res_etiquetas,si"></asp:ListItem>
                                            <asp:ListItem Enabled="true" Value="0" Selected="False" Text="res_etiquetas,no"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align='right'>
                                        <asp:Label ID='lbl_carg_solicitante' runat='server' Visible='false' CssClass='lblobligatorio'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:RadioButtonList ID="rbl_carg_solicitante" Visible="false" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Enabled="true" Value="1" Selected="False" Text="res_etiquetas,si"></asp:ListItem>
                                            <asp:ListItem Enabled="true" Value="0" Selected="False" Text="res_etiquetas,no"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align='right'>
                                        <asp:Label ID='lbl_centroCosto' runat='server' Visible='false' CssClass='lblobligatorio'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:RadioButtonList ID="rbl_centroCosto" Visible="false" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Enabled="true" Value="1" Selected="False" Text="res_etiquetas,si"></asp:ListItem>
                                            <asp:ListItem Enabled="true" Value="0" Selected="False" Text="res_etiquetas,no"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>
                                    </td>
                                    <td align='right'>
                                        <asp:Label ID='lbl_cantidadAuxiliar' runat='server' Visible='false' CssClass='lblobligatorio'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:RadioButtonList ID="rbl_cantidadAuxiliar" Visible="false" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Enabled="true" Value="1" Selected="False" Text="res_etiquetas,si"></asp:ListItem>
                                            <asp:ListItem Enabled="true" Value="0" Selected="False" Text="res_etiquetas,no"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align='right'>
                                        <asp:Label ID='lbl_incoterm' runat='server' Visible='false' CssClass='lblobligatorio'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:RadioButtonList ID="rbl_incoterm" Visible="false" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Enabled="true" Value="1" Selected="False" Text="res_etiquetas,si"></asp:ListItem>
                                            <asp:ListItem Enabled="true" Value="0" Selected="False" Text="res_etiquetas,no"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr runat="server" id="tr_tipoCobro">
                                    <td>
                                    </td>
                                    <td align='right'>
                                        <asp:Label ID='lbl_tipocobro' runat='server'  CssClass='lblobligatorio'>
                                        </asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="drp_tipocobro" runat="server" CssClass="drp">
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                
                                <tr>
                                <td></td>
                                <td align='right'>
                                    <asp:Label ID='lbl_mostrarpendiente' runat='server'   CssClass='lblobligatorio'></asp:Label></td>
                                <td>
                                <asp:RadioButtonList ID="rbl_mostrarpendien"  runat ="server" RepeatDirection="Horizontal"  >
                                <asp:ListItem Enabled="true" Value="1" Selected ="False" Text="res_etiquetas,si" ></asp:ListItem>
                                <asp:ListItem Enabled="true" Value="0" Selected ="False" Text="res_etiquetas,no" ></asp:ListItem>
                                </asp:RadioButtonList>
                                </td>
                                <td></td>
                                </tr>

                            </table>
                            <table id='tbl_guardarformulario'>
                                <tr>
                                    <td>
                                        <asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje'
                                            ForeColor='' />
                                    </td>
                                    <td valign='middle' align='right'>
                                        <bti:BotonImagen ID='imbGuardar' runat='server' ImageUrl='../../images/botones/aceptar.png'
                                            ValidationGroup='form' CssClass='imb' /><br />
                                        <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
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
