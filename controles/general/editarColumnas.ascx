<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="editarColumnas.ascx.vb" Inherits="website.samm_controles.controles_general_editarColumnas" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table id="tbl_formulario" runat="server" border="0" cellpadding="0" cellspacing="0" class="tbl_formulario">
<tr id="trBarraTitulo" runat="server" class="tr_tituloPopup">
<td>
</td>
<td>
<asp:Label ID="lbl_tituloPopup" runat="server" CssClass="lbl_titulo" Text="<%$ Resources:res_etiquetas,editarColumnas %>"></asp:Label><br /></td>

<td style="text-align: right">
</td>
</tr>
<tr>
<td colspan="3">
<asp:GridView ID="grd_columnas" runat="server" AutoGenerateColumns="False">
<Columns>
<asp:TemplateField HeaderText="Posicion">
<ItemTemplate>
<asp:label ID="lbl_n_col" runat="server" Text='<%# eval("n_columna") %>' cssclass="invisible"></asp:label>
<asp:DropDownList ID="drp_posicion" runat="server">
</asp:DropDownList>
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="columna" HeaderText="Columna" />
<asp:BoundField DataField="posicionActual" HeaderText="Posicion Actual" />
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
<td colspan="3">
<bti:botonimagen id="imb_aceptar" runat="server" causesvalidation="false" cssclass="imb"
imageurl="../../images/botones/aceptar.png"></bti:botonimagen>
<asp:Label ID="lbl_ocultarTodos" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
</table>
