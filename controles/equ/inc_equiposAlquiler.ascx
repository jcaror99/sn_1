<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_equiposAlquiler.ascx.vb"
    Inherits="website.samm_componentes.controles_equ_inc_equiposAlquiler" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table style="width: 850px;">
    <tr>
        <td>
            <asp:RadioButtonList ID="rbl_filtro" runat="server" CssClass="rbl" RepeatDirection="Horizontal" AutoPostBack="true">
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif" CausesValidation="false" OnClientClick="return false;" />
            <bti:BotonImagen ID="bti_imprimir" runat="server" ImageUrl="../../images/botones/print.gif" CausesValidation="false" OnClientClick="return false;" />
            <bti:BotonImagen ID="bti_crearOT" runat="server" ImageUrl="../../images/botones/crearOT.gif" CausesValidation="false" OnClientClick="return false;" />
            <bti:BotonImagen ID="bti_desafiliar" runat="server" ImageUrl="../../images/botones/quitar.gif" CausesValidation="false"  />
            <bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.png" />
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <gri:grilla ID="gri_detalle" runat="server" a_bln_paginacionNormal="true" />
        </td>
    </tr>
</table>
