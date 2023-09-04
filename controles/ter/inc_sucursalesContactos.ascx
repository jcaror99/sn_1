<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_sucursalesContactos.ascx.vb" Inherits="website.samm_componentes.controles_ter_inc_sucursalesContactos" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>

<table>
<tr>
<td>
<asp:TreeView ID="trv_sucursales" runat="server" CssClass='trv' ShowCheckBoxes="All" LineImagesFolder="../../images/treelineimages" ShowLines="True" SkipLinkText="a" EnableClientScript="False">
<SelectedNodeStyle CssClass="tre_seleccionado" />
<RootNodeStyle CssClass="tre_raiz" />
<NodeStyle CssClass="tre_nodo" />
</asp:TreeView>
</td>
</tr>
<tr>
<td>
<bti:BotonImagen ID="btn_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.png" CausesValidation="false" />
</td>
</tr>
</table>