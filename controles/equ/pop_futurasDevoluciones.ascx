<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_futurasDevoluciones.ascx.vb" Inherits="website.samm_componentes.controles_equ_pop_futurasDevoluciones" %>
<%@ Register src="~/controles/general/grilla.ascx" tagname="grilla" tagprefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register src="~/controles/general/busquedaAvanzada.ascx" tagname="busquedaAvanzada" tagprefix="uc2" %>
<%@ Register src="~/controles/general/fechaAvanzada.ascx" tagname="fechaAvanzada" tagprefix="uc3" %>

<table>
    <tr>
        <td align="right">
            <asp:Label ID="lbl_fecha" runat="server" CssClass="lbl" ></asp:Label>
        </td>
        <td align="left">
        <table>
        <tr>
        <td>
            <uc3:fechaAvanzada ID="fec_fecha" runat="server" a_str_prefijo="ff" />
        </td>
        <td align="right">
            <bti:BotonImagen ID="imb_buscar" runat="server" CssClass='imb' CausesValidation="false"
                ImageUrl="~/images/botones/buscarBA.gif" />
        </td>
        </tr>
        </table>       

        </td>
        <td align="left">
        
        </td>
    </tr>
    <tr>
        <td align="right">
            <asp:Label ID="lbl_modelo" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td align="left">
            <uc2:busquedaAvanzada ID="bus_modelo" runat="server" a_str_tabla="cat_catalogo.equipo" a_bol_postBack="true" a_bol_omitirRecursividad="true" />
        </td>
    </tr>
    <tr>
        <td align="right">
            <asp:Label ID="lbl_alquiler" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td align="left">
            <uc2:busquedaAvanzada ID="bus_alquiler" runat="server" a_str_tabla="equ_alquiler" a_bol_postBack="true"  a_bol_omitirRecursividad="true"/>
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <uc1:grilla ID="gri_equipos" runat="server" a_bln_noSeleccionable="true" />
        </td>
    </tr>
</table>
