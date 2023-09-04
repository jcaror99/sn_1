<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='equ_equipo.ascx.vb' Inherits='website.samm_componentes.controles_seg_equ_equipo_N' %>
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
</td>
<td align='right' colspan='3' class='td_formEspacioV'>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td align='right' valign='top'>
<act:ToggleButtonExtender ID='ToggleButtonExtender1' runat='server' CheckedImageAlternateText='<%$ Resources:res_controles,ayuda_especificano %>'
CheckedImageUrl='../../images/iconos/ojo1.png' ImageHeight='26' ImageWidth='30'
TargetControlID='chb_ayudaCampo' UncheckedImageAlternateText='<%$ Resources:res_controles,ayuda_especifica %>'
UncheckedImageUrl='../../images/iconos/ojo2.png'></act:ToggleButtonExtender>
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
<td class='td_lblFormulario' align='left'>
<asp:Label ID='lbl_id_catalogo_equipo' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_catalogo_equipo' runat='server' a_str_tabla='cat_catalogo.equipo'
    a_bln_obligatorio='True' a_str_grupoValidacion='form' a_bol_postBack="true" a_str_campo="catalogo.equipo,cat_catalogo_equipo_catalogo_codigo,cat_catalogo_equipo_codigoInventario" />
</td>
<td class='td_lblFormulario' align='left'>
<bti:BotonImagen ID="imb_arbolModelos" runat="server" ImageUrl="../../images/botones/buscarBA_arbol.gif" CssClass='imb' CausesValidation="false"/>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_equipo_serial' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<div id="div_resultadoEquipoSerial">
<asp:TextBox ID='txt_equipo_serial' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox><bti:BotonImagen
    ID="btiSerieNumero" runat="server" ImageUrl="~/images/botones/generaSerial.gif" />
    </div>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_equipo_serial' runat='server' ControlToValidate='txt_equipo_serial'
    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_equipo_codigo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_equipo_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_equipo_codigo' Enabled="false" runat='server'
    ControlToValidate='txt_equipo_codigo' ValidationGroup="form" SetFocusOnError='True'
    CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_equipo' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_equipo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_equipo' runat='server' ControlToValidate='txt_equipo'
    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="right">
</td>
<td>
<asp:HiddenField ID="hid_nombre" runat="server" Value="" />
</td>
<td class='td_controlesFormulario'>
<asp:CheckBox ID="chk_personalizarCMM" runat="server" CssClass="lbl" Checked="true" />
</td>
<td>
&nbsp;
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_versionEquipo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_versionEquipo' runat='server' a_str_tabla='cat_versionEquipo'
    a_bln_mostrarNuevoConDrop="true" a_bln_obligatorio='True' a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr id="tr_sistema" runat="server">
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
<tr id="tr_equipo_padre" runat="server" visible="false">
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_equipo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_equipo' runat='server' a_str_tabla='equ_equipo' a_bln_obligatorio='False' a_str_pagina = "equ_equipo"
    a_bol_postBack="True" />
</td>
<td>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
</td>
<td colspan="2" class="td_controlesFormulario">
<asp:Label ID='lbl_existencias' runat='server' CssClass='lbl_mensaje'></asp:Label>
</td>
</tr>
<tr>
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
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_sucursal' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_sucursal' runat='server' a_str_tabla='ter_sucursal'
    a_bln_obligatorio='True' a_str_grupoValidacion='form' a_bol_postBack="True" />
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
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_tercero_comprador' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tercero_comprador' runat='server' a_str_tabla='ter_tercero' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_tercero_servicio' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tercero_servicio' runat='server' a_str_tabla='ter_tercero' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_nombreContacto' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_nombreContacto' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_telefonoContacto' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_telefonoContacto' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_ubicacion' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_ubicacion' runat='server' a_bln_obligatorio='true' a_bol_txtnormal ="true"    >
</txt:textoAvanzado>
<%--<asp:TextBox ID='txt_ubicacion' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
--%></td>
<td>
<%--<asp:RequiredFieldValidator ID="rfv_ubicacion" runat="server" ControlToValidate="txt_ubicacion"
    CssClass="lbl_mensaje" ForeColor="" SetFocusOnError="True" ValidationGroup="form">*</asp:RequiredFieldValidator>--%>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_observaciones' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_observaciones' runat="server" />
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
            <asp:TextBox ID='txt_costo' runat='server' CssClass='txt_precio'></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID='txt_costo_bus' runat='server' Visible="false" CssClass='txt_precio_bus'></asp:TextBox>
        </td>
    </tr>
</table>
</td>
<td>
<act:FilteredTextBoxExtender ID='ftb_costo' runat='server' TargetControlID='txt_costo'
    FilterType='Numbers,Custom' />
<act:FilteredTextBoxExtender ID='ftb_costo_bus' runat='server' TargetControlID='txt_costo_bus'
    FilterType='Numbers,Custom' />
</td>
</tr>
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
    <tr>
        <td align='right'>
            <asp:Label ID='lbl_fechaImportacion_ff' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td align='right' style='padding-left: 8px'>
            <asp:Label ID='lbl_fechaImportacion_ff_busDesde' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td align='right'>
            <asp:Label ID='lbl_fechaImportacion_ff_busA' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
    <tr>
        <td>
            <fec:fechaAvanzada ID='fec_fechaImportacion_ff' runat='server' a_str_prefijo='ff'
                a_bln_obligatorio='false'></fec:fechaAvanzada>
        </td>
    </tr>
    <tr>
        <td>
            <fec:fechaAvanzada ID='fec_fechaImportacion_ff_bus' runat='server' CssClass='txt_fecha_bus'
                CssClassHora='txt_hora_bus' a_str_prefijo='ff' Visible="false"></fec:fechaAvanzada>
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
            <asp:Label ID='lbl_fechaPuestaMarcha_fh' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td align='right' style='padding-left: 8px'>
            <asp:Label ID='lbl_fechaPuestaMarcha_fh_busDesde' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td align='right'>
            <asp:Label ID='lbl_fechaPuestaMarcha_fh_busA' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
    <tr>
        <td>
            <fec:fechaAvanzada ID='fec_fechaPuestaMarcha_fh' runat='server' a_str_prefijo='fh'
                a_bln_obligatorio='false'></fec:fechaAvanzada>
        </td>
    </tr>
    <tr>
        <td>
            <fec:fechaAvanzada ID='fec_fechaPuestaMarcha_fh_bus' runat='server' CssClass='txt_fecha_bus'
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
            <asp:Label ID='lbl_vencimientoGarantiaFabrica_ff' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td align='right' style='padding-left: 8px'>
            <asp:Label ID='lbl_vencimientoGarantiaFabrica_ff_busDesde' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td align='right'>
            <asp:Label ID='lbl_vencimientoGarantiaFabrica_ff_busA' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
    <tr>
        <td>
            <fec:fechaAvanzada ID='fec_vencimientoGarantiaFabrica_ff' runat='server' a_str_prefijo='ff'
                a_bln_obligatorio='false'></fec:fechaAvanzada>
        </td>
    </tr>
    <tr>
        <td>
            <fec:fechaAvanzada ID='fec_vencimientoGarantiaFabrica_ff_bus' runat='server' CssClass='txt_fecha_bus'
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
            <asp:Label ID='lbl_vencimientoGarantiaDistribuidor_ff' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td align='right' style='padding-left: 8px'>
            <asp:Label ID='lbl_vencimientoGarantiaDistribuidor_ff_busDesde' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td align='right'>
            <asp:Label ID='lbl_vencimientoGarantiaDistribuidor_ff_busA' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
    <tr>
        <td>
            <fec:fechaAvanzada ID='fec_vencimientoGarantiaDistribuidor_ff' runat='server' a_str_prefijo='ff'
                a_bln_obligatorio='false'></fec:fechaAvanzada>
        </td>
    </tr>
    <tr>
        <td>
            <fec:fechaAvanzada ID='fec_vencimientoGarantiaDistribuidor_ff_bus' runat='server'
                CssClass='txt_fecha_bus' CssClassHora='txt_hora_bus' a_str_prefijo='ff'></fec:fechaAvanzada>
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
            <asp:Label ID='lbl_horasGarantia' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td align='right' style='padding-left: 8px'>
            <asp:Label ID='lbl_horasGarantia_busDesde' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td align='right'>
            <asp:Label ID='lbl_horasGarantia_busA' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
    <tr>
        <td>
            <asp:TextBox ID='txt_horasGarantia' runat='server' CssClass='txt_numero'></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID='txt_horasGarantia_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
        </td>
    </tr>
</table>
</td>
<td>
<act:FilteredTextBoxExtender ID='ftb_horasGarantia' runat='server' TargetControlID='txt_horasGarantia'
    FilterType='Numbers,Custom' />
<act:FilteredTextBoxExtender ID='ftb_horasGarantia_bus' runat='server' TargetControlID='txt_horasGarantia_bus'
    FilterType='Numbers,Custom' />
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_garantiaCancelada' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_garantiaCancelada' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
&nbsp;
</td>
</tr>
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
    <tr>
        <td align='right'>
            <asp:Label ID='lbl_horometroActual' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td align='right' style='padding-left: 8px'>
            <asp:Label ID='lbl_horometroActual_busDesde' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td align='right'>
            <asp:Label ID='lbl_horometroActual_busA' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
    <tr>
        <td>
            <asp:TextBox ID='txt_horometroActual' runat='server' CssClass='txt_numero'></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID='txt_horometroActual_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
        </td>
    </tr>
</table>
</td>
<td>
<act:FilteredTextBoxExtender ID='ftb_horometroActual' runat='server' TargetControlID='txt_horometroActual'
    FilterType='Numbers,Custom' />
<act:FilteredTextBoxExtender ID='ftb_horometroActual_bus' runat='server' TargetControlID='txt_horometroActual_bus'
    FilterType='Numbers,Custom' />
</td>
</tr>
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
    <tr>
        <td align='right'>
            <asp:Label ID='lbl_ultimaLectura_fh' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td align='right' style='padding-left: 8px'>
            <asp:Label ID='lbl_ultimaLectura_fh_busDesde' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td align='right'>
            <asp:Label ID='lbl_ultimaLectura_fh_busA' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
    <tr>
        <td>
            <fec:fechaAvanzada ID='fec_ultimaLectura_fh' runat='server' a_str_prefijo='fh' a_bln_obligatorio='false'>
            </fec:fechaAvanzada>
        </td>
    </tr>
    <tr>
        <td>
            <fec:fechaAvanzada ID='fec_ultimaLectura_fh_bus' runat='server' CssClass='txt_fecha_bus'
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
            <asp:Label ID='lbl_promedioHoras' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td align='right' style='padding-left: 8px'>
            <asp:Label ID='lbl_promedioHoras_busDesde' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td align='right'>
            <asp:Label ID='lbl_promedioHoras_busA' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
    <tr>
        <td>
            <asp:TextBox ID='txt_promedioHoras' runat='server' CssClass='txt_numero'></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID='txt_promedioHoras_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
        </td>
    </tr>
</table>
</td>
<td>
&nbsp;<act:FilteredTextBoxExtender ID='ftb_promedioHoras' runat='server' TargetControlID='txt_promedioHoras'
    FilterType='Numbers,Custom' />
<act:FilteredTextBoxExtender ID='ftb_promedioHoras_bus' runat='server' TargetControlID='txt_promedioHoras_bus'
    FilterType='Numbers,Custom' />
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_centroCosto' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_centroCosto' runat='server' a_str_tabla='doc_centroCosto'
a_bln_obligatorio='True' a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_estadoEquipo' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_estadoEquipo' runat='server' a_str_tabla='equ_estadoEquipo'
    a_bln_obligatorio='True' a_str_grupoValidacion='form' />
</td>
<td>
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
