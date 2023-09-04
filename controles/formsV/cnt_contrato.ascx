<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='cnt_contrato.ascx.vb'
Inherits='website.samm_componentes.controles_seg_cnt_contrato' %>
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
<asp:Label ID='lbl_contrato' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_contrato' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_contrato' runat='server' ControlToValidate='txt_contrato'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_numero' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_numero' runat='server' MaxLength='50' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_numero' runat='server' ControlToValidate='txt_numero'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_contrato_codigo' runat='server' CssClass='lbl' Visible="True"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_contrato_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'
Visible="True"></asp:TextBox>
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
a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_tipoContrato' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tipoContrato' runat='server' a_str_tabla='cnt_tipoContrato'
a_bln_obligatorio='True' a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_periodoContrato' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_periodoContrato' runat='server' a_str_tabla='cnt_periodoContrato'
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
        <asp:Label ID='lbl_fechaInicio_ff' runat='server' CssClass='lblobligatorio'></asp:Label>
    </td>
    <td align='right' style='padding-left: 8px'>
        <asp:Label ID='lbl_fechaInicio_ff_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
    </td>
</tr>
<tr>
    <td>
    </td>
    <td align='right'>
        <asp:Label ID='lbl_fechaInicio_ff_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
    </td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
    <td>
        <fec:fechaAvanzada ID='fec_fechaInicio_ff' runat='server' a_str_prefijo='ff' a_bln_obligatorio='True'
            a_str_grupoValidacion='form'></fec:fechaAvanzada>
    </td>
</tr>
<tr>
    <td>
        <fec:fechaAvanzada ID='fec_fechaInicio_ff_bus' runat='server' CssClass='txt_fecha_bus'
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
        <asp:Label ID='lbl_fechaFin_ff' runat='server' CssClass='lblobligatorio'></asp:Label>
    </td>
    <td align='right' style='padding-left: 8px'>
        <asp:Label ID='lbl_fechaFin_ff_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
    </td>
</tr>
<tr>
    <td>
    </td>
    <td align='right'>
        <asp:Label ID='lbl_fechaFin_ff_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
    </td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
    <td>
        <fec:fechaAvanzada ID='fec_fechaFin_ff' runat='server' a_str_prefijo='ff' a_bln_obligatorio='True'
            a_str_grupoValidacion='form'></fec:fechaAvanzada>
    </td>
</tr>
<tr>
    <td>
        <fec:fechaAvanzada ID='fec_fechaFin_ff_bus' runat='server' CssClass='txt_fecha_bus'
            CssClassHora='txt_hora_bus' a_str_prefijo='ff'></fec:fechaAvanzada>
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
<asp:Label ID='lbl_id_tercero_servicio' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tercero_servicio' runat='server' a_str_tabla='ter_tercero'
a_bln_obligatorio='False' />
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
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_condiciones' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_condiciones' runat='server' a_bln_obligatorio='false'>
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
        <asp:Label ID='lbl_diasCumplimiento' runat='server' CssClass='lbl'></asp:Label>
    </td>
    <td align='right' style='padding-left: 8px'>
        <asp:Label ID='lbl_diasCumplimiento_busDesde' runat='server' CssClass='lbl'></asp:Label>
    </td>
</tr>
<tr>
    <td>
    </td>
    <td align='right'>
        <asp:Label ID='lbl_diasCumplimiento_busA' runat='server' CssClass='lbl'></asp:Label>
    </td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
    <td>
        <asp:TextBox ID='txt_diasCumplimiento' runat='server' CssClass='txt_entero'></asp:TextBox>
    </td>
</tr>
<tr>
    <td>
        <asp:TextBox ID='txt_diasCumplimiento_bus' runat='server' CssClass='txt_entero_bus'></asp:TextBox>
    </td>
</tr>
</table>
</td>
<td>
<act:filteredtextboxextender id='ftb_diasCumplimiento' runat='server' targetcontrolid='txt_diasCumplimiento'
filtertype='Numbers' />
<act:filteredtextboxextender id='ftb_diasCumplimiento_bus' runat='server' targetcontrolid='txt_diasCumplimiento_bus'
filtertype='Numbers' />
</td>
</tr>
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
    <td align='right'>
        <asp:Label ID='lbl_totalContrato' runat='server' CssClass='lbl'></asp:Label>
    </td>
    <td align='right' style='padding-left: 8px'>
        <asp:Label ID='lbl_totalContrato_busDesde' runat='server' CssClass='lbl'></asp:Label>
    </td>
</tr>
<tr>
    <td>
    </td>
    <td align='right'>
        <asp:Label ID='lbl_totalContrato_busA' runat='server' CssClass='lbl'></asp:Label>
    </td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
    <td>
        <asp:TextBox ID='txt_totalContrato' runat='server' CssClass='txt_precio'></asp:TextBox>
    </td>
</tr>
<tr>
    <td>
        <asp:TextBox ID='txt_totalContrato_bus' runat='server' CssClass='txt_precio_bus'></asp:TextBox>
    </td>
</tr>
</table>
</td>
<td>
<act:filteredtextboxextender id='ftb_totalContrato' runat='server' targetcontrolid='txt_totalContrato'
filtertype='Numbers,Custom' />
<act:filteredtextboxextender id='ftb_totalContrato_bus' runat='server' targetcontrolid='txt_totalContrato_bus'
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
        <asp:Label ID='lbl_presupuesto' runat='server' CssClass='lbl'></asp:Label>
    </td>
    <td align='right' style='padding-left: 8px'>
        <asp:Label ID='lbl_presupuesto_busDesde' runat='server' CssClass='lbl'></asp:Label>
    </td>
</tr>
<tr>
    <td>
    </td>
    <td align='right'>
        <asp:Label ID='lbl_presupuesto_busA' runat='server' CssClass='lbl'></asp:Label>
    </td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
    <td>
        <asp:TextBox ID='txt_presupuesto' runat='server' CssClass='txt_precio'></asp:TextBox>
    </td>
</tr>
<tr>
    <td>
        <asp:TextBox ID='txt_presupuesto_bus' runat='server' CssClass='txt_precio_bus'></asp:TextBox>
    </td>
</tr>
</table>
</td>
<td>
<act:filteredtextboxextender id='ftb_presupuesto' runat='server' targetcontrolid='txt_presupuesto'
filtertype='Numbers,Custom' />
<act:filteredtextboxextender id='ftb_presupuesto_bus' runat='server' targetcontrolid='txt_presupuesto_bus'
filtertype='Numbers,Custom' />
</td>
</tr>
</table>
<table id='tbl_guardarformulario'>
<tr>
<td>
    <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
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
