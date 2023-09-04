<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="arbol.ascx.vb" Inherits="website.samm_controles.controles_rep_arbol" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<div style="background-color: White;height:300px;overflow:auto;" runat="server" id="div_arbol">
            <asp:TreeView ID="trv_reportes" runat="server" CssClass='trv' LineImagesFolder="../../images/treelineimages" >
                <SelectedNodeStyle CssClass="tre_seleccionado" />
                <RootNodeStyle CssClass="tre_raiz" />
                <NodeStyle CssClass="tre_nodo" />
            </asp:TreeView>
            <asp:LinkButton ID="btn_exportar" runat="server">Exportar masivamente</asp:LinkButton>
</div>