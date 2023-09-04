<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="ort_actividadesProgramadas.ascx.vb" Inherits="website.samm_componentes.controles_ort_ort_actividadesProgramadas" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
TagPrefix="uc3" %>
<table cellpadding="0" cellspacing="0">
<tr>
<td>
<table>
<tr>
<td>
<asp:Label id="lbl_nueActividad" runat="server" ></asp:Label> </td>
</td>
<td>
<asp:LinkButton ID="bti_actualizar" runat="server" Text="$$$Actualizar" CausesValidation="false" CssClass="lnk" />
</td>
</tr>
</table>
<td>
</td>
<td></td>
</tr>
<tr><td colspan="3">
<div id="Div1" runat="server" style="width: 100%; border: black; max-height: 3000px; max-width: 3000px; 
overflow: auto; border: 1px solid #FFFFFF; overflow-x: hidden;">
<table>
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
</table>
</div>
</td></tr>
</table>