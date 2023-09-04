<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_sucursalSucursales.ascx.vb"Inherits="website.samm_componentes.controles_ter_inc_sucursalSucursales" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table>
<tr>
<td>
<bti:BotonImagen ID="btnNuevo" runat="server" CausesValidation="False" ImageUrl="~/images/botones/agregar.gif"
CssClass='imb' />
<bti:BotonImagen ID="btnEliminar" runat="server" ImageUrl="~/images/botones/quitar.gif"
CausesValidation="false" CssClass='imb' />
<bti:BotonImagen ID="btn_editar" runat="server" ImageUrl="~/images/botones/editar.gif"
CausesValidation="false" CssClass='imb' Enabled="false" />
<bti:BotonImagen ID="bti_actualizar" runat="server" CssClass="imb" ImageUrl="~/images/botones/actualizar.png" CausesValidation="false" />
</td>
</tr>
<tr>
<td>
<asp:TreeView ID ="trv_sucursales" runat="server" ShowCheckBoxes="None"  CssClass='trv'
    LineImagesFolder="../../images/treelineimages" ShowLines="True" SkipLinkText="a" EnableClientScript="false">
    <SelectedNodeStyle CssClass="tre_seleccionado" />
    <RootNodeStyle CssClass="tre_raiz" />
    <NodeStyle CssClass="tre_nodo" />
</asp:TreeView>
</td>
</tr>
</table>


