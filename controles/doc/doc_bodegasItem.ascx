<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="doc_bodegasItem.ascx.vb" Inherits="website.samm_componentes.controles_doc_doc_bodegasItem" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>

<table style="padding: 10px; "><tr><td>

<asp:label ID="lbl_bodegas" runat="server" CssClass ="gri_titulo" Text='<%$Resources:res_campoGrilla,gen_bodega_bodega %>'>
</asp:label>

<asp:DropDownList ID="drp_bodegas" runat="server" CssClass ="drp" CausesValidation ="true" ValidationGroup="bodega">
</asp:DropDownList>
<asp:RequiredFieldValidator ID="rfv_bodegas" runat="server" ControlToValidate="drp_bodega" ValidationGroup="bodega" CssClass="lbl_mensaje" ForeColor='' Visible="false" >*
</asp:RequiredFieldValidator>
<asp:GridView ID="grd_bodegas" runat="server" AutoGenerateColumns="False">

<Columns>
<asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,cat_catalogo_catalogo %>'>
<ItemTemplate>
<asp:Label ID="lbl_catalogo" runat="server" CssClass="lbl" Text='<%# eval("catalogo") %>'>
</asp:Label>
<asp:Label ID="lbl_id" runat="server" CssClass="lbl" Text='<%# eval("id") %>' Visible="false">
</asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,gen_bodega_bodega %>'>
<ItemTemplate>
<asp:DropDownList ID="drp_bodega" runat="server" CssClass='drp' CausesValidation="true" ValidationGroup="bodega">
</asp:DropDownList>
<asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="drp_bodega" ValidationGroup="bodega" CssClass="lbl_mensaje" ForeColor='' Visible="false" >*
</asp:RequiredFieldValidator>
</ItemTemplate> 
</asp:TemplateField> 
</Columns>
<FooterStyle CssClass="gri_pie" /><RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" /><HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" /><SelectedRowStyle CssClass="gri_itemSeleccionado" />
</asp:GridView>
</td></tr><tr><td>
<bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg" ValidationGroup="bodega" /><br />
<asp:ValidationSummary ID="vds" runat="server" HeaderText='<%$Resources:res_mensajes,camposObligatorios %>' ValidationGroup="bodega" />
<br />
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label></td></tr>
</table>
