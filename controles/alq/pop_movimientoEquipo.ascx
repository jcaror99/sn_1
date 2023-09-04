<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_movimientoEquipo.ascx.vb" Inherits="website.samm_componentes.controles_alq_pop_movimientoEquipo" %>

<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc2" %>
<%@ Register Src="~/controles/cnt/inc_informacionEquipos.ascx" TagName="inc_informacionEquipos"
    TagPrefix="uc3" %>
<%@ Register Src='~/controles/general/tabs.ascx' TagName='tabs' TagPrefix='tab' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/informacion.ascx" TagName="informacion" TagPrefix="uc4" %>

<table class="tbl_marcoFormulario" cellpadding="0" cellspacing="0" width="100%">
    <tr>
        <td>
            <asp:GridView ID="grv_movimientos" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField HeaderText="res_metadata,doc_documento_fecha_fh" DataField="fecha" />
                    <asp:BoundField HeaderText="res_metadata,doc_documento_documento" DataField="documento" />
                    <asp:BoundField HeaderText="res_metadata,equ_trazabilidad_horometro" DataField="horometro" />
                    <asp:BoundField HeaderText="res_metadata,ter_sucursal_sucursal" DataField="sucursal" />
                    <asp:BoundField HeaderText="res_metadata,ter_sucursal_direccion" DataField="direccion" />
                    <asp:BoundField HeaderText="res_metadata,doc_estadotipodocumento_estadotipodocumento" DataField="estado" />
                </Columns>
                <FooterStyle CssClass="gri_pie" />
                <RowStyle CssClass="gri_item" />
                <PagerStyle CssClass="gri_paginacion" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />

            </asp:GridView>
        </td>
    </tr>

</table>
