<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_observaciones.ascx.vb"
    Inherits="website.samm_componentes.controles_ort_ort_reporteTecnico_equipo" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="textoAvanzado" TagPrefix="taz" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table>
    <tr>
        <td>
            <asp:Label ID="lbl_observaciones" runat="server" CssClass="lblobligatorio"></asp:Label>
            <asp:Label ID="Label9" runat="server" Text="(max 2000)" CssClass="lblobligatorio"></asp:Label>
        </td>
        <td>
            <taz:textoAvanzado ID="txt_observaciones" runat="server" CssClass="txt_formulario"
                a_int_maxLength='2000' a_str_grupoValidacion="penDoc" a_bln_obligatorio="true" />
        </td>
    </tr>
</table>
<table>
    <tr>
        <td>
        </td>
        <td>
            <bti:BotonImagen ID="btiGuardar" runat="server" CssClass="imb"  CausesValidation="false"  ImageUrl="../../images/botones/aceptar.png" />
        </td>
    </tr>
</table>