<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_modelosReemplazo.ascx.vb" Inherits="website.samm_componentes.controles_cat_inc_modelosReemplazo" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple" TagPrefix="bus" %>
<table>
    <tr>
        <td>
            <bus:busquedaAvanzadaMultiple ID="bus_multiple" a_bln_obligatorio="false" a_str_tabla="cat_catalogo.equipo" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:TreeView ID="trv_equipos" runat="server" ImageSet="Arrows" ShowCheckBoxes="all" EnableClientScript="false"></asp:TreeView>
        </td>
    </tr>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.png" CausesValidation="false" /></td>
    </tr>
</table>
