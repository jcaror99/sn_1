<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_montarEquipo.ascx.vb"
Inherits="website.samm_componentes.controles_equ_pop_montarEquipo" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
TagPrefix="bus" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table class="tbl_formulario">
<tr>
<td class='td_lblFormulario' style="white-space: nowrap">
<asp:Label ID="Label3" runat="server" CssClass="lbl" 
        Text="<%$Resources:res_metadata, ter_sucursal_sucursal%>"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID="bus_sucursal" runat="server" a_str_tabla="ter_sucursal" 
        a_bol_postBack="true" a_bol_omitirRecursividad="true" 
        a_str_filtros='' />
</td>
<td>
    &nbsp;</td>
</tr>
<tr>
<td class='td_lblFormulario' style="white-space: nowrap">
<asp:Label ID="Label1" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata, equ_equipo_equipo%>"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID="bus_equipo" runat="server" a_str_tabla="equ_equipo" a_bol_postBack="true"
a_bol_omitirRecursividad="true" a_str_filtros='<%# "cat_catalogo_equipo_id_subtipoCatalogo=" & samm_logica.enu_subTipoCatalogo.Componentes  %>' />
<asp:Label ID="lbl_equipoMontado" runat="server" CssClass="lnk"></asp:Label>
</td>
<td>
</td>
</tr>
<tr>
<td class='td_lblFormulario' style="white-space: nowrap">   
<asp:Label ID="lbl_posicion" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID="bus_posicion" runat="server" a_str_tabla="cat_posicion" a_bln_obligatorio="false" a_str_grupoValidacion="mntEqu"   />
</td>
<td>
</td>
</tr>
<tr>
<td>
</td>
<td>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
<td>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lblSistema" runat="server" CssClass="lbl" 
Text="<%$ Resources:res_metadata, cat_sistema_sistema %>"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID="bus_sistema" runat="server" a_str_tabla="cat_sistema" a_bol_postBack="false" />
</td>
<td>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lblHorometro" runat="server" Text="<%$ Resources:res_metadata,equ_trazabilidad_horometro %>"
CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID="txtHorometro" runat="server" CssClass="txt_numero"></asp:TextBox><act:filteredtextboxextender
id='ftb_horometro' runat='server' targetcontrolid='txtHorometro' filtertype='Numbers,Custom' />
</td>
<td class='td_lblFormulario'>
<asp:Label ID="Label2" runat="server" CssClass="lbl" Text="<%$Resources:res_etiquetas, fecha%>"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc2:fechaAvanzada ID="fec_fecha" runat="server" />
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_horometroFuturo" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID="txt_horometroFuturo" runat="server" CssClass="txt_numero"></asp:TextBox>
<act:filteredtextboxextender id='ftb_horometroFuturo' runat='server' targetcontrolid='txt_horometroFuturo'
filtertype='Numbers,Custom' />
</td>
<td>
</td>
</tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_promedio" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID="txt_promedio" runat="server" CssClass="txt_numero"></asp:TextBox>
<act:filteredtextboxextender id='ftb_promedio' runat='server' targetcontrolid='txt_promedio'
filtertype='Numbers,Custom' />
</td>
<td>
</td>
</tr>
<tr>
<td>
</td>
<td colspan="2">
<asp:CheckBox ID="chb_mostrarTodo" runat="server" AutoPostBack="true" />
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_tempario" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata, cat_catalogo_tempario_catalogo_tempario %>"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID="bus_tempario" runat="server" a_str_tabla="cat_catalogo.tempario"
a_bol_postBack="false" />
</td>
<td>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_notas" runat="server" CssClass="lbl" Text='<% $Resources:res_metadata,doc_documento_estadotipodocumento_notas %>'></asp:Label>
</td>
<td class='td_controlesFormulario' colspan="3">
<asp:TextBox ID="txt_notas" runat="server" CssClass="txt_multilinea" TextMode="MultiLine"></asp:TextBox>
</td>
<td>
</td>
</tr>
</table>
&nbsp;<cc1:BotonImagen ID="btiAgregar" runat="server" 
ImageUrl="~/images/botones/aceptar.jpg" ValidationGroup="mntEqu">
</cc1:BotonImagen>
