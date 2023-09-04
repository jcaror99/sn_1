<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_competencias.ascx.vb"
    Inherits="website.samm_componentes.controles_cat_inc_competencias" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>&nbsp;
        </td>
        <td>
            <asp:GridView ID="grd_equipoServicio" runat="server" CssClass='gri_check'>
                <EmptyDataTemplate>
                    <asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, noHayTecnicos %>'></asp:Label>
                </EmptyDataTemplate>
                <FooterStyle CssClass="gri_pie" />
                <RowStyle CssClass="gri_item" />
                <PagerStyle CssClass="gri_paginacion" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <bti:BotonImagen ID="btn_aceptar" runat="server" CssClass='imb' ImageUrl="~/images/botones/aceptar.png" />
        </td>
    </tr>
</table>
