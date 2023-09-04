<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_fechaGarantia.ascx.vb" Inherits="website.samm_componentes.controles_doc_pop_fechaGarantia" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<table>
    <tr>
        <td align="center">
            <uc2:fechaAvanzada ID="fec_garantia" runat="server" a_bln_obligatorio="true" a_str_grupoValidacion="f" a_str_prefijo="ff" />
        </td>
    </tr>
    <tr>
        <td align="center">
            <cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="~/images/botones/aceptar.jpg" ValidationGroup="f" />
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:Label ID="lbl_mensaje" CssClass="lbl_mensaje" runat="server"></asp:Label>
        </td>
    </tr>
</table>
