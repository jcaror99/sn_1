<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_sucursal.ascx.vb" Inherits="website.samm_componentes.controles_alq_pop_sucursal" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc2" %>
<%@ Register Src="~/controles/cnt/inc_informacionEquipos.ascx" TagName="inc_informacionEquipos"
    TagPrefix="uc3" %>
<%@ Register Src='~/controles/general/tabs.ascx' TagName='tabs' TagPrefix='tab' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/informacion.ascx" TagName="informacion" TagPrefix="uc4" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="uc1" %>

<table class="tbl_marcoFormulario" cellpadding="0" cellspacing="0" width="100%">

    <tr>
        <table>
            <tr>
                <td>
                    <asp:Label ID="lbl_sucursal" runat="server" CssClass="lbl"></asp:Label>
                </td>
                <td>

                    <bus:busquedaavanzada id="bus_sucursal" runat="server" a_bln_obligatorio="true" a_str_tabla="ter_sucursal" a_bol_postback="true" />
                </td>


            </tr>
            <br />
            <tr>
                <td>
                    <bti:botonimagen runat="server" text="aceptar" causesvalidation="true" id="bti_guardarSucursal" imageurl="../../images/botones/aceptar.jpg" />
                </td>
            </tr>
    </tr>

</table>
