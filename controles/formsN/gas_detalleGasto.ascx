<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='gas_detalleGasto.ascx.vb'
Inherits='website.samm_componentes.controles_seg_gas_detalleGasto_N' %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
TagPrefix="uc1" %>
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
<tr align='right'>
<td align='right'>
</td>
<td>
    <table cellpadding='0' cellspacing='0'>
        <tr>
            <td align='right'>
                <asp:Label ID='lbl_fecha_ff' runat='server' CssClass='lblobligatorio'></asp:Label>
            </td>
            <td align='right' style='padding-left: 8px'>
                <asp:Label ID='lbl_fecha_ff_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td align='right'>
                <asp:Label ID='lbl_fecha_ff_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
            </td>
        </tr>
    </table>
</td>
<td class='td_controlesFormulario'>
    <table cellpadding='0' cellspacing='0'>
        <tr>
            <td>
                <fec:fechaAvanzada ID='fec_fecha_ff' runat='server' a_str_prefijo='ff' a_bln_obligatorio='True'
                    a_str_grupoValidacion='form'></fec:fechaAvanzada>
            </td>
        </tr>
        <tr>
            <td>
                <fec:fechaAvanzada ID='fec_fecha_ff_bus' runat='server' CssClass='txt_fecha_bus'
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
    <asp:Label ID='lbl_id_gasto' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
    <bus:busquedaAvanzada ID='bus_gasto' a_str_tabla='gas_gasto' runat='server'  a_bln_obligatorio='True'
        a_str_grupoValidacion='form' Visible="false" />
           <bus:busquedaAvanzada ID='bus_gasto_gasto' a_str_tabla='doc_documento.gasto' runat='server'  a_bln_obligatorio='True'
        a_str_grupoValidacion='form' Visible="false" />
</td>

<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
    <asp:Label ID='lbl_id_catalogo' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
    <bus:busquedaAvanzada ID='bus_catalogo' runat='server' a_str_tabla='cat_catalogo' a_str_filtroTemporal="active = 1 and id_subtipocatalogo in (select id from cat_subtipocatalogo where id_tipocatalogo in (6,2,3) and active = 1)"
        a_bln_obligatorio='True' a_bol_postBack="true" a_str_grupoValidacion='form' a_str_campo="catalogo,id_subtipocatalogo,codigoInventario" />
</td>
<td>
    <asp:HiddenField ID="hid_hidPrecio" runat="server"></asp:HiddenField>
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
                <asp:Label ID='lbl_cantidad' runat='server' CssClass='lblobligatorio'></asp:Label>
            </td>
            <td align='right' style='padding-left: 8px'>
                <asp:Label ID='lbl_cantidad_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td align='right'>
                <asp:Label ID='lbl_cantidad_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
            </td>
        </tr>
    </table>
</td>
<td class='td_controlesFormulario'>
    <table cellpadding='0' cellspacing='0'>
        <tr>
            <td>
                <asp:TextBox ID='txt_cantidad' runat='server' CssClass='txt_numero'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID='txt_cantidad_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
            </td>
        </tr>
    </table>
</td>
<td>
    <asp:RequiredFieldValidator ID='rfv_cantidad' runat='server' ControlToValidate='txt_cantidad'
        ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
            id='ftb_cantidad' runat='server' targetcontrolid='txt_cantidad' filtertype='Numbers,Custom' /><act:filteredtextboxextender
                id='ftb_cantidad_bus' runat='server' targetcontrolid='txt_cantidad_bus' filtertype='Numbers,Custom' />
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
    <asp:Label ID='lbl_detalleGasto' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
    <asp:TextBox ID='txt_detalleGasto' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
    <asp:RequiredFieldValidator ID='rfv_detalleGasto' runat='server' ControlToValidate='txt_detalleGasto'
        ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr runat="server" visible="false">
<td align='right'>
</td>
<td class='td_lblFormulario'>
    <asp:Label ID='lbl_detalleGasto_codigo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
    <asp:TextBox ID='txt_detalleGasto_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
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
                <asp:Label ID='lbl_valor' runat='server' CssClass='lblobligatorio'></asp:Label>
            </td>
            <td align='right' style='padding-left: 8px'>
                <asp:Label ID='lbl_valor_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td align='right'>
                <asp:Label ID='lbl_valor_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
            </td>
        </tr>
    </table>
</td>
<td class='td_controlesFormulario'>
    <table cellpadding='0' cellspacing='0'>
        <tr>
            <td>
                <asp:TextBox ID='txt_valor' runat='server' CssClass='txt_numero'></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID='txt_valor_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
            </td>
        </tr>
    </table>
</td>
<td>
    <asp:RequiredFieldValidator ID='rfv_valor' runat='server' ControlToValidate='txt_valor'
        ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
            id='ftb_valor' runat='server' targetcontrolid='txt_valor' filtertype='Numbers,Custom' /><act:filteredtextboxextender
                id='ftb_valor_bus' runat='server' targetcontrolid='txt_valor_bus' filtertype='Numbers,Custom' />
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
    <asp:Label ID="lbl_ot" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
    <uc1:busquedaAvanzadaMultiple ID="bus_ot" runat="server" a_bln_obligatorio="true"
        a_str_grupoValidacion="form" a_str_tabla="doc_documento.ot" a_str_campo="doc_documento_ot_documento_numero,documento.ot" />
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
