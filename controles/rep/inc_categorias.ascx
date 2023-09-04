<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_categorias.ascx.vb" Inherits="website.samm_componentes.controles_rep_inc_categorias" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
<tr><td><asp:Label ID="lbl_ruta" runat="server" CssClass="lbl"> </asp:Label></td>
</tr>
<tr>
<td>
<asp:TreeView ID="trv_categorias" runat="server"  ShowCheckBoxes="All" CssClass='trv'
    LineImagesFolder="../../images/treelineimages" ShowLines="True"  EnableClientScript="false"  >
    <SelectedNodeStyle CssClass="tre_seleccionado" />
    <RootNodeStyle CssClass="tre_raiz" />
    <NodeStyle CssClass="tre_nodo" /></asp:TreeView>
</td>
</tr>
<tr >
<td>
<bti:BotonImagen ID="btn_aceptar" runat="server" CssClass='imb' ImageUrl="~/images/botones/aceptar.png"/>
</td>
</tr>
<tr >
<td>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
</table>
