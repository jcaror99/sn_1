<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='dis_evento.ascx.vb' Inherits='website.samm_componentes.controles_seg_dis_evento' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Src="~/controles/general/taxonomia.ascx" TagName="taxonomia" TagPrefix="tax" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
&nbsp;&nbsp;

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
<act:ToggleButtonExtender ID='ToggleButtonExtender1' runat='server' CheckedImageAlternateText='<%$ Resources:res_controles,ayuda_especificano %>'
CheckedImageUrl='../../images/iconos/ojo1.png' ImageHeight='26' ImageWidth='30'
TargetControlID='chb_ayudaCampo' UncheckedImageAlternateText='<%$ Resources:res_controles,ayuda_especifica %>'
UncheckedImageUrl='../../images/iconos/ojo2.png'>
</act:ToggleButtonExtender>
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
<asp:Label ID='lbl_id_equipo' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_equipo' runat='server' a_str_tabla='equ_equipo' a_bln_obligatorio='True'
a_str_grupoValidacion='form' a_bol_postBack="true"/>
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
<tax:taxonomia ID="tax_taxonomia" runat="server" a_bln_obligatorio="true" a_str_grupoValidacion="form" a_str_tabla="dis_evento"  />
</td>
</tr>

<tr>
<td align='right'>
</td>
<td >
</td>
<td>
<asp:Label ID="lbl_textoHorometro" runat="server" CssClass="lbl"></asp:Label>
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
<td style="text-align: left">
<asp:Label ID="lbl_mensajeHorometro" runat="server" CssClass="lbl_mensaje"></asp:Label><act:FilteredTextBoxExtender
ID='ftb_horometro' runat='server' TargetControlID='txt_horometro' FilterType='Numbers,Custom' />
<act:FilteredTextBoxExtender ID='ftb_horometro_bus' runat='server' TargetControlID='txt_horometro_bus'
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
<asp:Label ID='lbl_fechaHoraInicio_ff' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_fechaHoraInicio_ff_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_fechaHoraInicio_ff_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaHoraInicio_ff' runat='server' a_str_prefijo='fh'
a_bln_obligatorio='True' a_str_grupoValidacion='form'></fec:fechaAvanzada>
</td>
</tr>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaHoraInicio_ff_bus' runat='server' CssClass='txt_fecha_bus'
CssClassHora='txt_hora_bus' a_str_prefijo='fh'></fec:fechaAvanzada>
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
<td align='right'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_fechaHoraFin_ff' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_fechaHoraFin_ff_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_fechaHoraFin_ff_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaHoraFin_ff' runat='server' a_str_prefijo='fh' a_bln_obligatorio='false'
a_str_grupoValidacion='form'></fec:fechaAvanzada>
</td>
</tr>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaHoraFin_ff_bus' runat='server' a_str_prefijo='fh' a_bln_obligatorio='false'
a_str_grupoValidacion='form' CssClass='txt_fecha_bus' CssClassHora='txt_hora_bus' ></fec:fechaAvanzada>
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
<asp:Label ID='lbl_duracion_hh' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_duracion_hh_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_duracion_hh_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_duracion_dia' runat='server' ssClass='txt_entero'></asp:TextBox>
</td>
<td style="padding:0px 4px 0px 4px">
<asp:Label ID='lbl_duracion_dias' runat='server' CssClass='lbl'>
</asp:Label>

</td>
<td>
<fec:fechaAvanzada ID='fec_duracion_hh' runat='server' a_str_prefijo='hh' a_bln_obligatorio='false'
a_str_grupoValidacion='form' CssClassHora='txt_hora' ></fec:fechaAvanzada>

</td>
<td>
<asp:Label ID='lbl_totalHoras' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_duracion_dia_bus' runat='server' CssClass='txt_entero_bus'></asp:TextBox>
</td>
<td style="padding:0px 4px 0px 4px">
<asp:Label ID='lbl_duracion_dias_bus' runat='server' CssClass='lbl'></asp:Label>
</td>
<td>
<fec:fechaAvanzada ID='fec_duracion_hh_bus' runat='server' CssClass='txt_fecha_bus'
CssClassHora='txt_hora_bus' a_str_prefijo='hh'></fec:fechaAvanzada>
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
<td align='right'>

<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_fechaHoraEsperada_fh' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_fechaHoraEsperada_fh_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_fechaHoraEsperada_fh_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>

</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaHoraEsperada_fh' runat='server' a_str_prefijo='fh' a_bln_obligatorio='false'
a_str_grupoValidacion='form'></fec:fechaAvanzada>
</td>
</tr>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaHoraEsperada_fh_bus' runat='server' a_str_prefijo='fh' a_bln_obligatorio='false'
a_str_grupoValidacion='form' CssClass='txt_fecha_bus' CssClassHora='txt_hora_bus'  ></fec:fechaAvanzada>
</td>
</tr>
</table>
</td>
<td align='right'>
</td>

<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_motivoEvento' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_motivoEvento' runat='server' a_str_tabla='dis_motivoEvento'
a_bln_obligatorio='True' a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>

<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_evento' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_evento' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_evento' runat='server' ControlToValidate='txt_evento'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>

<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_evento_codigo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_evento_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>

<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_codigo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_codigo' runat='server' MaxLength='100' CssClass='txt'></asp:TextBox>
</td>
<td>
</td>

</tr>


</table>

</td>
<td class='td_separadorFormulario' rowspan='2'>
<img alt='' src='../../images/interfaz/spacer.gif' width='12px' />
</td>
<td class='td_controlesFormulario' rowspan='2' style='height: 100%' valign='bottom'>
<table>








<tr style="display:none">
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_afectaProduccion' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_afectaProduccion' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
RepeatLayout='Flow'>
<asp:ListItem Value='1' Text='res_etiquetas,si' ></asp:ListItem>
<asp:ListItem Value='0' Text='res_etiquetas,no'></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>

</td>
</tr>

<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_usuario' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_usuario' runat='server' a_str_tabla='seg_usuario' a_bln_obligatorio='False'
a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr>
<td></td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_ot' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_ot' runat='server' a_str_tabla='doc_documento.ot' a_bln_obligatorio='False' a_bln_mostrarNuevoConDrop="true"/>
</td>
<td></td>
</tr>

<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_notas' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_notas' runat='server' a_bln_obligatorio='false'>
</txt:textoAvanzado>
</td>
<td>
</td>
</tr>

<tr>
<td></td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_tipoEvento' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID="rbl_tipoEvento" runat="server" RepeatDirection="Horizontal" CssClass="rbl"></asp:RadioButtonList>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_tipoEvento' runat='server' ControlToValidate='rbl_tipoEvento'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor=""></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_afectaCliente' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_afectaCliente' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
RepeatLayout='Flow'>
</asp:RadioButtonList>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_afectaCliente' runat='server' ControlToValidate='rbl_afectaCliente'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor=""></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td></td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_estatusEvento' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<table>
    <tr>
        <td>
            <bus:busquedaAvanzada ID='bus_estatusEvento' runat='server' a_str_tabla='dis_estadoEvento' a_bln_obligatorio='true' a_str_grupoValidacion='form'  a_bol_postBack="true"/>
        </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID='txt_observacionesEstadoEvento' runat='server' CssClass='txt' ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
        <fec:fechaAvanzada ID='fec_estatusEvento_fh' runat='server' a_str_prefijo='fh' a_bln_obligatorio='true' a_str_grupoValidacion='form' CssClass='txt_fecha_bus' CssClassHora='txt_hora_bus'  ></fec:fechaAvanzada>
        </td>
    </tr>
  
   
</table>
</td>
<td></td>
</tr>

<tr>
<td>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_sistema' runat='server' CssClass='lbl'></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_sistema" runat="server"  a_str_tabla="cat_sistema" a_bln_obligatorio='False' />
</td>
</tr>
</table>
<table id='tbl_guardarformulario'>
<tr>
<td>
<asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje'
ForeColor='' />
<asp:Label ID='lbl_mensaje' runat='server' CssClass='lbl_mensaje'></asp:Label>
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
<asp:HiddenField ID="hdd_horometro" runat="server" />
<asp:HiddenField ID='hddEstadoFormulario' runat='server' Value='<%# samm_logica.enu_estadoFormulario.buscar %>' />
<boc:bocadillo ID="Bocadillo" runat="server" />
