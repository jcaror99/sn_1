<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_equipo.ascx.vb" Inherits="website.samm_componentes.controles_alq_pop_equipo" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc2" %>
<%@ Register Src="~/controles/cnt/inc_informacionEquipos.ascx" TagName="inc_informacionEquipos"
    TagPrefix="uc3" %>
<%@ Register Src='~/controles/general/tabs.ascx' TagName='tabs' TagPrefix='tab' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/informacion.ascx" TagName="informacion" TagPrefix="uc4" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="bus" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaavanzada"
    TagPrefix="fecha" %>


<table class="tbl_marcoFormulario" cellpadding="0" cellspacing="0" width="100%">
    <tr>
        <td>
            <label>Buscar Equipo</label>
            <bus:busquedaavanzadamultiple id="bus_equipo" runat="server" a_bln_obligatorio="false" a_str_filtrotemporal=" id_estadoequipo=1 and id_sucursal in (select id from ter_sucursal where paraalquiler=1 and active=1) "
                a_str_tabla="equ_equipo" a_bol_postback="true" />

            <label>fecha despacho</label>
            <fecha:fechaavanzada id="fechadespacho" runat="server"></fecha:fechaavanzada>
            <label>fecha devolucion</label>
            <fecha:fechaavanzada id="fechadesvolucion" runat="server"></fecha:fechaavanzada>

            <asp:DropDownList ID="drp_sucursal" runat="server"></asp:DropDownList>
            <%--<bus:busquedaAvanzada ID="buscarsucursal" runat ="server" a_str_tabla ="ter_sucursal" />
            --%>

            <asp:Button runat="server" CssClass='' Text="GuardarEquipo" ID="AgregarEquipo" />
        </td>

    </tr>


</table>
