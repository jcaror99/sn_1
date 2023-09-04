<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_estadoEquipo.ascx.vb"
    Inherits="website.samm_componentes.controles_equ_pop_estadoEquipo" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="bus" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table class="tbl_formulario">

    <tr>
        <td class='td_lblFormulario' style="white-space: nowrap">
            <asp:Label ID="lbl_estadoEquipo" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <uc1:busquedaAvanzada ID="bus_estadoEquipo" runat="server" a_str_tabla="equ_estadoEquipo" />
        </td>
        <td></td>
    </tr>

    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lblHorometro" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <asp:TextBox ID="txtHorometro" runat="server" CssClass="txt_numero"></asp:TextBox><act:FilteredTextBoxExtender
                ID='ftb_horometro' runat='server' TargetControlID='txtHorometro' FilterType='Numbers,Custom' />
        </td>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_fecha" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <uc2:fechaAvanzada ID="fec_fecha" runat="server" />
        </td>
    </tr>

    <tr>
        <td colspan="3">
            <cc1:BotonImagen ID="bti_aceptar" runat="server"
                ImageUrl="~/images/botones/aceptar.jpg" ValidationGroup="mntEqu"></cc1:BotonImagen>

            <div id="divInactivarOficina">
                <asp:CheckBox ID="chb_CrearEquipo" runat="server" Text="" /></div>

        </td>
    </tr>

    <tr>
        <td></td>
        <td colspan="3">
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
        <td></td>
    </tr>
</table>

