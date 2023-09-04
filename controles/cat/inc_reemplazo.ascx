<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_reemplazo.ascx.vb" Inherits="website.samm_componentes.controles_cat_inc_reemplazo" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_nuevo" runat="server" ImageUrl="../../images/botones/agregar.gif" CausesValidation="false" OnClientClick="return false;" /><bti:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif" CausesValidation="false" OnClientClick="return false;" /><bti:BotonImagen ID="bti_eliminar" runat="server" ImageUrl="../../images/botones/quitar.gif" CausesValidation="false" /><bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.png" /></td>
    </tr>
    <tr>
        <td>
            <gri:grilla ID="gri_reemplazos" runat="server" a_bln_paginacionNormal="true" />
        </td>
    </tr>
</table>
