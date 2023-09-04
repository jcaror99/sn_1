<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_preguntas.ascx.vb" Inherits="website.samm_componentes.controles_doc_inc_preguntas" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
    <tr>
        <td style="white-space: nowrap">
            <bti:BotonImagen ID="bti_nuevo" runat="server" ImageUrl="../../images/botones/agregar.gif" OnClientClick="return false;" CausesValidation="false" /><bti:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif" OnClientClick="return false;" CausesValidation="false" /><bti:BotonImagen ID="btiOpciones" runat="server" ImageUrl="../../images/botones/doc_opciones.gif" /><bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.gif" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <gri:grilla ID="gri_preguntas" runat="server" a_bln_paginacionNormal="true" />
        </td>
    </tr>
</table>
