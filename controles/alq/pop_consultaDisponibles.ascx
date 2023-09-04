<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_consultaDisponibles.ascx.vb" Inherits="website.samm_componentes.controles_equ_pop_afiliarEquipos" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple" TagPrefix="uc3" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table>
    <tr>
        <td colspan="3">
            <asp:Label ID="lbl_equiposTercero" runat="server" Text="" CssClass="lbl"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:CheckBox ID="chb_equiposTercero" runat="server" Text="" CssClass="lbl" Checked="false" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:CheckBox ID="chk_tarifastempario" runat="server" Text="" CssClass="lbl" Checked="false" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="grv_equipos" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate>
                            <bti:botonimagen id="bti_asignar" runat="server" imageurl="../../images/botones/seleccionarGrilla.gif" commandargument='<%# eval("id_equipo") %>' commandname="Select" />

                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_campoGrilla,equ_equipo_equipo">
                        <ItemTemplate>
                            <asp:Label ID="lbl_idEquipo" runat="server" Text='<%# eval("id_equipo") %>' CssClass="invisible"></asp:Label>
                            <asp:Label ID="lbl_equipo" runat="server" Text='<%# eval("equipo") %>' Font-Bold="false" CssClass="lbl"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_campoGrilla,equ_equipo_equipo_serial">
                        <ItemTemplate>
                            <asp:Label ID="lbl_serial" runat="server" Text='<%# eval("equipo_serial") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_campoGrilla,ter_sucursal_sucursal">
                        <ItemTemplate>
                            <asp:Label ID="lbl_sucursal" runat="server" Text='<%# eval("sucursal") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_campoGrilla,doc_documento_ot_documento_ot">
                        <ItemTemplate>
                            <asp:Label ID="lbl_documento_ot" runat="server" Text='<%# eval("tipodocumento") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_campoGrilla,doc_estadotipodocumento_estadotipodocumento">
                        <ItemTemplate>
                            <asp:Label ID="lbl_estado" runat="server" Text='<%# eval("estadodocumento") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_campoGrilla,doc_documento_fecha_fh">
                        <ItemTemplate>
                            <asp:Label ID="lbl_fecha" runat="server" Text='<%# eval("fechacreacion") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
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
    <tr>
        <td>
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje" Visible="false"></asp:Label></td>
    </tr>
</table>
