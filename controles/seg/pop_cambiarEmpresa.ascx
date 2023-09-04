<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_cambiarEmpresa.ascx.vb" Inherits="website.samm_componentes.controles_seg_pop_cambiarEmpresa" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<table>
    <tr align="center">
        <td>
            <asp:Label ID="lbl_empresa" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,gen_empresa_empresa %>'></asp:Label>
        </td>
        <td>
            <bus:busquedaAvanzada ID="bus_empresa" runat="server" a_bln_mostrarNuevoConDrop="false"
                a_bln_obligatorio="true" a_bol_postBack="false" a_str_grupoValidacion="1" a_str_tabla="gen_empresa" />
        </td>
    </tr>
    <tr align="center">
        <td colspan="2">
            <bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="True" ValidationGroup="1"
                ImageUrl="../../images/botones/aceptar.jpg" />
        </td>
    </tr>
    <tr align="center">
        <td colspan="2">
            <asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='1' CssClass='lbl_mensaje' ForeColor=''
             HeaderText='<%$Resources:res_mensajes,camposObligatorios %>' />
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
</table>
