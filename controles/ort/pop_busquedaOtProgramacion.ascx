<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_busquedaOtProgramacion.ascx.vb"
    Inherits="website.samm_componentes.controles_ort_pop_busquedaOtProgramacion" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_tercero" runat="server" Text='<%$Resources:res_metadata,ter_tercero_tercero %>'
                CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <bus:busquedaavanzada id="bus_tercero" runat="server" a_bol_postback="true" a_str_tabla="ter_tercero"
                cssclass="_bus" />
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_sucursal" runat="server" Text='<%$Resources:res_metadata,ter_sucursal_sucursal %>'
                CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <bus:busquedaavanzada id="bus_sucursal" runat="server" a_bol_postback="true" a_str_tabla="ter_sucursal"
                cssclass="_bus" />
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_equipo" runat="server" Text='<%$Resources:res_metadata,equ_equipo_equipo %>'
                CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <bus:busquedaavanzada id="bus_equipo" runat="server" a_str_tabla="equ_equipo"
                cssclass="_bus" />
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_zona" runat="server" Text='<%$Resources:res_metadata,gen_zona_zona %>'
                CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <bus:busquedaavanzada id="bus_zona" runat="server" a_str_tabla="gen_zona"
                cssclass="_bus" />
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_estado" runat="server" Text='<%$Resources:res_metadata,doc_estadotipodocumento_estadotipodocumento %>'
                CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <bus:busquedaavanzada id="bus_estado" runat="server" a_str_tabla="doc_estadoTipoDocumento"
                cssclass="_bus" />
        </td>
    </tr>
    <tr align='right'>
        <td>
            <table cellpadding='0' cellspacing='0'>
                <tr>
                    <td align='right'>
                        <asp:Label ID='lbl_fecha_fh' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                    <td align='right' style='padding-left: 8px'>
                        <asp:Label ID='lbl_fecha_fh_busDesde' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td align='right'>
                        <asp:Label ID='lbl_fecha_fh_busA' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
        <td class='td_controlesFormulario'>
            <table cellpadding='0' cellspacing='0'>
                <tr>
                    <td>
                        <fec:fechaAvanzada ID='fec_fecha_fh' runat='server' a_str_prefijo='fh' a_str_grupoValidacion='form'>
                        </fec:fechaAvanzada>
                    </td>
                </tr>
                <tr>
                    <td>
                        <fec:fechaAvanzada ID='fec_fecha_fh_bus' runat='server' a_str_prefijo='fh' CssClass="txt_fecha_bus"
                            CssClassHora="txt_hora_bus"></fec:fechaAvanzada>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
        <td>
            <cc1:BotonImagen ID="btiAceptar" runat="server" ImageUrl="~/images/botones/aceptar.png"
                ValidationGroup="pop_buscar"></cc1:BotonImagen>
        </td>
    </tr>
</table>
