<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_buscarRepuestos.ascx.vb" Inherits="website.samm_componentes.controles_alq_pop_buscarRepuestos" %>

<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple" TagPrefix="uc3" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table>
    <tr>
        <td>
            <uc3:busquedaavanzadamultiple id="bus_Repuestos" runat="server" a_str_tabla="cat_catalogo" a_str_campo="catalogo_codigo,catalogo" />
        </td>
    </tr>

    <tr>
        <td>
            <bti:botonimagen id="btn_busqRepuestos" runat="server" imageurl="../../images/botones/aceptar.jpg" />
        </td>
    </tr>
</table>
