<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_pagos.ascx.vb" Inherits="website.samm_componentes.controles_cnt_inc_pagos" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="uc1" %>
<table>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_nuevo" runat="server" ImageUrl="../../images/botones/agregar.gif" CausesValidation="false" />
            <bti:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif" CausesValidation="false" />
            <bti:BotonImagen ID="bti_eliminar" runat="server" ImageUrl="../../images/botones/quitar.gif" CausesValidation="false" />
            <bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.gif" />
        </td>
    </tr>
    <tr>
        <td>
            <uc1:grilla ID="gri_pagos" runat="server" a_bln_paginacionNormal="true" />
        </td>
    </tr>
</table>
