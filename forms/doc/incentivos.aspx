<%@ Page Language="VB" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master"
AutoEventWireup="false" CodeBehind="incentivos.aspx.vb" Inherits="website.samm_web.forms_doc_incentivos" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>

<%@ Register Src="~/controles/general/tabs.ascx" TagName='tabs' TagPrefix='tab' %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" runat="Server">
    <asp:Label ID="lblTitulo" runat="server" CssClass="lbl_titulo" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" runat="Server">
<table cellpadding=0 cellspacing=0>
<tr>
<td>
<tab:tabs ID='Tabs' runat="server" />
</td>
</tr>
<tr>
<td style="vertical-align:top">
<table class="tbl_marcoFormulario" >
<tr><td>
<br />
<asp:GridView ID="grvSoporte" runat="server" AllowPaging="False" AllowSorting="False"
AutoGenerateColumns="False" UseAccessibleHeader="False" BorderStyle="None" ShowFooter="true">
<EmptyDataTemplate>
</EmptyDataTemplate>
<Columns>
<asp:BoundField HeaderText="$Cod M.O." DataField="codigo" />
<asp:BoundField HeaderText="$Descipción" DataField="catalogo" FooterText="$Total" />
<asp:BoundField HeaderText="$Planeación" DataField="planeado" FooterStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:F2}"/>
<asp:TemplateField HeaderText="$Incentivo" FooterStyle-HorizontalAlign="Center"  ItemStyle-HorizontalAlign="Center">
<ItemTemplate>
<asp:TextBox CssClass="txt_entero" ID="txtCantidad" runat="server" Enabled='<%# Eval("abierto")%>' Text='<%# Eval("planeadoItem") %>' /></asp:TextBox>
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="Mes" HeaderText="$Mes Pago" />
<asp:BoundField DataField="tecnico" HeaderText="$Tecnico" />
<asp:BoundField DataField="nombre" HeaderText="$Nombre" />
<asp:BoundField DataField="tiempo" HeaderText="$TiempoReal" FooterStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
</Columns>
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
</asp:GridView>
</td></tr>
<tr>
<td style="text-align:center">
<cc1:BotonImagen ID="imbAceptar" runat="server" ImageUrl ="../../images/botones/aceptar.jpg" />
<br />
<asp:Label ID="lblMensaje" runat="server" Text="" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr></table>
</td>
</tr>
</table>
<uc1:popup ID='popup1' runat='server' a_bol_visible='false' />
</asp:Content>
