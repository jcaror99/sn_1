<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="ort_reporteTecnico.ascx.vb" Inherits="website.samm_componentes.controles_formsV_ort_reporteTecnico" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="act" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="textoAvanzado" TagPrefix="taz" %>
<%@ Register Src="~/controles/general/slider.ascx" TagName="slider" TagPrefix="sld" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple" TagPrefix="busmul" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Src="../ort/ort_actividades.ascx" TagName="ort_actividades" TagPrefix="actividad" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/ort/ort_gastos.ascx" TagName="ort_gastos" TagPrefix="uc12" %>
<asp:HiddenField runat="server" ID="hdd_tecnicos" />
<table>
    <tr>
        <td>
            <asp:HiddenField ID="hdd_oriY" runat="server" Visible="true"></asp:HiddenField>
            <asp:HiddenField ID="hdd_oriX" runat="server" Visible="true"></asp:HiddenField>
        </td>
    </tr>
    <tr valign="top" class="tr_movilMenu">
        <td class="tr_informacion">
            <table border='0' cellpadding='0' cellspacing='0' id='tbl_estadoformulario'>
                <tr>
                    <td>
                        <asp:Label ID='lbl_estadoFormulario' runat='server' CssClass='lbl_estadoFormulario'></asp:Label>
                    </td>
                </tr>
            </table>
            <table cellspacing="0" cellpadding="3">
                <tr id="tr_ot" runat="server" valign="top">
                    <td class="style1" colspan="2">
                        <asp:Label ID="lbl_OT" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <bus:busquedaAvanzada ID="bus_OT" runat="server" a_str_tabla="doc_documento.ot" a_str_campo="doc_documento_ot_documento_numero,documento.ot" a_bln_obligatorio="true" a_bol_postBack="true" />
                    </td>
                </tr>
                <tr id="tr_tecnicos" runat="server" valign="top">
                    <td class="style1" colspan="2">
                        <asp:Label ID="lblTecnicos" runat="server" CssClass="lblobligatorio"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="rblFiltroTecnicos" runat="server" RepeatDirection="Horizontal"
                            RepeatLayout="Flow" AutoPostBack="True" OnSelectedIndexChanged="rblFiltroTecnicos_SelectedIndexChanged"
                            CssClass="rbl">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:CheckBoxList ID="cbl_tecnicos" runat="server"></asp:CheckBoxList>
                        <busmul:busquedaavanzadamultiple ID="busTecnicos" runat="server"
                            a_str_tabla="seg_usuario" a_bol_postBack="true"
                            a_str_filtros="id_cargo in (select id from seg_cargo where estecnico=1)"
                            a_str_campo="nombre,usuario,id_grupo" />

                    </td>
                </tr>
                <tr id="tr_actividades" runat="server">
                    <td colspan="2">
                        <asp:Label ID="lbl_actividad" runat="server" CssClass="lblobligatorio"></asp:Label>
                    </td>
                    <td>
                        <actividad:ort_actividades ID="ort_actividades" runat="server"></actividad:ort_actividades>
                    </td>
                </tr>
                <tr id="tr_otsPreventiva" runat="server" visible="false">
                    <td colspan="3">

                        <act:CollapsiblePanelExtender ID="clp_otsPreventivo" runat="server" TargetControlID="pnl_otsPreventivo"
                            CollapsedSize="0" Collapsed="True" ExpandControlID="imb_ext" CollapseControlID="imb_ext" TextLabelID="lbl_otsPreventivo"
                            AutoCollapse="False" AutoExpand="False" ScrollContents="false" ExpandedImage="../../images/menu/lnk_menos.png"
                            CollapsedImage="../../images/menu/lnk_mas.png" ImageControlID="imb_ext" ExpandDirection="Vertical">
                        </act:CollapsiblePanelExtender>
                        <img alt="" id="imb_ext"
                            src="../../images/menu/lnk_mas.png" runat="server" />
                        <asp:Label ID="lbl_otsPreventivo" runat="server" CssClass="lbl"></asp:Label>
                        <asp:Panel ID="pnl_otsPreventivo" runat="server">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <asp:Label ID="lbl_preventivo" runat="server" CssClass="lbl"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="chb_selTodos" runat="server" CssClass="lbl" Checked="true" />
                                        <asp:CheckBoxList ID="chb_otsPreventivo" runat="server" SelectionMode="Multiple" CssClass="lbl">
                                        </asp:CheckBoxList>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr id="tr_fechaHora" runat="server">
                    <td colspan="2">
                        <asp:Label ID="lblFecha" runat="server" CssClass="lblobligatorio"></asp:Label>
                    </td>
                    <td>
                        <fec:fechaavanzada ID="fecFecha" runat="server" a_str_prefijo="fh" OnClientHidden="mostrar" OnClientShown="ocultar" />
                        <asp:TextBox ID="lbl_AmPm" runat="server" Enabled="false" CssClass="lbl"></asp:TextBox>
                    </td>
                </tr>
                <tr id="tr_duracion" runat="server" valign="top">
                    <td colspan="2">
                        <asp:Label ID="lbl_duracion" runat="server" CssClass="lblobligatorio"></asp:Label>
                    </td>
                    <td>
                        <div id="divDuracion">
                            <sld:slider ID="slider3" runat="server" />
                        </div>
                    </td>
                </tr>
                <tr id="tr_gasto" runat="server">
                    <td colspan="2">
                        <asp:Label ID="lbl_gasto" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <uc12:ort_gastos ID="ort_gastos" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lbl_reporteNumero" runat="server" CssClass="lbl"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txt_numero" runat="server" CssClass="txt">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_reporteNumero" runat="server" ValidationGroup="form" ControlToValidate="txt_numero" Text="*">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lbl_bus_textNum" runat="server" CssClass="lbl"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txt_busNum" runat="server" CssClass="txt">
                        </asp:TextBox>
                    </td>
                </tr>

            </table>
        </td>
        <td class='td_separadorFormulario' rowspan='2' runat="server" id="td_separador">
            <img alt='' src='../../images/interfaz/spacer.gif' width='12px' />
        </td>
        <tr id="tr_separador" runat="server">
        </tr>
        <td  class="tr_informacion" style="padding-left: 5px; vertical-align: top">
            <table cellpadding="0" cellspacing="0" border="0">
                <tr>
                    <td>
                        <asp:Label ID="lbl_trabajos" runat="server" CssClass="lblobligatorio"></asp:Label>
                        <asp:Label ID="Label9" runat="server" Text="(max 4000)" CssClass="lblobligatorio"></asp:Label>
                    </td>
                    <td>
                        <taz:textoavanzado ID="txt_trabajos" runat="server" CssClass="txt_formulario" a_int_maxLength='4000'
                            a_str_grupoValidacion="form" a_bln_obligatorio="true" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_compromiso" runat="server" CssClass="lbl"></asp:Label>
                        <asp:Label ID="Label10" runat="server" Text=" (max 4000)"
                            CssClass="lbl"></asp:Label>
                    </td>
                    <td valign="top">
                        <taz:textoavanzado ID="txt_compromisos" runat="server" CssClass="txt_formulario"
                            a_int_maxLength='4000' a_str_grupoValidacion="form" />
                        <asp:CheckBox ID="chb_recordarCompromiso" runat="server" CssClass="lbl" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_recomendacion" runat="server" CssClass="lbl">
                        </asp:Label><asp:Label ID="Label11" runat="server" Text=" (max 4000)" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <taz:textoavanzado ID="txt_recomendaciones" runat="server" CssClass="txt_formulario"
                            a_int_maxLength='4000' a_str_grupoValidacion="form" />
                        <asp:CheckBox ID="chb_recordarRecomendaciones" runat="server" CssClass="lbl" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lbl_diagnostico" runat="server" CssClass="lbl">
                        </asp:Label><asp:Label ID="Label2" runat="server" Text=" (max 4000)" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <taz:textoavanzado ID="txt_diagnostico" runat="server" CssClass="txt_formulario"
                            a_int_maxLength='4000' a_str_grupoValidacion="form" />
                    </td>
                </tr>

                <tr id="tr_comentario" runat="server">
                    <td>
                        <asp:Label ID="lbl_comentario" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <taz:textoavanzado ID="txt_comentario" runat="server" CssClass="txt_formulario" a_int_maxLength='300'
                            a_str_grupoValidacion="ort_reporte" />
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td>
                        <bti:BotonImagen ID="imbGuardar" runat="server" CssClass="imb" ImageUrl="../../images/botones/aceptar.png" ValidationGroup="form" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="lblmensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
