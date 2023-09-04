<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_consultar.ascx.vb"
    Inherits="website.samm_componentes.controles_cnt_pop_consultar" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<table>
    <tr>
        <td colspan="2" align="center">
            <table>
                <tr>
                    <td class='td_lblFormulario' align="center">
                        <asp:Label ID="Label2" runat="server" Text='<%$Resources:res_metadata,cnt_contratoequipo_id_equipo %>'
                            CssClass="lbl"></asp:Label>
                    </td>
                    <td class='td_controlesFormulario' align="center">
                        <uc1:busquedaAvanzada ID="bus_equipo" runat="server" a_str_tabla="equ_equipo" a_bln_obligatorio="true"
                            a_str_grupoValidacion="e" a_str_campo="equipo,equipo_serial" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <cc1:BotonImagen ID="bti_guardar" runat="server" ImageUrl="~/images/botones/aceptar.jpg"
                ValidationGroup="e" /><asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='e'
                    CssClass='lbl_mensaje' ForeColor='' HeaderText='<%$Resources:res_mensajes,camposObligatorios %>' />
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:GridView ID="grv_contratos" runat="server" AutoGenerateColumns="False">
                <RowStyle CssClass="gri_item" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                <PagerStyle CssClass="gri_paginacion" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
                <Columns>
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla, cnt_contrato_contrato %>' DataField="cnt_contrato_contrato"></asp:BoundField>
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla, cnt_contrato_numero %>' DataField="cnt_contrato_numero"></asp:BoundField>
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla, cnt_contrato_fechaInicio_ff %>' DataField="cnt_contrato_fechaInicio_ff"></asp:BoundField>
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla, cnt_contrato_fechaFin_ff %>' DataField="cnt_contrato_fechaFin_ff"></asp:BoundField>
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla, ter_tercero_tercero%>' DataField="ter_tercero_tercero"></asp:BoundField>
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla, gen_tiposervicio_tiposervicio%>' DataField="gen_tiposervicio_tiposervicio"></asp:BoundField>
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla, cnt_tipocontrato_tipocontrato%>' DataField="cnt_tipocontrato_tipocontrato"></asp:BoundField>
                    <asp:TemplateField HeaderText=''>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%$Resources:res_etiquetas,ver %>' NavigateUrl='<%# eval("lnk") %>'
                                CssClass="lnk"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
