<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_zona.ascx.vb" Inherits="website.samm_componentes.controles_gen_inc_zona" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<div class="divArbol">
    <asp:TreeView ID="trv" runat="server" CssClass='trv' LineImagesFolder="../../images/treelineimages" ShowLines="True"
        SkipLinkText="a" >
        <SelectedNodeStyle CssClass="tre_seleccionado" />
        <RootNodeStyle CssClass="tre_raiz" />
        <NodeStyle CssClass="tre_nodo" />
    </asp:TreeView>
</div>