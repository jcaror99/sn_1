<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_equipos.ascx.vb"
Inherits="website.samm_componentes.controles_dis_inc_equipos" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_equipo" runat="server" Text='<%$Resources:res_metadata,equ_equipo_equipo %>'
CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario' style="white-space:nowrap;">
<uc1:busquedaAvanzada ID="bus_equipo" runat="server" a_bol_postBack="true" a_str_tabla="equ_equipo" />
</td>
<td>
<asp:CheckBox ID="chb_noObra" runat="server" CssClass="lbl" Checked="true" />
</td>
</tr>
<tr>
<td align="center" colspan="3">
<cc1:BotonImagen ID="bti_eliminar" runat="server" CausesValidation="False" ImageUrl="~/images/botones/quitar.gif" /><cc1:BotonImagen
ID="bti_actualizar" runat="server" CausesValidation="False" ImageUrl="~/images/botones/actualizar.gif" />
</td>
</tr>
<tr>
<td align="center" colspan="3">
<asp:GridView ID="grd_equipos" runat="server" AutoGenerateColumns="False">
<Columns>
<asp:CommandField ShowSelectButton="True" ItemStyle-CssClass="invisible" HeaderStyle-CssClass="invisible" />
<asp:TemplateField HeaderText="id">
<ItemTemplate>
<asp:Label ID="lbl_id" runat="server" Text='<%#Eval("id")%>' CssClass="lbl"></asp:Label></td></ItemTemplate>
<ItemStyle CssClass="invisible" />
<HeaderStyle CssClass="invisible" />
</asp:TemplateField>
<asp:BoundField HeaderText='<%$ Resources:res_campoGrilla,equ_equipo_equipo %>' DataField="equipo" />
<asp:BoundField HeaderText='<%$ Resources:res_campoGrilla,equ_equipo_equipo_serial %>'
DataField="serial" />
<asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,dis_obra_equipo_promedioesperado %>'>
<ItemTemplate>
<asp:TextBox ID="txt_horas" runat="server" CssClass='txt_numero' Text='<%# eval("horas")%>'
ValidationGroup="horas"></asp:TextBox><asp:RequiredFieldValidator ID="rfv_horas"
runat="server" ControlToValidate="txt_horas" CssClass="lbl_mensje" ValidationGroup="horas">*</asp:RequiredFieldValidator><act:filteredtextboxextender
id='ftb_horas' runat='server' targetcontrolid='txt_horas' filtertype='Numbers,Custom' />
</ItemTemplate>
</asp:TemplateField>
</Columns>
<RowStyle CssClass="gri_item" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
</asp:GridView>
</td>
</tr>
<tr>
<td align="center" colspan="3">
<cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
ValidationGroup="horas" />
</td>
</tr>
</table>
