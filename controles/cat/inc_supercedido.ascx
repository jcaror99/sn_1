<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_supercedido.ascx.vb"
    Inherits="website.samm_componentes.controles_cat_inc_supercedido" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
    <tr>
        <td>
            <asp:Label ID="lbl_supercedido" runat="server" CssClass="lbl_titulo2" Text='<%$ Resources:res_etiquetas_cat,supercedido %>'></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_nuevo_supercedido" runat="server" ImageUrl="../../images/botones/agregar.gif"
                CausesValidation="false" OnClientClick="return false;" />
        </td>
        <td>
            <bti:BotonImagen ID="bti_editar_supercedido" runat="server" ImageUrl="../../images/botones/editar.gif"
                CausesValidation="false" OnClientClick="return false;" />
        </td>
        <td>
            <bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.png" />
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <gri:grilla ID="gri_supercedidos" runat="server" a_bln_paginacionNormal="true" />
        </td>
    </tr>
</table>
<table>
    <tr>
        <td>
            <asp:Label ID="lbl_supercede" runat="server" CssClass="lbl_titulo2" Text='<%$ Resources:res_etiquetas_cat,supercede %>'></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_nuevo_supercede" runat="server" ImageUrl="../../images/botones/agregar.gif"
                CausesValidation="false" OnClientClick="return false;" />
        </td>
        <td>
            <bti:BotonImagen ID="bti_editar_supercede" runat="server" ImageUrl="../../images/botones/editar.gif"
                CausesValidation="false" OnClientClick="return false;" />
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <gri:grilla ID="gri_supercede" runat="server" a_bln_paginacionNormal="true" />
        </td>
    </tr>
</table>
