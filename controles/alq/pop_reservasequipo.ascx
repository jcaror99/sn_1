<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_reservasequipo.ascx.vb" Inherits="website.samm_componentes.controles_alq_pop_reservasequipo" %>
<table class="tbl_marcoFormulario" cellpadding="0" cellspacing="0" width="100%">
    <tr>
        <td>
            <asp:Label ID="lbl_alquilado" runat="server" CssClass="lbl"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="grv_reservas" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField HeaderText="res_metadata,doc_documento_fecha_fh" DataField="doc_documento_alquiler_fecha_fh" />
                    <asp:BoundField HeaderText="res_metadata,doc_documento_prefijo" DataField="doc_documento_alquiler_prefijo" />
                    <asp:BoundField HeaderText="res_metadata,doc_documento_documento_numero" DataField="doc_documento_alquiler_documento_numero" />
                    <asp:BoundField HeaderText="res_metadata,ter_tercero_tercero" DataField="ter_tercero_tercero_nombrecorto" />
                    <asp:BoundField HeaderText="res_metadata,ter_sucursal_sucursal" DataField="ter_sucursal_sucursal" />
                    <asp:BoundField HeaderText="res_metadata,ter_sucursal_direccion" DataField="ter_sucursal_direccion" />
                    <asp:BoundField HeaderText="res_metadata,equ_detallealquiler_fechadespacho_ff" DataField="fechadespacho_ff" />
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
