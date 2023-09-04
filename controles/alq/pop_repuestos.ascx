<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_repuestos.ascx.vb" Inherits="website.samm_componentes.controles_alq_pop_repuestos" %>
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
            <label>Buscar Repuesto</label>
            <bus:busquedaavanzadamultiple id="bus_repuesto" runat="server" a_bln_obligatorio="false" a_str_campo="catalogo,codigoinventario"
                a_str_tabla="cat_catalogo" a_bol_postback="true" />

            <label>fecha despacho</label>
            <fecha:fechaavanzada id="fechadespacho" runat="server"></fecha:fechaavanzada>
            <label>fecha devolucion</label>
            <fecha:fechaavanzada id="fechadesvolucion" runat="server"></fecha:fechaavanzada>
            <asp:Button runat="server" CssClass='' ID="CreaRepuesto" Text="AgregarRepuesto" CommandName="agregarrepuesto" />
            <%--<bus:busquedaAvanzada ID="buscarsucursal" runat ="server" a_str_tabla ="ter_sucursal" />--%>
        </td>

    </tr>


</table>
