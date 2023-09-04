<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_busquedaOtReportar.ascx.vb" Inherits="website.samm_componentes.controles_ort_pop_busquedaOtReportar" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_tercero_cliente' runat='server' CssClass='lbl'></asp:Label></td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tercero_cliente' runat='server' a_str_tabla='ter_tercero'
  />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_sucursal' runat='server' CssClass='lbl'></asp:Label></td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_sucursal' runat='server' a_str_tabla='ter_sucursal'
  />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_tipoServicio' runat='server' CssClass='lbl'></asp:Label></td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tipoServicio' runat='server' a_str_tabla='gen_tipoServicio'
  />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_zona' runat='server' CssClass='lbl'></asp:Label></td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_zona' runat='server' a_str_tabla='gen_zona'  />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_subtipoDocumento' runat='server' CssClass='lbl'></asp:Label></td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_subtipoDocumento' runat='server' a_str_tabla='doc_subtipoDocumento'
 a_str_filtros="id_tipoDocumento=2" />
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
<asp:Label ID='lbl_fecha_fh' runat='server' CssClass='lbl'></asp:Label></td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_fecha_fh_busDesde' runat='server' CssClass='lbl'></asp:Label></td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_fecha_fh_busA' runat='server' CssClass='lbl'></asp:Label></td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fecha_fh' runat='server' a_str_prefijo='fh'   a_str_grupoValidacion='form'>
</fec:fechaAvanzada>
</td>
</tr>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fecha_fh_bus' runat='server' a_str_prefijo='fh' CssClass="txt_fecha_bus" CssClassHora="txt_hora_bus"></fec:fechaAvanzada>
</td>
</tr>
</table>
</td>
<td>
</td>
</tr>
<tr>
<td>
&nbsp;</td>
<td>
<cc1:botonimagen id="btiAceptar" runat="server" imageurl="~/images/botones/aceptar.png" ValidationGroup="pop_buscar"></cc1:botonimagen></td>
</tr>
</table>
