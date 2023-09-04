<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_gastos.ascx.vb" 
    Inherits="website.samm_componentes.controles_ort_inc_gastos" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple" TagPrefix="uc3" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Src='~/controles/general/popup.ascx' TagName='popup' TagPrefix='pop' %>    
    
<table id="tbl_gasto" class="tbl_marcoformulario"  runat="server">
<tr>
<td colspan="1">
<asp:Label ID="lbl_gasto" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
</td>
</tr>
<tr><td><asp:Label ID="lbl_gastos" runat="server" CssClass="lbl"></asp:Label></td>
<td><bus:busquedaAvanzada a_bln_obligatorio ="false"  ID="bus_gasto" runat="server" a_bol_postBack="true" a_str_tabla="gas_gasto" a_str_campo="gasto" />
</td></tr>
<tr>
<td>
<asp:Label ID="lbl_subtipo" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_subtipo" runat="server" a_bol_postBack="true" a_str_tabla="cat_subtipoCatalogo" a_str_campo="subtipocatalogo" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_otro" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_otro" runat="server" a_bol_postBack="true" a_str_tabla="cat_catalogo" a_str_campo="catalogo,codigoInventario" />
</td>
<td>
<bti:BotonImagen ID="bti_aprobar" runat="server" CssClass="imb" ImageUrl="../../images/botones/gas_aprobarGasto.gif" Visible ="true"   CausesValidation="false"/>
</td>
</tr>
<%--<tr>
<td>
<asp:Label ID="lbl_tecnicosGasto" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<asp:RadioButtonList ID="rbl_tecnicos" runat="server" RepeatDirection="Vertical">
</asp:RadioButtonList>
</td>
</tr>--%>
<tr>
<td colspan="2">
<asp:GridView ID="grd_detalleGasto" AutoGenerateColumns="False" runat="server">
<Columns>

<asp:TemplateField HeaderText='<%$ Resources: res_campoGrilla, cat_catalogo_codigoinventario%>'>
<ItemTemplate>
<asp:Label ID="lbl_codInventario" runat="server" CssClass="lbl" Text='<%# eval("codigoInventario") %>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$ Resources: res_campoGrilla, gas_detallegasto_detallegasto%>'>
<ItemTemplate>
<asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="false"></asp:Label>
<asp:TextBox ID="txt_detalle" runat="server" Text='<%# eval("detalle") %>' CssClass="txt_largo"></asp:TextBox>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$ Resources: res_campoGrilla, gas_detallegasto_valor%>'>
<ItemTemplate>
<asp:TextBox ID="txt_valor" runat="server" CssClass="txt_numero" Text='<%# eval("valor") %>'></asp:TextBox>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$ Resources: res_campoGrilla, gas_detallegasto_cantidad%>'>
<ItemTemplate>
<asp:TextBox ID="txt_cantidad" runat="server" CssClass="txt_numero" Text='<%# eval("cantidad") %>'></asp:TextBox>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField>
<ItemTemplate>
<asp:ImageButton ID="imbDetalle" runat="server" ImageUrl="../../images/iconos/pencil.gif"
CommandName="detalle" CausesValidation="False"></asp:ImageButton>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField>
<ItemTemplate>
<asp:ImageButton ID="imbEliminar" runat="server" ImageUrl="../../images/iconos/eliminar.gif"
CommandName="delete" CausesValidation="False"></asp:ImageButton>
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
<td colspan="2">
<asp:Label ID="lbl_mensajeGasto" runat="server" CssClass="lbl_mensaje" Text=""></asp:Label>

<asp:Label ID="lbl_mensajeGasto2" runat="server" CssClass="lbl" Text=""></asp:Label>
</td>
</tr>
<tr>
<td>

<asp:UpdatePanel ID="UpdatePanel2" runat="server"  >
<ContentTemplate>
<bti:BotonImagen ID="bti_guardarGasto" runat="server" CssClass="imb" ImageUrl="../../images/botones/aceptar.png"/>

</ContentTemplate> </asp:UpdatePanel> 

</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
</table>
<pop:popup ID='popupInterno1' runat='server' a_bol_visible='false' />
