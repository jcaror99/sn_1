<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_estadosPerfil.ascx.vb" Inherits="website.samm_componentes.controles_seg_inc_estadosPerfil" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_perfiles" runat="server" ImageUrl="../../images/botones/doc_confPerfil.gif"
                OnClientClick="return false;" CausesValidation="false" />
        </td>
    </tr>
    <tr>
        <td>
            <gri:grilla ID="gri_tipoDocumento" runat="server" a_bln_paginacionNormal="true" />
        </td>
    </tr>
</table>
