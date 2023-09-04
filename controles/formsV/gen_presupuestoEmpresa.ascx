<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='gen_presupuestoEmpresa.ascx.vb'
Inherits='website.samm_componentes.controles_seg_gen_presupuestoEmpresa' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table class="tbl_marcoFormulario" border="0" cellpadding="0" cellspacing="0">
<tr>
<td valign="top" rowspan="3" style="width: 42px;">
<bti:BotonImagen ID="imbNuevo" runat="server" CausesValidation="False" ImageUrl='~/images/botones/nuevo.gif' /><br />
<bti:BotonImagen ID="imbEliminar" runat="server" CausesValidation="False" ImageUrl='~/images/botones/eliminar.gif' />
</td>
<td>
<gri:grilla ID="grd_presupuesto" runat="server" a_bln_paginacionNormal="true" />
</td>
<td>
</td>
</tr>
<tr>
<td>
<table class='tbl_marcoFormulario'>
<tr>
<td>
<asp:Panel ID='pan_formulario' runat='server' DefaultButton='imbGuardar'>
<table class='tbl_marcoFormulario' border='0' cellpadding='0' cellspacing='0'>
<tr>
<td align='right' valign='top' class='tbl_marcoFormulario'>
<act:togglebuttonextender id='ToggleButtonExtender1' runat='server' checkedimagealternatetext='<%$ Resources:res_controles,ayuda_especificano %>'
checkedimageurl='../../images/iconos/ojo1.png' imageheight='26' imagewidth='30'
targetcontrolid='chb_ayudaCampo' uncheckedimagealternatetext='<%$ Resources:res_controles,ayuda_especifica %>'
uncheckedimageurl='../../images/iconos/ojo2.png'></act:togglebuttonextender>
<table border='0' cellpadding='0' cellspacing='0' id='tbl_estadoformulario' class='tbl_marcoFormulario'>
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
<asp:Label ID='lbl_presupuestoEmpresa' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_presupuestoEmpresa' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_presupuestoEmpresa' runat='server' ControlToValidate='txt_presupuestoEmpresa'
    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_presupuestoEmpresa_codigo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_presupuestoEmpresa_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_empresa' runat='server' CssClass='lbl' Visible="False"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_empresa' runat='server' a_str_tabla='gen_empresa' a_bln_obligatorio='True'
    a_str_grupoValidacion='form' Visible="false" />
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
            <asp:Label ID='lbl_fechaInicio_ff' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td align='right' style='padding-left: 8px'>
            <asp:Label ID='lbl_fechaInicio_ff_busDesde' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td align='right'>
            <asp:Label ID='lbl_fechaInicio_ff_busA' runat='server' CssClass='lbl'></asp:Label>
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
            <asp:Label ID='lbl_fechaFin_ff' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td align='right' style='padding-left: 8px'>
            <asp:Label ID='lbl_fechaFin_ff_busDesde' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td align='right'>
            <asp:Label ID='lbl_fechaFin_ff_busA' runat='server' CssClass='lbl'></asp:Label>
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
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
    <tr>
        <td align='right'>
            <asp:Label ID='lbl_Valor' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td align='right' style='padding-left: 8px'>
            <asp:Label ID='lbl_Valor_busDesde' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td align='right'>
            <asp:Label ID='lbl_Valor_busA' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
    <tr>
        <td>
            <asp:TextBox ID='txt_Valor' runat='server' CssClass='txt_precio'></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID='txt_Valor_bus' runat='server' CssClass='txt_precio_bus'></asp:TextBox>
        </td>
    </tr>
</table>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_Valor' runat='server' ControlToValidate='txt_Valor'
    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
        id='ftb_Valor' runat='server' targetcontrolid='txt_Valor' filtertype='Numbers,Custom' /><act:filteredtextboxextender
            id='ftb_Valor_bus' runat='server' targetcontrolid='txt_Valor_bus' filtertype='Numbers,Custom' />
</td>
</tr>
</table>
<table id='tbl_guardarformulario'>
<tr>
<td>
<asp:Label ID="lbl_mensaje" runat="server" CssClass='lbl_mensaje'></asp:Label><asp:ValidationSummary
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
</td>
</tr>
</table>
