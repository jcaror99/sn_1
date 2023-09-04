<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_buscarEquipos.ascx.vb" Inherits="website.samm_componentes.controles_alq_pop_buscarequipos" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple" TagPrefix="uc3" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table>
    <tr>
        <td>
            <uc3:busquedaavanzadamultiple id="bus_Equipos" runat="server" a_str_tabla="equ_equipo" a_str_campo="equipo_serial,equipo" />
        </td>
    </tr>

    <tr>
        <td>
            <bti:botonimagen id="btn_busqEquipos" runat="server" imageurl="../../images/botones/aceptar.jpg" />
        </td>
    </tr>
</table>
