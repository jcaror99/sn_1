<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_evaluaciones.ascx.vb"
Inherits="website.samm_componentes.controles_doc_inc_evaluaciones" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<table>
<tr align='center' valign='middle'>
<td valign= 'middle' >
<asp:Label ID="lbl_check" runat="server" CssClass="lbl" Text="<%$ Resources:res_metadata,doc_evaluacion_evaluacion %>"></asp:Label>
</td>
<td valign='middle' >
<uc1:busquedaAvanzada ID="bus_evaluacion" runat="server" a_bol_postBack="true" a_str_tabla="doc_evaluacion"
a_str_grupoValidacion="eval" a_bln_obligatorio="True"></uc1:busquedaAvanzada>
</td>
<td valign='middle' >
<asp:Label ID="Label2" runat="server" CssClass="lbl" Text="<%$ Resources:res_metadata,doc_documento_evaluacion_fechaencuesta_ff %>"></asp:Label>
</td>
<td valign='middle' >
<uc1:fechaAvanzada ID="fecFecha" runat="server" a_bln_obligatorio="true" a_str_grupoValidacion="eval"
a_str_prefijo="ff" />
</td>
<td valign='middle'  >
<asp:Label ID="Label3"  runat="server" CssClass="lbl" Text="<%$ Resources:res_metadata,doc_documento_evaluacion_personaencuestada %>"></asp:Label>
</td>
<td valign='middle' >
<asp:TextBox ID="txtPersonaEncuestada" runat="server" CssClass="txt"></asp:TextBox>
</td>
</tr>
</table>
<table>
<tr>
<td>
<asp:DataList ID="dtlDatos" runat="server" ShowHeader="False">
<ItemTemplate>
<asp:Label ID="lbl_id"  runat="server" Visible="false" Text='<%#Eval("id") %>'></asp:Label>
<table style="width: 100%">
<tr>
<td>
<asp:Label ID="Label1" runat="server" Text='<%#Eval("pregunta") %>' CssClass="lbl"></asp:Label>
</td>
</tr>
<tr>
<td>
<asp:RadioButtonList ID="rblOpciones" runat="server" RepeatDirection="Vertical"
RepeatLayout="Flow" CssClass="rbl_opciones">
</asp:RadioButtonList>
</td>
</tr>
</table>
</ItemTemplate>
</asp:DataList>
</td>
</tr>
<tr>
<td><asp:Label ID="lbl_observaciones" runat ="server" Text="Observaciones" CssClass="lbl" ></asp:Label></td>
</tr>
<tr>
<td><txt:textoAvanzado ID ="tbox_observaciones" runat="server" CssClass="txt_formulario" ></txt:textoAvanzado></td>
</tr>
<tr><td></td></tr>
<tr><td><asp:Label ID="lbl_RealizarEncuestaLink" runat ="server" Text="Realizar evaluación OT" CssClass="lbl"></asp:Label></td>
</tr>
<tr><td></td></tr>
<tr>
<td style="padding-left: 100px">
<cc1:BotonImagen ID="btiAceptar" runat="server" ImageUrl="../../images/botones/aceptar.png"
ValidationGroup="eval"></cc1:BotonImagen>
</td>
</tr>
<tr>
<td style="padding-left: 100px">
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
</table>
