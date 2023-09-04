<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_subTipoDocumento.ascx.vb"
Inherits="website.samm_componentes.controles_doc_inc_subTipoDocumento" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<table>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_nuevo" runat="server" ImageUrl="../../images/botones/agregar.gif" OnClientClick="return false;" CausesValidation="false" /><bti:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif" OnClientClick="return false;" CausesValidation="false" />
            <bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.gif" />
            <br />
             </td>
    </tr>
    <tr>
        <td colspan="2">
            <gri:grilla ID="gri_subTipo" runat="server" a_bln_paginacionNormal="true" />
            <bti:BotonImagen ID="bti_estados" runat="server" ImageUrl="../../images/botones/doc_confest.gif" CausesValidation="false" />
            <bti:BotonImagen ID="bti_listaAtributos" runat="server" ImageUrl="../../images/botones/editar.gif" CausesValidation="false" />
            <bti:BotonImagen ID="bti_mostrarSub" runat="server" ImageUrl="../../images/botones/doc_confest.gif" CausesValidation="false" />
            <bti:BotonImagen ID="bti_prioridad" runat="server" ImageUrl="../../images/botones/actuaCont.png" CausesValidation="false" />
            <asp:Label ID='lbl_mensaje' runat='server' CssClass='lbl_mensaje'  > </asp:Label>
        </td>
    </tr>
    
</table>
