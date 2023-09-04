<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='../formsN/doc_documento_ot.ascx.vb'
Inherits='website.samm_componentes.controles_seg_doc_documento_ot_N' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src="../equ/equ_documentosCurso.ascx" TagName="equ_documentosCurso"
TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
TagPrefix="uc1" %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Src="~/controles/general/taxonomia.ascx" TagName="taxonomia" TagPrefix="tax" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table class='tbl_marcoFormulario'>
<tr>
<td>
<asp:Panel ID='pan_formulario' runat='server' DefaultButton='imbGuardar'>
<table class='tbl_formulario' border='0' cellpadding='0' cellspacing='0'>
<tr>
<td align='right' colspan='1' class='td_formEspacioH'>
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
<td></td>
<td colspan="3">
<asp:Label ID="lbl_mensajeNoCrear" runat="server" CssClass="lbl_mensaje" Visible="false"></asp:Label>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td rowspan="3">
<asp:TextBox ID='txt_prefijo' runat='server' MaxLength='10' CssClass='txt_formulario'
BorderWidth="0px" BackColor="transparent" Font-Bold="true"></asp:TextBox><asp:Label
ID="lbl_separador" runat="server" Text="-"></asp:Label>
</td>
</tr>
<tr>
<td>
<asp:Label ID='lbl_documento_numero_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td align='right'>
</td>
</tr>
<tr>
<td align='right'>
<asp:Label ID='lbl_documento_numero_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
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
a_bln_obligatorio='True' a_str_grupoValidacion='form' a_str_filtros="id_tipoDocumento=2"
a_NObol_guardarNoExiste="true" />
</td>
<td>
</td>
</tr>
<tr id="Tr1" runat="server">
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_documento_codigo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_documento_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
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
<fec:fechaAvanzada ID='fec_fecha_fh' runat='server' a_str_prefijo='fh' a_bln_obligatorio='True'
a_str_grupoValidacion='form'></fec:fechaAvanzada>
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
<asp:Label ID='lbl_id_tipoServicio' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tipoServicio' runat='server' a_str_tabla='gen_tipoServicio'
a_bln_obligatorio='True' a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_departamentoSolicitud' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_departamentoSolicitud' runat='server' a_str_tabla='ort_departamentoSolicitud'
a_bln_obligatorio='True' a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_usuario_coordinador' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_usuario_coordinador' runat='server' a_str_tabla='seg_usuario'
a_bln_obligatorio='False' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_tercero_cliente' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tercero_cliente' runat='server' a_str_tabla='ter_tercero'
a_bln_obligatorio='True' a_str_grupoValidacion='form' a_bol_postBack="true" />
</td>
<td>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
</td>
<td class="td_controlesFormulario">
<asp:Label ID="lbl_clienteBloqueado" runat="server" CssClass="lbl_mensaje" Visible="False"
Text="<%$Resources:res_etiquetas_ort,clienteBloqueado %>"></asp:Label>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_sucursal' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_sucursal' runat='server' a_str_tabla='ter_sucursal'
a_bln_obligatorio='True' a_str_grupoValidacion='form' a_bol_postBack="true" />
</td>
<td>
</td>
</tr>


<tr>
<td>
</td>
<td>
</td>
<td>

<asp:Label ID='lbl_patch' runat='server' CssClass='lbl' Visible="true"></asp:Label>
</td>
</tr>







<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
</td>
<td class="td_controlesFormulario">
<asp:Label ID="lbl_sucursalBloqueado" runat="server" CssClass="lbl_mensaje" Visible="False"></asp:Label>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_equipo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_equipo' runat='server' a_str_tabla='equ_equipo' a_bln_obligatorio='False'
a_bol_postBack="true" a_str_campo="equipo,equipo_serial,equipo_codigo" a_bln_mostrarNuevoConDrop="true"  a_bol_recursivoTodoelArbol="false"  />
</td>
<td>
</td>
</tr>


<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='Label2' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='td_controlesFormulario'>
<asp:Label ID='lbl_horometro' runat='server' CssClass='lbl'></asp:Label>
</td>
<td>
</td>
</tr>



<tr id="tr_taxonomia" runat="server">
<td>
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_taxonomia" runat="server" cssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<tax:taxonomia ID="tax_taxonomia" runat="server" a_bln_obligatorio="true" a_str_grupoValidacion="form" a_str_tabla="doc_documento.ot"  />
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
</td>
<td class='td_controlesFormulario'>
<uc2:equ_documentosCurso ID="eqSols" runat="server" a_bol_mostrarOT="true" a_bol_mostrarSOL="true" />
<%--<uc2:equ_documentosCurso id="eqOts" runat="server" a_ind_idtipoDocumento="2"/>--%>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_sistema' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_sistema' runat='server' a_str_tabla='cat_sistema' a_bln_obligatorio='False' />
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
a_bln_obligatorio='True' a_str_grupoValidacion='form' a_str_filtros="id_tipoDocumento=2" />
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
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_fechaSugerida_fh' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_fechaSugerida_fh_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_fechaSugerida_fh_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaSugerida_fh' runat='server' a_str_prefijo='fh' a_bln_obligatorio='True'
a_str_grupoValidacion='form'></fec:fechaAvanzada>
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
<asp:Label ID='lbl_fechaCompromiso_fh' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_fechaCompromiso_fh_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_fechaCompromiso_fh_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaCompromiso_fh' runat='server' a_str_prefijo='ff'>
</fec:fechaAvanzada>
</td>
</tr>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaCompromiso_fh_bus' runat='server' CssClass='txt_fecha_bus'
CssClassHora='txt_hora_bus' a_str_prefijo='fh'></fec:fechaAvanzada>
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
<asp:Label ID='lbl_fechaGarantia_ff' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_fechaGarantia_ff_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_fechaGarantia_ff_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaGarantia_ff' runat='server' a_str_prefijo='ff' a_bln_obligatorio='false'>
</fec:fechaAvanzada>
</td>
</tr>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaGarantia_ff_bus' runat='server' CssClass='txt_fecha_bus'
CssClassHora='txt_hora_bus' a_str_prefijo='ff'></fec:fechaAvanzada>
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
<fec:fechaAvanzada ID='fec_fechaCierre_ff' runat='server' a_str_prefijo='ff'></fec:fechaAvanzada>
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
<asp:Label ID='lbl_id_zona' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_zona' runat='server' a_str_tabla='gen_zona' a_bln_obligatorio='True'
a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr runat="server" visible="false">
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_tercero' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tercero' runat='server' a_str_tabla='ter_tercero' a_bln_obligatorio='True'
a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<%--<tr><td align='right'></td><td class='td_lblFormulario'><asp:Label ID='lbl_prefijo' runat='server' CssClass='lblobligatorio'></asp:Label></td><td class='td_controlesFormulario'><asp:TextBox ID='txt_prefijo' runat='server' MaxLength='10' CssClass='txt_multilinea'></asp:TextBox></td><td><asp:RequiredFieldValidator ID='rfv_prefijo' runat='server' ControlToValidate='txt_prefijo'ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator></td></tr>--%>
<%--<tr align='right'><td align='right'></td><td><table cellpadding='0' cellspacing='0'><tr><td align='right'><asp:Label ID='lbl_documento_numero' runat='server' CssClass='lblobligatorio'></asp:Label></td><td align='right' style='padding-left: 8px'><asp:Label ID='lbl_documento_numero_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label></td></tr><tr><td></td><td align='right'><asp:Label ID='lbl_documento_numero_busA' runat='server' CssClass='lblobligatorio'></asp:Label></td></tr></table></td><td class='td_controlesFormulario'><table cellpadding='0' cellspacing='0'><tr><td><asp:TextBox ID='txt_documento_numero' runat='server' CssClass='txt_entero' ReadOnly="True"></asp:TextBox></td></tr><tr><td><asp:TextBox ID='txt_documento_numero_bus' runat='server' CssClass='txt_entero_bus'></asp:TextBox></td></tr></table></td><td></td></tr>--%><tr
runat="server" visible="false">
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_documento_ot' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_documento_ot' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_documento_ot' runat='server' ControlToValidate='txt_documento_ot'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr runat="server" visible="false">
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_ComentarioCancelada' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_ComentarioCancelada' runat='server' a_bln_obligatorio='false'>
</txt:textoAvanzado>
</td>
<td>
</td>
</tr>
<tr runat="server" visible="false">
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_Comentarios' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_Comentarios' runat='server' a_bln_obligatorio='false'>
</txt:textoAvanzado>
</td>
<td>
</td>
</tr>
<tr runat="server" visible="false">
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_trabajos' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_trabajos' runat='server' a_bln_obligatorio='false'></txt:textoAvanzado>
</td>
<td>
</td>
</tr>
<tr runat="server" visible="false">
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_recomendaciones' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_recomendaciones' runat='server' a_bln_obligatorio='false'>
</txt:textoAvanzado>
</td>
<td>
</td>
</tr>
<tr runat="server" visible="false">
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_compromisos' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_compromisos' runat='server' a_bln_obligatorio='false'>
</txt:textoAvanzado>
</td>
<td>
</td>
</tr>
<tr align='right' runat="server" visible="false">
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_porcentajeCliente' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_porcentajeCliente_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_porcentajeCliente_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_porcentajeCliente' runat='server' CssClass='txt_numero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_porcentajeCliente_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<act:filteredtextboxextender id='ftb_porcentajeCliente' runat='server' targetcontrolid='txt_porcentajeCliente'
filtertype='Numbers,Custom' />
<act:filteredtextboxextender id='ftb_porcentajeCliente_bus' runat='server' targetcontrolid='txt_porcentajeCliente_bus'
filtertype='Numbers,Custom' />
</td>
</tr>
<tr align='right' runat="server" visible="false">
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_porcentajeDistribuidor' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_porcentajeDistribuidor_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_porcentajeDistribuidor_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_porcentajeDistribuidor' runat='server' CssClass='txt_numero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_porcentajeDistribuidor_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<act:filteredtextboxextender id='ftb_porcentajeDistribuidor' runat='server' targetcontrolid='txt_porcentajeDistribuidor'
filtertype='Numbers,Custom' />
<act:filteredtextboxextender id='ftb_porcentajeDistribuidor_bus' runat='server' targetcontrolid='txt_porcentajeDistribuidor_bus'
filtertype='Numbers,Custom' />
</td>
</tr>
<tr align='right' runat="server" visible="false">
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_porcentajeFabricante' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_porcentajeFabricante_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_porcentajeFabricante_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_porcentajeFabricante' runat='server' CssClass='txt_numero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_porcentajeFabricante_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<act:filteredtextboxextender id='ftb_porcentajeFabricante' runat='server' targetcontrolid='txt_porcentajeFabricante'
filtertype='Numbers,Custom' />
<act:filteredtextboxextender id='ftb_porcentajeFabricante_bus' runat='server' targetcontrolid='txt_porcentajeFabricante_bus'
filtertype='Numbers,Custom' />
</td>
</tr>
<tr runat="server" visible="false">
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_segunTempario' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_segunTempario' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
RepeatLayout='Flow'>
<asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
<asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
</td>
</tr>
<tr runat="server" visible="false">
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_distribuyeCentros' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_distribuyeCentros' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
RepeatLayout='Flow'>
<asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
<asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
</td>
</tr>
<tr runat="server" visible="false">
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_motivoCancelacion' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_motivoCancelacion' runat='server' a_str_tabla='ort_motivoCancelacion'
a_bln_obligatorio='True' a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
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
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_contacto' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_contacto' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_contacto' runat='server' ControlToValidate='txt_contacto'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_cargo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_cargo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_direccionUbicacion' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_direccionUbicacion' runat='server' a_bln_obligatorio='true' a_bol_txtnormal ="true" >
</txt:textoAvanzado>
<%--<asp:TextBox ID='txt_direccionUbicacion' runat='server' MaxLength='300' CssClass='txt_multilinea'></asp:TextBox>
--%></td>
<td>
<%--<asp:RequiredFieldValidator ID='rfv_direccionUbicacion' runat='server' ControlToValidate='txt_direccionUbicacion'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
--%></td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_telefono' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_telefono' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_telefono' runat='server' ControlToValidate='txt_telefono'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_fax' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_fax' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_email' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_email' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_tercero_proveedor' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tercero_proveedor' runat='server' a_str_tabla='ter_tercero' a_str_pagina = "equ_equipo" />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_motivoServicio' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_motivoServicio' runat='server' a_bln_obligatorio='True'
a_str_grupoValidacion='form'></txt:textoAvanzado>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_diagnosticoInicial' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_diagnosticoInicial' runat='server' a_bln_obligatorio='false'>
</txt:textoAvanzado>
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
<asp:Label ID='lbl_duracionEstimada' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_duracionEstimada_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_duracionEstimada_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_duracionEstimada' runat='server' CssClass='txt_numero' ReadOnly="True"></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_duracionEstimada_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
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
<asp:Label ID='lbl_reclamacionFabrica' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_reclamacionFabrica' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr id="Tr2" runat="server" visible="false">
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_contrato' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_contrato' runat='server' a_str_tabla='cnt_contrato'
a_bln_obligatorio='True' a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_enTaller' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_enTaller' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
RepeatLayout='Flow'>
<asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
<asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_enTaller' runat='server' ControlToValidate='rbl_enTaller'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor=""
Enabled="false">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_estados" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<bus:busquedaAvanzada ID="bus_estados" runat="server" a_str_tabla="doc_estadoTipoDocumento" />
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
<table>
<tr>
<td>
<asp:HyperLink ID="lnk_nuevo" runat="server" Visible="false" CssClass="lnk"></asp:HyperLink>
<asp:HyperLink ID="lnk_imprimir" runat="server" Visible="false" CssClass="lnk" Target="_blank"></asp:HyperLink>
<asp:HyperLink ID="lnk_editar" runat="server" Visible="false" CssClass="lnk" Target="_blank"></asp:HyperLink>
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
