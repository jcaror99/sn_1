<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="ort_actividades.ascx.vb"
Inherits="website.samm_componentes.controles_ort_ort_actividades" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
TagPrefix="uc3" %>
<table cellpadding="0" cellspacing="0">
<tr>
<td class="tbl_marcoFormulario">
<asp:RadioButtonList ID="rblFiltroActividades" runat="server" RepeatDirection="Horizontal"
RepeatLayout="Flow" AutoPostBack="True" CssClass="rbl">
<asp:ListItem Text="<%$Resources:res_etiquetas_ort,actPlaneadas %>" Value="1"></asp:ListItem>
<asp:ListItem Text="<%$Resources:res_etiquetas_ort,actTempario %>" Value="2"></asp:ListItem>
<asp:ListItem Text="<%$Resources:res_etiquetas_ort,actTodas %>" Value="0"></asp:ListItem>
</asp:RadioButtonList>
</td>
</tr>
<tr>
<td>
<div id="Div1" runat="server" style="width: 100%; border: black; max-height: 300px;
overflow: auto; border: 1px solid #FFFFFF">
<table>
<tr>
<td>
<asp:TreeView ID="trv_temparios" runat="server" ShowCheckBoxes="All" CssClass='trv' 
LineImagesFolder="../../images/treelineimages" ShowLines="True">
</asp:TreeView>
</td>
</tr>
<tr>
<td>
<asp:TreeView ID="trv_items" runat="server" ShowCheckBoxes="All" CssClass='trv' 
LineImagesFolder="../../images/treelineimages" ShowLines="True">
</asp:TreeView>
</td>
</tr>
<tr>
<td>
<asp:HiddenField ID="hdd_actividadDefectoID" runat="server" />
<asp:Label ID="lbl_actividadDefecto" runat="server" CssClass="lbl" Text=""></asp:Label>
</td>
</tr>
<tr>
<td>
<cc1:BotonImagen ID="bti_agregar" runat="server" Visible = "false" CausesValidation="False" ImageUrl="~/images/botones/ort_actividades.gif">
</cc1:BotonImagen>
</td>
</tr>
<tr>
<td class="tbl_marcoFormulario">
<uc3:busquedaAvanzadaMultiple ID="busActividades" runat="server" a_str_tabla="cat_catalogo.actividad"
a_str_campo="catalogo.actividad,cat_catalogo_actividad_codigoInventario" a_bln_obligatorio="False" />
</td>
</tr>
</table>
</div>
</td>
</tr>
</table>
