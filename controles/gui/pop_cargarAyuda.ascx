<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_cargarAyuda.ascx.vb"
Inherits="website.samm_componentes.controles_gui_pop_cargarAyuda" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<table cellpadding="0" cellspacing="0" class="tbl_marcoFormulario">
<tr runat="server" class="lbl_titulo1">
<td colspan="2">
<asp:Label ID="Label1" runat="server" CssClass="lbl_titulo1"></asp:Label>
</td>
</tr>
<tr id="trCargar" runat="server">
<td>
<asp:FileUpload ID="fulNuevoArchivo" runat="server" CssClass="ful" />
</td>
<td style="padding: 2px;">
<cc1:BotonImagen ID="ibtAceptar" runat="server" ImageUrl="../../images/botones/aceptar.png">
</cc1:BotonImagen><br />
</td>
</tr>
<tr>
<td colspan="2">
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
<tr>
<td colspan="2">
<asp:GridView ID="grvArchivos" runat="server" AutoGenerateColumns="False" EmptyDataText="<%$Resources:res_mensajes,grillaVacia %>">
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<Columns>
<asp:HyperLinkField DataNavigateUrlFields="link" DataTextField="archivo" Target="_blank" />
<asp:TemplateField HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
<ItemTemplate>
<asp:Label ID="lbl_id" runat="server" Text='<%#eval("archivo") %>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField ShowHeader="False">
<ItemTemplate>
<asp:ImageButton ID="imbEliminar" runat="server" CausesValidation="False" CommandName="Delete"
ImageUrl="~/images/iconos/eliminar.gif" />
<asp:Image ID="imbPrincipal" runat="server" ImageUrl="~/images/iconos/archivoPrincipal.jpg"
Visible="false" />
</ItemTemplate>
</asp:TemplateField>
<asp:CommandField ButtonType="Image" ShowSelectButton="True" SelectImageUrl="~/images/botones/seleccionarGrilla.gif" />
</Columns>
</asp:GridView>
</td>
</tr>
</table>
&nbsp; 