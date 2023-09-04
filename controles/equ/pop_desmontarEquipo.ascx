<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_desmontarEquipo.ascx.vb"
Inherits="website.samm_componentes.controles_equ_pop_desmontarEquipo" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register src="pop_montarEquipo.ascx" tagname="pop_montarEquipo" tagprefix="uc1" %>
<table>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lblEquipoDesmontar" runat="server" Text='<%$Resources:res_metadata,equ_equipo_equipo %>'
CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario' colspan="4">
<asp:Label ID="lbl_equipoDesmontar" runat="server" CssClass="lnk"></asp:Label>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_montadoEn" runat="server" Text='' CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario' colspan="4">
<asp:Label ID="lblEquipoPadre" runat="server" CssClass="lnk"></asp:Label>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_ot" runat="server" Text='<%$Resources:res_metadata,doc_documento_ot_documento_ot %>'
CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario' colspan="4">
<bus:busquedaAvanzada ID="bus_ot" runat="server" a_bol_postBack="true" a_str_tabla="doc_documento.ot"
CssClass="" a_str_campo="doc_documento_ot_documento_numero,documento.ot" a_str_filtros="doc_documento_ot_doc_estadotipodocumento_estadotipodocumento_codigo not in ('CER','NUE','CAN')" />
</td>
</tr>
<tr runat="server" id="tr_horometro">
<td class='td_lblFormulario'>
<asp:Label ID='lbl_horometroActual' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_horometroActual' runat='server' CssClass='txt_numero'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_horometroActual' runat='server' ControlToValidate='txt_horometroActual'
ValidationGroup="horo" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
id='ftb_horometroActual' runat='server' targetcontrolid='txt_horometroActual'
filtertype='Numbers,Custom' />
</td>
<td>
<asp:Label ID='lbl_ultimaLectura_fh' runat='server' CssClass='lbl'></asp:Label>
</td>
<td>
<fec:fechaAvanzada ID='fec_ultimaLectura_fh' runat='server' a_str_prefijo='fh' a_bln_obligatorio='true'
a_str_grupoValidacion="horo"></fec:fechaAvanzada>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_notas" runat="server" CssClass="lbl" Text='<% $Resources:res_metadata,doc_documento_estadotipodocumento_notas %>'></asp:Label>
</td>
<td colspan="4">
<asp:TextBox ID="txt_notas" runat="server" CssClass="txt_multilinea" TextMode="MultiLine"></asp:TextBox>
</td>
</tr>
<tr><td colspan="5"><hr /></td></tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_movera' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario' style="text-align: right">
<asp:Label ID='lbl_id_tercero' runat='server' CssClass='lbl'></asp:Label>
</td>
<td>
<bus:busquedaavanzada id='bus_tercero' runat='server' a_str_tabla='ter_tercero'
a_bln_obligatorio='True' a_str_grupovalidacion='form' a_bol_postback="true" />
</td>
<td>
<asp:Label ID='lbl_id_sucursal' runat='server' CssClass='lbl'></asp:Label>
</td>
<td>
<bus:busquedaavanzada id='bus_sucursal' runat='server' a_str_tabla='ter_sucursal'
a_bln_obligatorio='True' a_str_grupovalidacion='form' />
</td>
</tr>
<tr>
<td colspan="5">
<cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="~/images/botones/aceptar.jpg"
ValidationGroup="horo" /><asp:Label ID="lbl_mensaje" runat="server"
CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
</table>
<table>
<tr>
<td>
<asp:Label ID='lbl_montarOtro' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
<uc1:pop_montarEquipo ID="pop_montarEquipo1" runat="server" Visible="false" />
</td>
</tr>
</table>
