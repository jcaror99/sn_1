<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_crearVisita.ascx.vb"
Inherits="website.samm_componentes.controles_cnt_pop_crearVisita" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="Label2" runat="server" Text='<%$Resources:res_metadata,equ_equipo_equipo %>'
CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID="bus_equipo" runat="server" a_str_tabla="equ_equipo" a_bln_obligatorio="true"
a_bol_postBack="true" a_str_grupoValidacion="e" a_str_campo="equipo,equipo_serial" />
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="Label1" runat="server" Text='<%$Resources:res_metadata,cat_catalogo_tempario_catalogo_tempario %>'
CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID="bus_tempario" runat="server" a_str_tabla="cat_catalogo.tempario"
a_bln_obligatorio="true" a_str_grupoValidacion="e" />
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="Label4" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:CheckBox ID="chb_mostrarTodo" runat="server" AutoPostBack="true" />
</td>
</tr>
<tr>
<td class="td_lblFormulario">
<asp:Label ID="lbl_ajustarManuales" runat="server" CssClass="lbl"></asp:Label>
</td>
<td style="white-space: nowrap;">
<asp:RadioButtonList ID="rbl_ajustarManuales" runat="server" CssClass="rbl" RepeatDirection='Horizontal'
RepeatLayout='Flow'>
<asp:ListItem Value='0'></asp:ListItem>
<asp:ListItem Value='1'></asp:ListItem>
</asp:RadioButtonList>
<asp:RequiredFieldValidator ID="rfv_ajustarManuales" runat="server" ControlToValidate="rbl_ajustarManuales" CssClass="lbl_mensaje"
ForeColor="" ValidationGroup="e">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td></td>
<td>
<table ID="tblhorometro" runat="server">
<tr>
<td class="td_lblFormulario">
<asp:Label ID="lbl_horometro_h" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,equ_equipo_horometroactual %>"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:TextBox ID="txt_horometro" runat="server" CssClass="txt_numero"></asp:TextBox>
<%--<asp:RequiredFieldValidator ID="rfv_horometro" runat="server" ControlToValidate="txt_horometro" CssClass="lbl_mensaje"
ForeColor="" ValidationGroup="e">*</asp:RequiredFieldValidator>--%>
<act:filteredtextboxextender id="ftb_horometro" runat="server" filtertype="Numbers,Custom" targetcontrolid="txt_horometro"></act:filteredtextboxextender>
</td>
</tr>
</table>
<table ID="tblFecha" runat="server">
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="Label3" runat="server" Text='<%$Resources:res_metadata,cnt_visitafija_fecha_ff %>'
CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc2:fechaAvanzada ID="fec_fecha" runat="server" a_bln_obligatorio="false" a_str_grupoValidacion="e"
a_str_prefijo="ff" />
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="text-align: center">
<cc1:BotonImagen ID="bti_guardar" runat="server" ImageUrl="~/images/botones/aceptar.jpg"
ValidationGroup="e" /><asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='e'
CssClass='lbl_mensaje' ForeColor='' HeaderText='<%$Resources:res_mensajes,camposObligatorios %>' />
</td>
</tr>
<tr>
<td colspan="2" align="center">
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
</table>
