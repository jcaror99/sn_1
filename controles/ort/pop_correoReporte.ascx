<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_correoReporte.ascx.vb"
    Inherits="website.samm_componentes.controles_ort_pop_correoReporte" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<asp:Panel ID="pnl_comentario" runat="server" DefaultButton="bti_aceptar">
    <table>
        <tr>
            <td>
            </td>
            <td>
                <asp:CheckBox ID="chk_adjuntar" runat="server" CssClass="lbl" />
            </td>
            <td>
                <asp:HiddenField ID="hdd_reportes" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div id="div_envios" runat="server">
                    <table>
                        <tr>
                            <td><div id="div_correos" runat="server" style="overflow: auto; height: 100px; Width:200px; border:1px solid #7F9DB9; white-space: nowrap;" >
                                <asp:DataList ID="dtl_correos" runat="server" ShowHeader="False">
                                        <ItemTemplate>
                                            <table id="tbl_correos" runat="server" cellpadding="0" cellspacing="0" style="width: 100%;">
                                                <tr class="correoSeleccionado">
                                                    <td>
                                                        <asp:Label ID="lbl_tipodestinatario" runat="server" name="tipodest" Text='<%# eval("tipodestinatario") %>'></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lbl_destinatario" runat="server" name="dest" Text='<%# eval("destinatario") %>'></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lbl_correo" runat="server" name="corr" Text='<%# eval("correo") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </div>
                            </td>
                            <td>
                            </td>
                            <td>
                                <asp:TextBox ID="txt_correosAlternativos" runat="server" CssClass="txt_multilinea"
                                    Height="100px" Width="150px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RegularExpressionValidator ID="rev_correosAlternativos" runat="server" ControlToValidate="txt_correosAlternativos"
                                    CssClass="lbl_mensaje" ErrorMessage="*" ForeColor="" ValidationGroup="motivo">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan='3'>
                                <asp:Label ID="lbl_info" runat="server" CssClass="lbl"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <cc1:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="true" ImageUrl="../../images/botones/aceptar.jpg"
                    ValidationGroup="motivo" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
                <asp:Label ID="lbl_error" runat="server" CssClass="lbl_mensaje"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Panel>
