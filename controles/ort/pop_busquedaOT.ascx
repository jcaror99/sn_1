<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_busquedaOT.ascx.vb" Inherits="website.samm_componentes.controles_ort_pop_busquedaOT" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register TagName="grilla" Src="~/controles/general/grilla.ascx" TagPrefix="gri" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
<asp:Panel ID="pnl_filtros" runat ="server">
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_documentoOT' runat='server' CssClass='lbl'></asp:Label></td>
<td class='td_controlesFormulario'>
<table >
<tr>
<td>
<asp:textbox ID='txt_prefijoOT' runat ='server' CssClass ='lbl' Width=85px ></asp:textbox>
</td>
<td>
<asp:textbox ID='txt_documentoOT' runat='server' CssClass='lbl' Width=40px ></asp:textbox>
</td>
</tr>
</table>
</td>
<act:filteredtextboxextender id='ftb_documentoOT' runat='server' targetcontrolid='txt_documentoOT' filtertype='Numbers' />
<td>
</td>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_tercero_cliente' runat='server' CssClass='lbl'></asp:Label></td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tercero_cliente' runat='server' a_str_tabla='ter_tercero'
  />
</td>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_sucursal' runat='server' CssClass='lbl'></asp:Label></td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_sucursal' runat='server' a_str_tabla='ter_sucursal'
  />
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
<fec:fechaAvanzada ID='fec_fecha_fh' runat='server' a_str_prefijo='fh'  a_bln_obligatorio ="false" >
</fec:fechaAvanzada>
</td>
</tr>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fecha_fh_bus' runat='server' a_str_prefijo='fh' CssClass="txt_fecha_bus" CssClassHora="txt_hora_bus" a_bln_obligatorio ="false"></fec:fechaAvanzada>
</td>
</tr>
</table>
</td>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_tipoServicio' runat='server' CssClass='lbl'></asp:Label></td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tipoServicio' runat='server' a_str_tabla='gen_tipoServicio'
  />
</td>
</tr>
<tr>
<td colspan="11" align ="center" >
<cc1:botonimagen id="btiAceptar" runat="server" imageurl="~/images/botones/aceptar.png" CausesValidation="false" ></cc1:botonimagen>
</td>
</tr>
</asp:Panel>
</table>
<table>
<tr>
<td colspan="3"  >
<div id="div_grilla" class="div_grillaBusquedaAvanzada" runat="server" style="display:none "   >
<gri:grilla ID="grilla" runat="server" a_bln_paginacionNormal="true" />
</div>
</td>
</tr>
<tr>
<td  colspan="3" >
<asp:Label ID="lbl_mensaje" runat="server" CssClass='lbl' ></asp:Label>
</td> 
</tr>
</table>
