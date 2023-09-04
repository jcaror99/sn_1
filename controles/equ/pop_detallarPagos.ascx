<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_detallarPagos.ascx.vb"
    Inherits="website.samm_componentes.controles_equ_pop_detallarPagos" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
    <tr>
        <td id="td_pre" runat="server">
            <%--<asp:HyperLink ID="hyp_pre" runat="server" CssClass="lnk"></asp:HyperLink>--%>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:GridView ID="grd_detallePagos" runat="server" AutoGenerateColumns="False">
                <EmptyDataTemplate>
                    <asp:Label ID="lbl" runat="server" CssClass="lbl_mensaje" Text='<%$Resources:res_mensajes,grillaVacia %>'></asp:Label></EmptyDataTemplate>
                <FooterStyle CssClass="gri_pie" />
                <RowStyle CssClass="gri_item" />
                <PagerStyle CssClass="gri_paginacion" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                <Columns>
                    <asp:BoundField HeaderText="<%$Resources:res_campoGrilla,equ_equipo_equipo %>" DataField="equipo" />
                    <asp:TemplateField HeaderText="<%$Resources:res_nombrecolumna,valor %>">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%# eval("id") %>' Visible="false"></asp:Label>
                            <asp:TextBox ID="txt_valor" runat="server" CssClass='txt_precio' Text='<%# eval("valor") %>'
                                ValidationGroup="valor" Enabled='<%# not eval("facturado") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_valor" runat="server" ControlToValidate="txt_valor" CssClass="lbl_mensje" ValidationGroup="valor">*</asp:RequiredFieldValidator><act:filteredtextboxextender
                                id='ftb_valor' runat='server' targetcontrolid='txt_valor' filtertype='Numbers,Custom' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,equ_trazabilidad_horometro %>'>
                        <ItemTemplate>
                            <asp:TextBox ID="txt_horometro" runat="server" CssClass='txt_numero' Text='<%# eval("horometro") %>'
                                ValidationGroup="valor" Visible='<%# eval("manejaHorometro") %>'></asp:TextBox><asp:RequiredFieldValidator
                                    ID="rfv_horometro" runat="server" ControlToValidate="txt_horometro" CssClass="lbl_mensje"
                                    ValidationGroup="valor" Enabled='<%# eval("manejaHorometro") %>'>*</asp:RequiredFieldValidator><act:filteredtextboxextender
                                        id='ftb_horometro' runat='server' targetcontrolid='txt_horometro' filtertype='Numbers,Custom'
                                        enabled='<%# eval("manejaHorometro") %>' /></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,equ_detallealquiler_valorhora %>'>
                        <ItemTemplate>
                            <asp:Label ID="lbl_valorHora" runat="server" Text='<%# eval("valorHora") %>' 
                                CssClass='lbl'></asp:Label></ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td align="center">
            <bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="true" ImageUrl="../../images/botones/aceptar.png"
                ValidationGroup="valor" />
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
</table>
