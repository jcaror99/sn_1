<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_pagosAlquiler.ascx.vb"
    Inherits="website.samm_componentes.controles_equ_inc_pagosAlquiler" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register src="~/controles/general/fechaAvanzada.ascx" tagname="fechaAvanzada" tagprefix="uc1" %>
<table style="width: 550px;">
    <tr>
        <td colspan="3">
            <asp:RadioButtonList ID="rbl_filtro" runat="server" CssClass="rbl" RepeatDirection="Horizontal" AutoPostBack="true">
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_desde" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td style="width:90%">
            <uc1:fechaAvanzada ID="fec_desde" runat="server" a_str_prefijo="ff" />
            <bti:BotonImagen ID="imb_buscar" runat="server" CssClass='imb' CausesValidation="false"
                ImageUrl="~/images/botones/buscarBA.gif" />
        </td>
    </tr>
    <tr>
        <td style="width: 543px" colspan="3">
            <%--<bti:BotonImagen ID="bti_nuevo" runat="server" ImageUrl="../../images/botones/agregar.gif" CausesValidation="false" OnClientClick="return false;" />--%>
            <bti:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif" CausesValidation="false" OnClientClick="return false;" />
            <bti:BotonImagen ID="bti_eliminar" runat="server" ImageUrl="../../images/botones/quitar.gif" CausesValidation="false" />
            <bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.gif" />
            <bti:BotonImagen ID="bti_detallarPago" runat="server" ImageUrl="../../images/botones/equ_detallarPago.gif" />
            <bti:BotonImagen ID="bti_pagar" runat="server" ImageUrl="../../images/botones/equ_facturar.gif" />
        </td>
    </tr>
    <tr>
        <td colspan="3" style="width: 539px">
            <gri:grilla ID="gri_pagos" runat="server" a_bln_paginacionNormal="true" />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="3" style="width: 539px">
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
</table>
