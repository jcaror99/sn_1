<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_familia.ascx.vb" Inherits="website.samm_componentes.controles_gen_inc_familia" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<div class="divArbol">
    <asp:TreeView ID="trv" runat="server" CssClass='trv' LineImagesFolder="../../images/treelineimages" ShowLines="True"
        SkipLinkText="a">
        <SelectedNodeStyle CssClass="tre_seleccionado" />
        <RootNodeStyle CssClass="tre_raiz" />
        <NodeStyle CssClass="tre_nodo" />
    </asp:TreeView>
</div>