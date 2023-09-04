<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_atributosModelo.ascx.vb" Inherits="website.samm_componentes.controles_cat_inc_atributosModelo" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="pop" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
    <tr>
        <td colspan="2" align="left">
            <bti:BotonImagen ID="bti_configurarAtributos" runat="server" CausesValidation="false" ImageUrl="../../images/botones/configurarAtributos.gif" />
            <bti:BotonImagen ID="bti_valoresDefecto" runat="server" CausesValidation="False" ImageUrl="~/images/botones/cat_valoresDefecto.gif" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:TreeView ID="trv_atributos" runat="server" CssClass='trv' LineImagesFolder="../../images/treelineimages" EnableClientScript="False" ShowLines="True" SkipLinkText="a" ShowCheckBoxes="Leaf">
                <SelectedNodeStyle CssClass="tre_seleccionado" />
                <RootNodeStyle CssClass="tre_raiz" />
                <NodeStyle CssClass="tre_nodo" />
            </asp:TreeView>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="false" ImageUrl="../../images/botones/aceptar.png" /></td>
    </tr>
</table>
