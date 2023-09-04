<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_buscarPrestamos.ascx.vb" Inherits="website.samm_componentes.controles_equ_pop_buscarPrestamos" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaavanzada" TagPrefix="fec" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
    <tr>
        <td style="height: 24px">
            <asp:Label ID="lblmodelo" runat="server" Text="<%$Resources: res_metadata,equ_equipo_id_catalogo_equipo %>"></asp:Label></td>
        <td style="height: 24px">
            <uc1:busquedaAvanzada ID="busModelo" runat="server" a_str_tabla="cat_catalogo.equipo" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblTecnico" runat="server" Text="<%$Resources: res_metadata,seg_cargo_estecnico %>"></asp:Label></td>
        <td>
            <uc1:busquedaAvanzada ID="busTecnico" runat="server" a_str_tabla="seg_usuario" a_str_filtros="seg_cargo_esTecnico=1" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_estado" runat="server" Text="<%$Resources: res_metadata,equ_prestamo_id_estadoprestamo %>"></asp:Label></td>
        <td>
            <uc1:busquedaAvanzada ID="bus_estado" runat="server" a_str_tabla="equ_estadoPrestamo" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_serial" runat="server" Text="<%$Resources: res_metadata,equ_equipo_equipo_serial %>"></asp:Label></td>
        <td>
            <asp:TextBox ID="txt_serial" runat="server" CssClass="txt"></asp:TextBox></td>
    </tr>
    <tr align='right'>
        <td>
            <table cellpadding='0' cellspacing='0'>
                <tr>
                    <td align='left'>
                        <asp:Label ID='lbl_fechaPrestamo_ff' runat='server'></asp:Label></td>
                    <td align='right' style='padding-left: 1px'>
                        <asp:Label ID='lbl_fechaPrestamo_ff_busDesde' runat='server'></asp:Label></td>
                </tr>
                <tr>
                    <td></td>
                    <td align='right'>
                        <asp:Label ID='lbl_fechaPrestamo_ff_busA' runat='server'></asp:Label></td>
                </tr>
            </table>
        </td>
        <td class='td_controlesFormulario'>
            <table cellpadding='0' cellspacing='0'>
                <tr>
                    <td>
                        <fec:fechaavanzada ID='fec_fechaPrestamo_ff' runat='server' a_str_prefijo='fh' a_bln_obligatorio='false'></fec:fechaavanzada>
                    </td>
                </tr>
                <tr>
                    <td>
                        <fec:fechaavanzada ID='fec_fechaPrestamo_ff_bus' runat='server' a_str_prefijo='fh' a_bln_obligatorio='false'></fec:fechaavanzada>
                    </td>
                </tr>
            </table>
        </td>
        <td></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <cc1:BotonImagen ID="btiAceptar" runat="server" ImageUrl="~/images/botones/aceptar.png" ValidationGroup="pop_buscar"></cc1:BotonImagen></td>
    </tr>
</table>
