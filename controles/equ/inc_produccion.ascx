<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_produccion.ascx.vb"
    Inherits="website.samm_componentes.controles_inc_produccion" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>

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
            <bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="false" CssClass="imb"
                ImageUrl="../../images/botones/aceptar.png" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="grd_produccion_equipo" runat="server"
                AutoGenerateColumns="False" UseAccessibleHeader="False" BorderStyle="None">

                <Columns>

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="false"> </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="<%$ Resources:res_campoGrilla,cnt_contrato_fechainicio_ff %>"
                        ItemStyle-HorizontalAlign="Center" DataField='fechaHoraInicio_ff' />
                    <asp:BoundField HeaderText="<%$ Resources:res_campoGrilla,dis_evento_evento %>"
                        ItemStyle-HorizontalAlign="Center" DataField='evento' />
                    <asp:BoundField HeaderText="<%$ Resources:res_campoGrilla,dis_evento_id_motivoevento %>"
                        ItemStyle-HorizontalAlign="Center" DataField='dis_motivoEvento_motivoEvento' />
                    <asp:BoundField HeaderText="<%$ Resources:res_campoGrilla,seg_usuario_usuario %>"
                        ItemStyle-HorizontalAlign="Center" DataField='seg_usuario_nombre' />

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ID="imb_listaChequeo" ToolTip="listaChequeo" runat="server" ImageUrl="../../images/iconos/adjuntos.png"
                                Visible="True" CommandName="listaChequeo" CommandArgument='<%#Eval("id") %>' CausesValidation="false" />

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
        <td colspan="4">
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje" Visible="false"></asp:Label>
        </td>
    </tr>

</table>
