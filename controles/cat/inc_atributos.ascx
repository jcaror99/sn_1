<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_atributos.ascx.vb" Inherits="website.samm_componentes.controles_equ_inc_atributos" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<table width="800">
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: justify">&nbsp;&nbsp;<bti:botonimagen id="bti_nuevo" runat="server" imageurl="../../images/botones/agregar.gif" causesvalidation="false" cssclass="imb" /><bti:botonimagen id="bti_editar" runat="server" imageurl="../../images/botones/editar.gif" causesvalidation="false" cssclass="imb" />
            <bti:botonimagen id="bti_actualizar" runat="server" imageurl="../../images/botones/actualizar.gif" causesvalidation="false" cssclass="imb" />
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <gri:grilla id="gri_atributo" runat="server" a_bln_paginacionnormal="true" />
        </td>
    </tr>
</table>
