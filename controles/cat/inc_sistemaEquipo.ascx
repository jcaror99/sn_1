<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_sistemaEquipo.ascx.vb" Inherits="website.samm_componentes.controles_cat_inc_sistemaEquipo" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_sistema" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,cat_sistema_sistema %>'></asp:Label></td>
        <td class='td_controlesFormulario'>
            <uc1:busquedaAvanzada ID="bus_sistema" runat="server" a_str_tabla="cat_sistema" />
        </td>
        <td class='td_controlesFormulario'>
            <bti:BotonImagen ID="bti_agregar" runat="server" CausesValidation="False" ImageUrl="~/images/botones/seleccionargrilla.gif" /></td>
        <td style="width: 100%"></td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:GridView ID="grd_sistemas" runat="server" CssClass='gri_check' AutoGenerateColumns='false'>
                <EmptyDataTemplate>
                    <asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, grillaVacia %>'></asp:Label></EmptyDataTemplate>
                <FooterStyle CssClass="gri_pie" />
                <RowStyle CssClass="gri_item" />
                <PagerStyle CssClass="gri_paginacion" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
            </asp:GridView>
        </td>
    </tr>
    <tr colspan="4">
        <td>
            <bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="false" ImageUrl="../../images/botones/aceptar.png" /></td>
    </tr>
</table>
