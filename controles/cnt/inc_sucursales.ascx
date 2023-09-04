<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_sucursales.ascx.vb"
    Inherits="website.samm_componentes.controles_cnt_inc_sucursales" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
    <tr>
        <td>
            <asp:GridView ID="grd_sucursal" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:CommandField ShowSelectButton="True">
                        <HeaderStyle CssClass="invisible"></HeaderStyle>
                        <ItemStyle CssClass="invisible"></ItemStyle>
                    </asp:CommandField>
                    <asp:TemplateField HeaderText="id" HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
                        <ItemTemplate>
                            <asp:Label ID="lbl_id" runat="server" Text='<%#eval("id") %>' Visible="false"></asp:Label></ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla,ter_tercero_tercero %>'
                        DataField="tercero"></asp:BoundField>
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla,ter_sucursal_sucursal %>'
                        DataField="sucursal"></asp:BoundField>
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla,ter_sucursal_sucursal_codigo %>'
                        DataField="codigo"></asp:BoundField>
                    <asp:BoundField HeaderText='<%$Resources:res_nombreColumna,cantidad %>' DataField="numero">
                    </asp:BoundField>
                    <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,cnt_contratoequipo_preciovisita %>'>
                        <ItemTemplate>
                            <asp:TextBox ID="txt_visita" runat="server" Text='<%#String.Format("{0:C}",eval("visita"))%>'
                                CssClass='txt_precioGrilla'></asp:TextBox><asp:RequiredFieldValidator ID='rfv_visita'
                                    runat='server' ControlToValidate='txt_visita' ValidationGroup="equipo" SetFocusOnError='True'
                                    CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,cnt_contratoequipo_precioservicio %>'>
                        <ItemTemplate>
                            <asp:TextBox ID="txt_servicio" runat="server" Text='<%#String.Format("{0:C}",eval("servicio"))%>'
                                CssClass='txt_precioGrilla'></asp:TextBox><asp:RequiredFieldValidator ID='rfv_servicio'
                                    runat='server' ControlToValidate='txt_servicio' ValidationGroup="equipo" SetFocusOnError='True'
                                    CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_campoGrilla,cnt_contrato_sucursal_presupuesto">
                        <ItemTemplate>
                            <asp:TextBox ID="txt_presupuesto" runat="server" Text='<%#String.Format("{0:C}",eval("presupuesto"))%>'
                                CssClass='txt_precioGrilla'></asp:TextBox><asp:RequiredFieldValidator ID='rfv_presupuesto'
                                    runat='server' ControlToValidate='txt_servicio' ValidationGroup="equipo" SetFocusOnError='True'
                                    CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator></ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <RowStyle CssClass="gri_item" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                <PagerStyle CssClass="gri_paginacion" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            <cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                ValidationGroup="equipo"></cc1:BotonImagen><asp:ValidationSummary ID='vls' runat='server'
                    ValidationGroup='equipo' CssClass='lbl_mensaje' ForeColor='' HeaderText='<%$Resources:res_mensajes,camposObligatorios %>'>
                </asp:ValidationSummary>
        </td>
    </tr>
</table>
