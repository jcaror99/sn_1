<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_modelosEquipoLista.ascx.vb" Inherits="website.samm_componentes.controles_cat_inc_modelosEquipoLista" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
    <tr>
        <td>
            <asp:TreeView ID="trv_equipos" runat="server" EnableClientScript="false" LineImagesFolder="../../images/treelineimages" ShowLines="True" SkipLinkText="a">
                <SelectedNodeStyle CssClass="tre_seleccionado" />
                <RootNodeStyle CssClass="tre_raiz" />
                <NodeStyle CssClass="tre_nodo" />
            </asp:TreeView>
        </td>
    </tr>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="false" ImageUrl="../../images/botones/aceptar.png" /></td>
    </tr>
</table>
