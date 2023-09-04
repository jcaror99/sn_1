<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_checkList.ascx.vb" Inherits="website.samm_componentes.controles_cat_inc_checkList" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
    <tr>
        <td>
            <asp:TreeView ID="trv_listas" runat="server" ShowCheckBoxes="Leaf" CssClass='trv' LineImagesFolder="../../images/treelineimages" EnableClientScript="False" ShowLines="True" SkipLinkText="a">
                <SelectedNodeStyle CssClass="tre_seleccionado" />
                <RootNodeStyle CssClass="tre_raiz" />
                <NodeStyle CssClass="tre_nodo" />
            </asp:TreeView>
        </td>
    </tr>
    <tr>
        <td>
            <bti:botonimagen id="bti_aceptar" runat="server" causesvalidation="false" imageurl="../../images/botones/aceptar.png" />
        </td>
    </tr>
</table>
