<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_resumenTempario.ascx.vb" Inherits="website.samm_componentes.controles_cat_inc_resumenTempario" %>
<table>
<tr>
<asp:Label  ID ="lbl_mensaje" runat="server" Height="20px"></asp:Label>
<td>
<asp:GridView ID="grd" runat="server" AutoGenerateColumns="false" 
        BorderStyle="None" GridLines="None" CellPadding="5" Height="93px" Width="242px">
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="" />
<AlternatingRowStyle CssClass="" BackColor="White" />
<Columns>

<asp:TemplateField ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="left">
<ItemTemplate>
<asp:Label ID="lbl_descripcion" runat= "server" Text='<%# eval("descripcion") %>' CssClass="lbl" ></asp:Label> 
</ItemTemplate>

<ItemStyle HorizontalAlign="Left" VerticalAlign="Middle"></ItemStyle>
</asp:TemplateField>
<asp:TemplateField ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="right">
<ItemTemplate>
<asp:Label ID="lbl_valor" runat= "server" Text='<%# eval("dato") %>' CssClass="lbl"></asp:Label> 
</ItemTemplate>

<ItemStyle HorizontalAlign="Right" VerticalAlign="Middle"></ItemStyle>
</asp:TemplateField>
</Columns>
</asp:GridView>
</td>
</tr>
</table> 