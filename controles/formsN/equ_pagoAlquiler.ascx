<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='equ_pagoAlquiler.ascx.vb'
Inherits='website.samm_componentes.controles_seg_equ_pagoAlquiler_N' %>
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
<asp:Label ID='lbl_pagoAlquiler' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_pagoAlquiler' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_pagoAlquiler' runat='server' ControlToValidate='txt_pagoAlquiler'
    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_pagoAlquiler_codigo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_pagoAlquiler_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
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
<bus:busquedaAvanzada ID='bus_alquiler' runat='server' a_str_tabla='equ_alquiler'
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
            <asp:Label ID='lbl_valorPorCobrar' runat='server' CssClass='lblobligatorio'></asp:Label>
        </td>
        <td align='right' style='padding-left: 8px'>
            <asp:Label ID='lbl_valorPorCobrar_busDesde' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td align='right'>
            <asp:Label ID='lbl_valorPorCobrar_busA' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
    <tr>
        <td>
            <asp:TextBox ID='txt_valorPorCobrar' runat='server' CssClass='txt_precio'></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID='txt_valorPorCobrar_bus' runat='server' CssClass='txt_precio_bus'></asp:TextBox>
        </td>
    </tr>
</table>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_valorPorCobrar' runat='server' ControlToValidate='txt_valorPorCobrar'
    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
        id='ftb_valorPorCobrar' runat='server' targetcontrolid='txt_valorPorCobrar' filtertype='Numbers,Custom' /><act:filteredtextboxextender
            id='ftb_valorPorCobrar_bus' runat='server' targetcontrolid='txt_valorPorCobrar_bus'
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
            <asp:Label ID='lbl_valorFacturado' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td align='right' style='padding-left: 8px'>
            <asp:Label ID='lbl_valorFacturado_busDesde' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td align='right'>
            <asp:Label ID='lbl_valorFacturado_busA' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
    <tr>
        <td>
            <asp:TextBox ID='txt_valorFacturado' runat='server' CssClass='txt_precio'></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID='txt_valorFacturado_bus' runat='server' CssClass='txt_precio_bus'></asp:TextBox>
        </td>
    </tr>
</table>
</td>
<td>
<act:filteredtextboxextender id='ftb_valorFacturado' runat='server' targetcontrolid='txt_valorFacturado'
    filtertype='Numbers,Custom' />
<act:filteredtextboxextender id='ftb_valorFacturado_bus' runat='server' targetcontrolid='txt_valorFacturado_bus'
    filtertype='Numbers,Custom' />
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_numeroFactura' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_numeroFactura' runat='server' MaxLength='1' CssClass='txt_multilinea'></asp:TextBox>
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
            <asp:Label ID='lbl_fechaEsperadaPago_ff' runat='server' CssClass='lblobligatorio'></asp:Label>
        </td>
        <td align='right' style='padding-left: 8px'>
            <asp:Label ID='lbl_fechaEsperadaPago_ff_busDesde' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td align='right'>
            <asp:Label ID='lbl_fechaEsperadaPago_ff_busA' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
    <tr>
        <td>
            <fec:fechaAvanzada ID='fec_fechaEsperadaPago_ff' runat='server' a_str_prefijo='ff'
                a_bln_obligatorio='True' a_str_grupoValidacion='form'></fec:fechaAvanzada>
        </td>
    </tr>
    <tr>
        <td>
            <fec:fechaAvanzada ID='fec_fechaEsperadaPago_ff_bus' runat='server' CssClass='txt_fecha_bus'
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
            <asp:Label ID='lbl_fecha_factura_ff' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td align='right' style='padding-left: 8px'>
            <asp:Label ID='lbl_fecha_factura_ff_busDesde' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td align='right'>
            <asp:Label ID='lbl_fecha_factura_ff_busA' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
    <tr>
        <td>
            <fec:fechaAvanzada ID='fec_fecha_factura_ff' runat='server' a_str_prefijo='ff' a_bln_obligatorio='false'>
            </fec:fechaAvanzada>
        </td>
    </tr>
    <tr>
        <td>
            <fec:fechaAvanzada ID='fec_fecha_factura_ff_bus' runat='server' CssClass='txt_fecha_bus'
                CssClassHora='txt_hora_bus' a_str_prefijo='ff'></fec:fechaAvanzada>
        </td>
    </tr>
</table>
</td>
<td>
</td>
</tr>
</table>
<table id='tbl_guardarformulario'>
<tr>
<td align="center">
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
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
