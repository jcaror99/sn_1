<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_competencias.ascx.vb"
    Inherits="website.samm_componentes.controles_seguridad_inc_competencias" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<table>
    <tr>
        <td>
            <uc1:busquedaAvanzada ID="bus_familia" runat="server" a_str_tabla="gen_familia" a_bol_postBack="true"
                a_str_texto="<%$ Resources:res_etiquetas_seg, seleccioneFamilia %>" />
        </td>
    </tr>
       
    <tr>
        <td style="width: 100%" >
            <asp:GridView ID="grd_equipoServicio" runat="server" CssClass='gri_check'>
                <EmptyDataTemplate>
                    <asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, familiaVacia %>'></asp:Label>
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
        <td>
            <bti:BotonImagen ID="btn_aceptar" runat="server" CssClass='imb' ImageUrl="~/images/botones/aceptar.png" />
        </td>
    </tr>
</table>
