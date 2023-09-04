<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_contratosEquipo.ascx.vb"
    Inherits="website.samm_componentes.controles_equ_inc_contratosEquipo" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="ba2" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table>
    <tr>
        <td colspan="2">
            <asp:Label ID="lbl_contrato" runat="server" CssClass="lbl"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_fechaDesde" runat="server" CssClass="lbl"></asp:Label>
            <uc2:fechaAvanzada ID="fec_fecha_ini" runat="server" a_bln_obligatorio="true" a_str_prefijo="fh" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_fechaHasta" runat="server" CssClass="lbl"></asp:Label>
            <uc2:fechaAvanzada ID="fec_fecha_fin" runat="server" a_bln_obligatorio="true" a_str_prefijo="fh" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_tempario" runat="server" CssClass="lbl"></asp:Label>
            <ba2:busquedaAvanzada ID="bus_tempario" runat="server" CssClass='_bus' a_str_tabla="cat_catalogo.tempario" />
        </td>
    </tr>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="false" CssClass="imb"
                ImageUrl="../../images/botones/aceptar.png" />
        </td>
    </tr>
    <tr>
        <td>
            <bti:BotonImagen ID="btn_editar" runat="server" CausesValidation="false" CssClass="imb"
                ImageUrl="~/images/botones/editar.gif" Enabled="false"></bti:BotonImagen>
        </td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="grd_contratos" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="3" ShowHeader="false">
                <FooterStyle CssClass="gri_pie" />
                <RowStyle CssClass="gri_item" />
                <PagerStyle CssClass="gri_paginacion" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                <RowStyle CssClass="gri_item" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbk_contrato" runat="server" CommandArgument='<% #Eval("id") %>' Text='<% #Eval("contrato") %>' />
                            <asp:GridView ID="grd" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanging="grdTrabajos_Seleccionar" OnPageIndexChanging="grd_PageIndexChanging" OnRowDataBound="grd_equipo_RowDataBound">
                                <FooterStyle CssClass="gri_pie" />
                                <RowStyle CssClass="gri_item" />
                                <PagerStyle CssClass="gri_paginacion" />
                                <HeaderStyle CssClass="gri_titulo" />
                                <AlternatingRowStyle CssClass="gri_itemAlterno" />
                                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                                <RowStyle CssClass="gri_item" />
                                <Columns>
                                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" HeaderStyle-CssClass="invisible"
                                        ItemStyle-CssClass="invisible" ControlStyle-CssClass="invisible" />
                                    <asp:TemplateField Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_id" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField HeaderText="res_campoGrilla,doc_documento_fecha_fh"
                                        DataField="fecha_ff" />
                                    <asp:TemplateField HeaderText="res_metadata,doc_documento_ot_centrocosto_id_documento_ot">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_prefijo" runat="server" CssClass='lbl' Text='<%#Eval("doc_documento_prefijo") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField HeaderText="res_metadata,equ_equipo_horometroactual"
                                        DataField="Horometro" />
                                    <asp:BoundField HeaderText="res_metadata,equ_equipoatributo_id_equipo"
                                        DataField="equ_equipo_equipo" />
                                    <asp:BoundField HeaderText="res_campoGrilla,cat_catalogo_tempario_catalogo_tempario"
                                        DataField="cat_catalogo_tempario_catalogo_tempario" />
                                    <asp:BoundField HeaderText="res_campoGrilla,cnt_contrato_fechafin_ff"
                                        DataField="cnt_contrato_fechafin_ff" />
                                    <asp:TemplateField HeaderText="res_campoGrilla,cnt_contrato_proveedor">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_proveedor" runat="server" ssClass='lbl'><%# IIF(Eval("ProveedorContrato") ="", Eval("ProveedorConfigContrato"),Eval("ProveedorContrato")) %></asp:Label>

                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>
                            </asp:GridView>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>


        </td>
    </tr>
</table>
