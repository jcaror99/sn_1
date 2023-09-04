<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_detalleProgramacion.ascx.vb"
    Inherits="website.samm_componentes.controles_cnt_pop_detalleProgramacion" %>
<table >
<tr>
<td>
<asp:GridView ID="grd_programacion" runat="server" AutoGenerateColumns="false" >
<Columns>
<asp:BoundField DataField ="fecha"  HeaderText="res_metadata,doc_documento_fecha_fh" />
<asp:BoundField DataField ="nombre"  HeaderText="res_metadata,seg_usuario_nombre" />
<asp:BoundField DataField ="Hora de Cruce"  HeaderText="res_etiquetas,horaCruce" />
<asp:BoundField DataField ="motivo"  HeaderText="res_metadata,ort_programacion_programacion" />
<%--<asp:BoundField DataField ="fechaNueva"  HeaderText="res_etiquetas,fechaNueva" />
--%></Columns>
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
