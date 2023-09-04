<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_buscarXEquipo.ascx.vb"
Inherits="website.samm_componentes.controles_doc_pop_buscarXEquipo" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>

<tr>
<td style="height: 21px">
<asp:Label ID="lbl_tercero" runat="server" Text="<%$Resources: res_metadata,ter_tercero_tercero %>"></asp:Label>:
</td>
<td style="height: 21px">
<uc1:busquedaAvanzada ID="bus_tercero" runat="server" a_str_tabla="ter_tercero" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_sucursal" runat="server" Text="<%$Resources: res_metadata,ter_contacto_sucursal_id_sucursal %>"></asp:Label>
</td>
<td>
<uc1:busquedaAvanzada ID="bus_sucursal" runat="server" a_str_tabla="ter_sucursal" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_equipo" runat="server" Text="<%$Resources: res_metadata,equ_equipoatributo_id_equipo %>"></asp:Label>
</td>
<td>
<uc1:busquedaAvanzada ID="bus_equipo" runat="server" a_str_tabla="equ_equipo" />
</td>
</tr>
<tr>
<td>
&nbsp;
</td>
<td>
<cc1:BotonImagen ID="btiAceptar" runat="server" ImageUrl="~/images/botones/aceptar.png"
ValidationGroup="pop_buscar"></cc1:BotonImagen>
</td>
</tr>
</table>
