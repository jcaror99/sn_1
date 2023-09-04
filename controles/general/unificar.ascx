<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="unificar.ascx.vb" Inherits="website.samm_controles.controles_general_unificar" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>

<table style="vertical-align: middle; text-align: center">
    <tr>
        <td>
            <asp:Label ID="lbl_origen" runat="server" CssClass="lbl" Text="<%$ Resources: res_etiquetas,seleccioneOrigen %>"></asp:Label>
        </td>
        <td>
        </td>
        <td>
            <asp:Label ID="lbl_destino" runat="server" CssClass="lbl" Text="<%$ Resources: res_etiquetas,seleccioneDestino %>"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <bus:busquedaAvanzada ID="bus_Origen" runat="server" a_bln_obligatorio="true" a_str_grupoValidacion="unificar" />
        </td>
        <td style="width: 100px">
            <asp:Image ID="img_flecha" runat="server" ImageUrl="~/images/iconos/flecha.jpg" /></td>
        <td>
            <bus:busquedaAvanzada ID="bus_Destino" runat="server" a_bln_obligatorio="true" a_str_grupoValidacion="unificar"/>
        </td>
    </tr>
    <tr>
        <td colspan="3" align="center" style="white-space:nowrap;">
            <asp:CheckBox ID="chb_eliminarOrigen" runat="server" Text='<%$ Resources: res_etiquetas,eliminarOrigen %>' CssClass='chb' /><asp:CheckBox ID="chb_copiarArchivos" runat="server" CssClass='chb' />
        </td>
    </tr>
    <tr>
        <td colspan="3" align="center">
            <bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.png"
                CausesValidation="true" ValidationGroup="unificar" /></td>
    </tr>
    <tr>
        <td colspan="3" align="center">
            <asp:Label ID="lbl_respuesta" runat="server" CssClass="lbl_mensaje"></asp:Label>
            <asp:ValidationSummary ID="vls_unificar" runat="server" ValidationGroup="unificar" CssClass="lbl_mensaje" ForeColor='' />
        </td>
    </tr>
</table>