<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_busquedaOtProgramacion.ascx.vb"
    Inherits="website.samm_componentes.controles_ort_inc_busquedaOtProgramacion" %>
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
            <bus:busquedaAvanzada ID="bus_tercero" runat="server" a_bol_postBack="true" a_str_tabla="ter_tercero"
                CssClass="_bus" />
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_sucursal" runat="server" Text='<%$Resources:res_metadata,ter_sucursal_sucursal %>'
                CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <bus:busquedaAvanzada ID="bus_sucursal" runat="server" a_bol_postBack="true" a_str_tabla="ter_sucursal"
                CssClass="_bus" />
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_equipo" runat="server" Text='<%$Resources:res_metadata,equ_equipo_equipo %>'
                CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <bus:busquedaAvanzada ID="bus_equipo" runat="server" a_bol_postBack="true" a_str_tabla="equ_equipo" CssClass="_bus" />
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_depto" runat="server" Text='<%$Resources:res_metadata,ort_departamentosolicitud_departamentosolicitud %>'
                CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <bus:busquedaAvanzada ID="bus_depto" runat="server" a_bol_postBack="true" a_str_tabla="ort_departamentoSolicitud"
                CssClass="_bus" />
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID ="lbl_zona" runat="server" Text='<%$Resources:res_metadata,gen_zona_zona %>' CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <bus:busquedaAvanzada ID="bus_zona" runat="server" a_bol_postBack="true"
                a_str_tabla="gen_zona" CssClass="_bus" />
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_reporte" runat="server" Text='<%$Resources:res_metadata,ort_reportetecnico_reportetecnico %>'
                CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <asp:RadioButtonList ID="rbl_reporte" runat="server" AutoPostBack="true" CssClass="rbl_bus" RepeatLayout="Flow"
                RepeatDirection="Horizontal">
                <asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
                <asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
                <asp:ListItem Value='2' Text='<%$ Resources:res_controles,todos %>'></asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr runat='server' visible='false' align='right'>
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
                    <td>
                        <cc1:BotonImagen ID="bti_buscarFecha" runat="server" ImageUrl="../../images/botones/buscarBA_arbol.gif"
                        CssClass='imb' CausesValidation="false" />
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
</table>
