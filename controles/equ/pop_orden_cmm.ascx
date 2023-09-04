<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_orden_cmm.ascx.vb"
Inherits="website.samm_componentes.controles_equ_pop_orden_cmm" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
<tr>
<td>
<asp:Label ID="Label1" runat="server" Text="<%$ Resources:res_etiquetas_equ,cmmgeneral %>"></asp:Label>
</td>
<td>
</tr>
<tr>
<td colspan="3">
<asp:GridView ID="grd_campos" runat="server" AutoGenerateColumns="False">
<Columns>
<asp:TemplateField HeaderText="Posicion">
<ItemTemplate>
<asp:HiddenField ID="hid_valor" runat="server" Value='<%# eval("valor") %>' />
<asp:HiddenField ID="hid_campo" runat="server" Value='<%# eval("campo") %>' />
<asp:CheckBox ID="chk_mostrar" runat="server" /><asp:TextBox ID="txt_orden" runat="server"
CssClass="txt" Columns="5" Enabled="false"></asp:TextBox>
<act:filteredtextboxextender id="ftb_orden" runat="server" targetcontrolid="txt_orden"
filtertype="Numbers,Custom"></act:filteredtextboxextender>
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="campo" HeaderText="Campos" />
</Columns>
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
</asp:GridView>
</td>
</tr>
<tr>
<td>
<asp:RadioButtonList ID="rdb_aplicar" runat="server" Visible="true">
</asp:RadioButtonList>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_Preview" runat="server" CssClass="lbl" Text="Vista Previa"></asp:Label><cc1:BotonImagen
ID="bti_vistaPrevia" runat="server" ImageUrl="~/images/botones/vistaPrevia.gif"
ValidationGroup="pop_orden_cmm" />
</td>
</tr>
<tr>
<td>
<cc1:BotonImagen ID="btiAceptar" runat="server" ImageUrl="~/images/botones/aceptar.png"
ValidationGroup="pop_orden_cmm" />
</td>
<td>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lblMensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
<td>
</td>
</tr>
</table>
