<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_opciones.ascx.vb"
    Inherits="website.samm_componentes.controles_cat_inc_opciones" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
    <tr>
        <td>
            &nbsp;
        </td>
        <td>
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_nuevo" runat="server" ImageUrl="../../images/botones/agregar.gif"
                CausesValidation="false" OnClientClick="return false;" />
        </td>
        <td>
            <bti:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif"
                CausesValidation="false" OnClientClick="return false;" />
        </td>
        <td>
            <bti:BotonImagen ID="bti_eliminar" runat="server" ImageUrl="../../images/botones/quitar.gif" CausesValidation="false" />
            <bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.gif" />
        </td>
        <td>
            <bti:BotonImagen ID="bti_importarOpcionAtributoDependiente" runat="server" ImageUrl="../../images/botones/compartirclaro.gif" />
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <gri:grilla ID="gri_opcionAtributo" runat="server" a_bln_paginacionNormal="true" />
        </td>
    </tr>
</table>
