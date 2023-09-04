<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='equ_detalleAlquiler.ascx.vb'
Inherits='website.samm_componentes.controles_seg_equ_detalleAlquiler_N' %>
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
<act:togglebuttonextender id='ToggleButtonExtender1' runat='server' checkedimagealternatetext='<%$ Resources:res_controles,ayuda_especificano %>'
checkedimageurl='../../images/iconos/ojo1.png' imageheight='26' imagewidth='30'
targetcontrolid='chb_ayudaCampo' uncheckedimagealternatetext='<%$ Resources:res_controles,ayuda_especifica %>'
uncheckedimageurl='../../images/iconos/ojo2.png'> </act:togglebuttonextender>
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
<asp:Label ID='lbl_detalleAlquiler' runat='server' CssClass='lbl' Visible="False"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_detalleAlquiler' runat='server' MaxLength='100' CssClass='txt_multilinea'
Visible="False"></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_detalleAlquiler' runat='server' ControlToValidate='txt_detalleAlquiler'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor=""
Visible="False">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_detalleAlquiler_codigo' runat='server' CssClass='lbl' Visible="False"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_detalleAlquiler_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'
Visible="False"></asp:TextBox>
</td>
<td>
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
a_str_grupoValidacion='form' a_bol_postBack="true" />
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
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_equipo' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_equipo' runat='server' a_str_tabla='equ_equipo' a_bln_obligatorio='True' a_str_filtroTemporal = 'id_estadoequipo=1 and id_sucursal in (select id from ter_sucursal where paraalquiler=1 and active=1)'
a_str_grupoValidacion='form' a_bol_postBack="true" a_bln_mostrarNuevoConDrop="true"  />
<label ID="lbl_mensaje" runat="server" class="lbl"></label>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_alquiler' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_alquiler' runat='server' a_str_tabla='doc_documento.alquiler'
a_bln_obligatorio='True' a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<%--<tr id="tr_horometro" runat="server" align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
    <td align='right'>
        <asp:Label ID='lbl_horometro' runat='server' CssClass='lbl'></asp:Label>
    </td>
    <td align='right' style='padding-left: 8px'>
        <asp:Label ID='lbl_horometro_busDesde' runat='server' CssClass='lbl'></asp:Label>
    </td>
</tr>
<tr>
    <td>
    </td>
    <td align='right'>
        <asp:Label ID='lbl_horometro_busA' runat='server' CssClass='lbl'></asp:Label>
    </td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
    <td>
        <asp:TextBox ID='txt_horometro' runat='server' CssClass='txt_numero'></asp:TextBox>
    </td>
</tr>
<tr>
    <td>
        <asp:TextBox ID='txt_horometro_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
    </td>
</tr>
</table>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_horometro' runat='server' ControlToValidate='txt_horometro'ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
id='ftb_horometro' runat='server' targetcontrolid='txt_horometro' filtertype='Numbers,Custom' /><act:filteredtextboxextender
    id='ftb_horometro_bus' runat='server' targetcontrolid='txt_horometro_bus' filtertype='Numbers,Custom' />
</td>
</tr>
--%><tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
    <td align='right'>
        <asp:Label ID='lbl_fechaDespacho_ff' runat='server' CssClass='lbl'></asp:Label>
    </td>
    <td align='right' style='padding-left: 8px'>
        <asp:Label ID='lbl_fechaDespacho_ff_busDesde' runat='server' CssClass='lbl'></asp:Label>
    </td>
</tr>
<tr>
    <td>
    </td>
    <td align='right'>
        <asp:Label ID='lbl_fechaDespacho_ff_busA' runat='server' CssClass='lbl'></asp:Label>
    </td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
    <td>
        <fec:fechaAvanzada ID='fec_fechaDespacho_ff' runat='server' a_str_prefijo='ff' a_bln_obligatorio='True'
            a_str_grupoValidacion='form'></fec:fechaAvanzada>
    </td>
</tr>
<tr>
    <td>
        <fec:fechaAvanzada ID='fec_fechaDespacho_ff_bus' runat='server' CssClass='txt_fecha_bus'
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
<asp:Label ID='lbl_fechaInicioFacturacion_ff' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_fechaInicioFacturacion_ff_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_fechaInicioFacturacion_ff_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaInicioFacturacion_ff' runat='server' a_str_prefijo='ff' a_bln_obligatorio='False'
a_str_grupoValidacion='form'></fec:fechaAvanzada>
</td>
</tr>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaInicioFacturacion_ff_bus' runat='server' CssClass='txt_fecha_bus'
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
<asp:Label ID='lbl_fechaDevolucion_ff' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaDevolucion_ff' runat='server' a_str_prefijo='ff' a_bln_obligatorio='False'
a_str_grupoValidacion='form'></fec:fechaAvanzada>
</td>
</tr>
</table>
</td>
<td>
</td>
</tr>

<tr runat="server" visible="false"  align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
    <td align='right'>
        <asp:Label ID='lbl_ValorHoraStandBy' runat='server' CssClass='lblobligatorio'></asp:Label>
    </td>
    <td align='right' style='padding-left: 8px'>
        <asp:Label ID='lbl_ValorHoraStandBy_busDesde' runat='server' CssClass='lbl'></asp:Label>
    </td>
</tr>
<tr>
    <td>
    </td>
    <td align='right'>
        <asp:Label ID='lbl_ValorHoraStandBy_busA' runat='server' CssClass='lbl'></asp:Label>
    </td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
    <td>
        <asp:TextBox ID='txt_ValorHoraStandBy' runat='server' CssClass='txt_precio'></asp:TextBox>
    </td>
</tr>
<tr>
    <td>
        <asp:TextBox ID='txt_ValorHoraStandBy_bus' runat='server' CssClass='txt_precio_bus'></asp:TextBox>
    </td>
</tr>
</table>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_ValorHoraStandBy' runat='server' ControlToValidate='txt_ValorHoraStandBy'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
    id='ftb_ValorHoraStandBy' runat='server' targetcontrolid='txt_ValorHoraStandBy'
    filtertype='Numbers,Custom' /><act:filteredtextboxextender id='ftb_ValorHoraStandBy_bus'
        runat='server' targetcontrolid='txt_ValorHoraStandBy_bus' filtertype='Numbers,Custom' />
</td>
</tr>
<tr runat="server" visible="false" align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
    <td align='right'>
        <asp:Label ID='lbl_valorPeriodo' runat='server' CssClass='lblobligatorio'></asp:Label>
    </td>
    <td align='right' style='padding-left: 8px'>
        <asp:Label ID='lbl_valorPeriodo_busDesde' runat='server' CssClass='lbl'></asp:Label>
    </td>
</tr>
<tr>
    <td>
    </td>
    <td align='right'>
        <asp:Label ID='lbl_valorPeriodo_busA' runat='server' CssClass='lbl'></asp:Label>
    </td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
    <td>
        <asp:TextBox ID='txt_valorPeriodo' runat='server' CssClass='txt_precio'></asp:TextBox>
    </td>
</tr>
<tr>
    <td>
        <asp:TextBox ID='txt_valorPeriodo_bus' runat='server' CssClass='txt_precio_bus'></asp:TextBox>
    </td>
</tr>
</table>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_valorPeriodo' runat='server' ControlToValidate='txt_valorPeriodo'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
    id='ftb_valorPeriodo' runat='server' targetcontrolid='txt_valorPeriodo' filtertype='Numbers,Custom' /><act:filteredtextboxextender
        id='ftb_valorPeriodo_bus' runat='server' targetcontrolid='txt_valorPeriodo_bus'
        filtertype='Numbers,Custom' />
</td>
</tr>
<tr  runat="server" visible="false" align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
    <td align='right'>
        <asp:Label ID='lbl_valorMulta' runat='server' CssClass='lblobligatorio'></asp:Label>
    </td>
    <td align='right' style='padding-left: 8px'>
        <asp:Label ID='lbl_valorMulta_busDesde' runat='server' CssClass='lbl'></asp:Label>
    </td>
</tr>
<tr>
    <td>
    </td>
    <td align='right'>
        <asp:Label ID='lbl_valorMulta_busA' runat='server' CssClass='lbl'></asp:Label>
    </td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
    <td>
        <asp:TextBox ID='txt_valorMulta' runat='server' CssClass='txt_precio'></asp:TextBox>
    </td>
</tr>
<tr>
    <td>
        <asp:TextBox ID='txt_valorMulta_bus' runat='server' CssClass='txt_precio_bus'></asp:TextBox>
    </td>
</tr>
</table>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_valorMulta' runat='server' ControlToValidate='txt_valorMulta'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
    id='ftb_valorMulta' runat='server' targetcontrolid='txt_valorMulta' filtertype='Numbers,Custom' /><act:filteredtextboxextender
        id='ftb_valorMulta_bus' runat='server' targetcontrolid='txt_valorMulta_bus' filtertype='Numbers,Custom' />
</td>
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
