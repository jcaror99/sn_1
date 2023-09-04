<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_usuariosGrupo.ascx.vb"
Inherits="website.samm_componentes.controles_seguridad_inc_usuariosGrupo" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<table>
<tr>
<td >
<asp:Label CssClass="lbl" ID="Label1" runat="server" Text="<%$Resources:res_metadata,seg_usuario_accesoactivo %>"></asp:Label>
</td><td >
<asp:RadioButtonList ID="rbl_activo" runat="server" RepeatDirection="Horizontal"
RepeatLayout="Flow" AutoPostBack=true>
<asp:ListItem Value="1" Selected=true Text='<%$Resources:res_etiquetas, si %>'></asp:ListItem>
<asp:ListItem Value="0" Text='<%$Resources:res_etiquetas, no %>'></asp:ListItem>
</asp:RadioButtonList>
</td>
<td style="padding-left:10px;">
<asp:Label CssClass="lbl" ID="Label2" runat="server" Text='<%$Resources:res_metadata,seg_cargo_cargo %>'>"></asp:Label>
</td>
<td>
<uc1:busquedaAvanzada ID="bus_cargo" runat="server" a_bol_postBack="True" a_str_tabla="seg_cargo" a_str_filtros="esTecnico=1" />
</td>
<td></td>
</tr>
<tr>
<td colspan="5">
<hr />
<asp:CheckBoxList ID="cbl_usuarios" runat="server" CssClass="cbl" RepeatColumns="2">
</asp:CheckBoxList>
</td>
</tr>
<tr>
<td colspan="5">
<bti:BotonImagen ID="btn_guardar" runat="server" CssClass="imb" ImageUrl="~/images/botones/aceptar.png" />
</td>
</tr>
</table>
