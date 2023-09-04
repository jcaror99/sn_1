<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='doc_documento_alquiler.ascx.vb'
Inherits='website.samm_componentes.controles_doc_documento_alquiler' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
&nbsp;&nbsp;&nbsp;&nbsp;<table class='tbl_marcoFormulario'>
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
<table cellpadding='0' cellspacing='0' align="right">
<tr>
<td rowspan="4">
<asp:TextBox ID='txt_prefijo' runat='server' MaxLength='10' CssClass='txt_formulario'
BorderWidth="0px" BackColor="transparent" Font-Bold="true" Width="30px"></asp:TextBox>
<asp:Label ID="lbl_separador" runat="server" Text="-"></asp:Label>
</td>
</tr>
<tr>
<td>
<asp:Label ID='lbl_alquiler_numero_busDesde' runat='server' CssClass=''></asp:Label>
</td>
<td align='right'>
</td>
</tr>
<tr>
<td align='right'>
<asp:Label ID='lbl_alquiler_numero_busA' runat='server' CssClass=''></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='left'>
<asp:TextBox ID='txt_alquiler_numero' runat='server' CssClass='txt_entero' ReadOnly="True"></asp:TextBox><act:filteredtextboxextender
id='ftb_alquiler_numero' runat='server' targetcontrolid='txt_alquiler_numero'
filtertype='Numbers' />
</td>
</tr>
<tr>
<td align='left'>
<asp:TextBox ID='txt_alquiler_numero_bus' runat='server' CssClass='txt_entero_bus'></asp:TextBox><act:filteredtextboxextender
id='ftb_alquiler_numero_bus' runat='server' targetcontrolid='txt_alquiler_numero_bus'
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
<bus:busquedaAvanzada ID='bus_subtipoDocumento' runat='server' a_str_tabla='doc_subtipoDocumento' a_str_grupoValidacion='form' a_str_filtros="id_tipoDocumento=9"
aObol_guardarNoExiste="true" />
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
<fec:fechaAvanzada ID='fec_fecha_fhCopia' runat='server' a_str_prefijo='ff'></fec:fechaAvanzada>
<fec:fechaAvanzada ID='fec_fecha_fh' runat='server' a_str_prefijo='fh' 
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
<asp:Label ID='lbl_id_prioridadDocumento' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_prioridadDocumento' runat='server' a_str_tabla='doc_prioridadDocumento' a_str_grupoValidacion='form' a_str_filtros="id_tipoDocumento=9" />
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
<fec:fechaAvanzada ID='fec_fechaLimite_fh' runat='server' a_str_prefijo='fh' 
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
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_alquiler' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_alquiler' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
<asp:RequiredFieldValidator ID='rfv_alquiler' runat='server' ControlToValidate='txt_alquiler'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_alquiler_codigo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_alquiler_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
<asp:RequiredFieldValidator ID='rfv_alquiler_codigo' runat='server' ControlToValidate='txt_alquiler_codigo'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
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
<bus:busquedaAvanzada ID='bus_tercero' runat='server' a_str_tabla='ter_tercero' 
a_bol_postBack="true" a_str_filtros="esCliente=1" a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
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
<asp:Label ID='lbl_fechaCompromiso_ff' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_fechaCompromiso_ff_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_fechaCompromiso_ff_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaCompromiso_ff' runat='server' a_str_prefijo='ff'  a_bln_obligatorio="false" a_str_grupoValidacion='form'></fec:fechaAvanzada>
</td>
</tr>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaCompromiso_ff_bus' runat='server' CssClass='txt_fecha_bus'
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
<asp:Label ID='lbl_fechaFin_ff' runat='server'  CssClass='lbl'></asp:Label>
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
<fec:fechaAvanzada ID='fec_fechaFin_ff' runat='server' a_str_prefijo='ff' a_bln_obligatorio="True" a_str_grupoValidacion='form'></fec:fechaAvanzada>
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
<tr id="tr_documento" runat="server" visible="false">
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_documento' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_documento' runat='server' a_str_tabla='doc_documento'
a_bln_obligatorio='False' />
</td>
<td>
</td>
</tr>
<tr align='right'>
<td align='right'>
</td>
<td>
</td>
<td>
</td>
</tr>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_mesVencido' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
    <asp:DropDownList ID="drp_mesVencido" runat="server">
    </asp:DropDownList>
</td>
<td>
    <asp:RequiredFieldValidator ID="rfv_mesVencido"  runat='server' ControlToValidate='drp_mesVencido'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
 <tr>
<td align='right'></td>        <td class='td_lblFormulario'>
            <asp:Label ID='lbl_observaciones' runat='server' cssclass='lbl'></asp:Label></td>
        <td class='td_controlesFormulario'>
           <txt:textoAvanzado ID='txt_observaciones' runat='server' CssClass='txt_multilinea' a_bln_obligatorio='false' a_str_grupoValidacion='form'></txt:textoAvanzado></td>        <td>
</td>     </tr>
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


<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_usuarioAsignado" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<bus:busquedaAvanzada ID="bus_usuarioAsignado" runat="server" a_str_tabla="seg_usuario" />
</td>
<td>
</td>
</tr>

<tr>
<td colspan="3" align="center"  >
<asp:Label ID="lbl_men" runat='server' CssClass='lbl_mensaje' ></asp:Label>
</td>
</tr>
</table>
<table id='tbl_guardarformulario'>
<tr>
<td>
</td>
<td>
<asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje'
ForeColor='' />
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
<tr><td></td><td valign='middle' align='right'><bti:BotonImagen ID='imbGuardar' runat='server' ImageUrl='../../images/botones/aceptar.png'
ValidationGroup='form' CssClass='imb' /></td></tr>
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
