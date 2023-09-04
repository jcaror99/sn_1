<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_movimientos.ascx.vb"
Inherits="website.samm_componentes.controles_equ_inc_movimientos" %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register assembly="controles" namespace="controles" tagprefix="cc1" %>
<table>
<tr>
<td style="text-align:left">
<cc1:BotonImagen ID="btnNuevo" runat="server" ImageUrl="../../images/botones/agregar.gif" />
<cc1:BotonImagen ID="btnEditar" runat="server" ImageUrl="../../images/botones/editar.gif" />
</td>
</tr>
<tr>
<td>
<asp:GridView ID="grd_movimientos" runat="server" AutoGenerateColumns="False">
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<Columns>
<asp:BoundField DataField="idTraza" Visible="false" />
<asp:TemplateField>
<ItemTemplate>
<asp:HyperLink ID="lnk_numTrazas" runat="server" CssClass ="lnk" Text='<%# Eval("numTrazas") %>'></asp:HyperLink>
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="fecha" />
<asp:BoundField DataField="origen" />                    
<asp:TemplateField>
<ItemTemplate>
<asp:Label ID="lbl_origen" runat="server" Text='<%# Eval("equOrigenCorto") %>' ToolTip='<%# Eval("equipo") %>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="destino" />
<asp:TemplateField>
<ItemTemplate>
<asp:Label ID="lbl_destino" runat="server" Text='<%# Eval("equDestinoCorto") %>' ToolTip='<%# Eval("equipoDestino") %>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField>
<ItemTemplate>
<asp:HyperLink ID="lnk_doc" runat="server" CssClass ="lnk" Text='<%# Eval("documento") %>'></asp:HyperLink>
</ItemTemplate>
</asp:TemplateField>

<asp:CommandField ButtonType="Button" ShowSelectButton="True">
<HeaderStyle CssClass="invisible" />
<ItemStyle CssClass="invisible" />
<ControlStyle CssClass="invisible" />
</asp:CommandField>
</Columns>
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
</asp:GridView>
</td>
</tr>
</table>
<boc:bocadillo ID="Bocadillo" runat="server" />