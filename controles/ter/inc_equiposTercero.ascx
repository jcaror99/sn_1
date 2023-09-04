<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_equiposTercero.ascx.vb"
    Inherits="website.samm_componentes.controles_ter_inc_equiposTercero" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<table>
    <tr>
        <td>
            <table>
                <tr>
                    <td class='td_lblFormulario'>
                        <asp:Label ID='lbl_equipo' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID='txt_equipo' runat='server' MaxLength='100' CssClass='txt_formulario_bus'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class='td_lblFormulario'>
                        <asp:Label ID='lbl_id_sucursal' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                    <td class='td_controlesFormulario'>
                        <bus:busquedaAvanzada ID='bus_sucursal' runat='server' a_str_tabla='ter_sucursal'
                            CssClass="_bus" />
                    </td>
                </tr>
                <tr>
                    <td class='td_lblFormulario'>
                        <asp:Label ID='lbl_equipo_serial' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                    <td class='td_controlesFormulario' style="width: 150px; white-space: nowrap">
                        <asp:TextBox ID='txt_equipo_serial' runat='server' MaxLength='100' CssClass='txt_formulario_bus'></asp:TextBox>
                    </td>
                </tr>
            </table>
        </td>
        <td>
            <table>
                <tr>
                    <td class='td_lblFormulario'>
                        <asp:Label ID='lbl_id_catalogo_equipo' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                    <td class='td_controlesFormulario'>
                        <bus:busquedaAvanzada ID='bus_catalogo_equipo' runat='server' a_str_tabla='cat_catalogo.equipo'
                            CssClass="_bus" />
                    </td>
                </tr>
                <tr>
                    <td class='td_lblFormulario'>
                        <asp:Label ID='lbl_equipoPadre' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                    <td class='td_controlesFormulario'>
                        <bus:busquedaAvanzada ID='bus_equipoPadre' runat='server' a_str_tabla="equ_equipo"
                            CssClass="_bus" />
                    </td>
                </tr>
                <tr>
                    <td class='td_lblFormulario'>
                        <asp:Label ID='lbl_subtipocatalogo' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                    <td class='td_controlesFormulario'>
                        <bus:busquedaAvanzada ID='bus_subtipocatalogo' runat='server' a_str_tabla="cat_subtipoCatalogo"
                            a_str_filtros="id_tipocatalogo=1" CssClass="_bus" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td align="center">
            <bti:BotonImagen ID="btn_buscar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                CausesValidation="false" />
        </td>
        <td>
        </td>
    </tr>
</table>
<table>
    <tr>
        <td colspan="3">
            <bti:BotonImagen ID="bti_nuevo" runat="server" ImageUrl="../../images/botones/agregar.gif"
                CausesValidation="false" />
            <bti:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif"
                CausesValidation="false" />
            <bti:BotonImagen ID="bti_actualizar" runat="server" CssClass="imb" ImageUrl="~/images/botones/actualizar.png"
                CausesValidation="false" />
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <gri:grilla ID="gri_equipos" runat="server" a_bln_paginacionNormal="true"></gri:grilla>
        </td>
    </tr>
</table>
