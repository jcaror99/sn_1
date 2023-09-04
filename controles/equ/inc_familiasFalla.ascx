<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_familiasFalla.ascx.vb"
    Inherits="website.samm_componentes.controles_equ_inc_familiasFalla" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<bti:BotonImagen ID="btn_importar" runat="server" CssClass='imb' ImageUrl="~/images/botones/compartirclaro.gif" /><asp:TreeView
    ID="trv_familia" runat="server" ShowCheckBoxes="All" LineImagesFolder="../../images/treelineimages"
    ShowLines="True" SkipLinkText="a" CssClass="trv" EnableClientScript="false" >
    <SelectedNodeStyle CssClass="tre_seleccionado" />
    <RootNodeStyle CssClass="tre_raiz" />
    <NodeStyle CssClass="tre_nodo" />
</asp:TreeView>
<bti:BotonImagen ID="btn_aceptar" runat="server" CssClass='imb' ImageUrl="~/images/botones/aceptar.png" />