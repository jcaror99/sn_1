<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_copiarCotizacion.ascx.vb"
Inherits="website.samm_componentes.controles_doc_pop_copiarCotizacion" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="uc2" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label><table>
<tr>
<td valign="top">
<table runat="server" id="tbl_controles" class="tbl_marcoFormulario">
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_documento_numero' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_documento_numero_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_documento_numero_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_documento_numero' runat='server' CssClass='txt_entero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_documento_numero_bus' runat='server' CssClass='txt_entero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_documento_numero' runat='server' ControlToValidate='txt_documento_numero'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor=""
Enabled="False">*</asp:RequiredFieldValidator><act:filteredtextboxextender id='ftb_documento_numero'
runat='server' targetcontrolid='txt_documento_numero' filtertype='Numbers' />
<act:filteredtextboxextender id='ftb_documento_numero_bus' runat='server' targetcontrolid='txt_documento_numero_bus'
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
<fec:fechaAvanzada ID='fec_fecha_fh' runat='server' a_str_prefijo='fh' a_bln_obligatorio='true'>
</fec:fechaAvanzada>
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
<asp:Label ID='lbl_documento_cotizacion' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_documento_cotizacion' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_documento_cotizacion' runat='server' ControlToValidate='txt_documento_cotizacion'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
</table>
</td>
<td valign="top">
<table runat="server" id="tbl_controlesDerecha" class="tbl_marcoFormulario">
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_tercero_cliente' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tercero_cliente' runat='server' a_str_tabla='ter_tercero'
a_bln_obligatorio='True' />
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
a_bln_obligatorio='True' />
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
<bus:busquedaAvanzada ID='bus_equipo' runat='server' a_str_tabla='equ_equipo' a_bln_obligatorio='True' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
&nbsp;
</td>
<td class='td_lblFormulario'>
&nbsp;
</td>
<td class='td_controlesFormulario'>
<bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="false" ImageUrl="../../images/botones/aceptar.jpg" />
</td>
<td>
&nbsp;
</td>
</tr>
</table>
</td>
</tr>
</table>
<table runat="server" id="tbl_grilla" border="1">
<tr>
<td>
<uc2:grilla ID="gri_cotizaciones" runat="server" a_bln_paginacionNormal="true" />
</td>
</tr>
<tr>
<td>
<div id="div_trvDocumentos" runat="server" style="background-color: White;">
<table>
<tr>
<td>
<asp:CheckBox ID="chb_copiarValores" runat="server" CssClass="chb" Text="<%$Resources:res_etiquetas_doc,copiarValores %>"
Checked="true" Visible="False" />
<asp:CheckBox ID="chb_recalcular" runat="server" CssClass="chb"
Checked="true" Visible="False" />
</td>
</tr>
<tr>
<td>
<asp:TreeView ID="trv_documentos" runat="server" CssClass='trv' LineImagesFolder="../../images/treelineimages"
ShowLines="True" SkipLinkText="a" ShowCheckBoxes="all" Visible="False">
<SelectedNodeStyle CssClass="tre_seleccionado" />
<RootNodeStyle CssClass="tre_raiz" />
<NodeStyle CssClass="tre_nodo" />
</asp:TreeView>
</td>
<td valign="bottom">
&nbsp;
</td>
</tr>
<tr>
<td style="text-align: center">
<bti:BotonImagen ID="bti_agregarDocumento" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
CausesValidation="false" Visible="False" />
</td>
<td valign="bottom">
&nbsp;
</td>
</tr>
</table>
</div>
</td>
</tr>
</table>
