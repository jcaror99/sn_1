<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_resumenEquipo.ascx.vb" Inherits="website.samm_componentes.controles_equ_inc_resumenEquipo" %>
<table>
<tr>
<td>
<asp:GridView ID="grd" runat="server" AutoGenerateColumns="false" BorderStyle="None" GridLines="None" CellPadding="5">
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="" />
<AlternatingRowStyle CssClass="" BackColor="White" />
<Columns>
<asp:CommandField ButtonType="Button" ShowSelectButton="True" HeaderStyle-CssClass="invisible"
                                ItemStyle-CssClass="invisible" ControlStyle-CssClass="invisible" />
<asp:TemplateField ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="left">
<ItemTemplate>
<asp:Label ID="lbl_descripcion" runat= "server" Text='<%# eval("descripcion") %>' CssClass="lbl" ></asp:Label> 
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="right">
<ItemTemplate>
<asp:Label ID="lbl_valor" runat= "server" Text='<%# eval("dato") %>' CssClass="lbl"></asp:Label> 
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
</td>
</tr>
</table> 
