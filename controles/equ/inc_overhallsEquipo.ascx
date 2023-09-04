<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_overhallsEquipo.ascx.vb"
    Inherits="website.samm_componentes.controles_equ_inc_overhallsEquipo" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="act" %>
<table>
    <tr>
        <td>
            <img alt="" id="imb_ext" runat="server" src="../../images/botones/agregar.gif" class="lnk" />
            <act:CollapsiblePanelExtender ID="clp_nuevo" runat="server" TargetControlID="pnl_nuevo"
                CollapsedSize="0" Collapsed="True" ExpandControlID="imb_ext" CollapseControlID="imb_ext"
                TextLabelID="lbl_indicador" AutoCollapse="False" AutoExpand="False" ScrollContents="false"
                ExpandedImage="../../images/botones/agregar.gif" CollapsedImage="../../images/botones/agregar.gif"
                ImageControlID="imb_ext" ExpandDirection="Vertical">
            </act:CollapsiblePanelExtender>
            <asp:Panel ID="pnl_nuevo" runat="server" CssClass="pnl" GroupingText="<%$Resources:res_etiquetas_equ, nuevoHorometro %>">
                <table>
                    <tr>
                        <td class="tbl_marcoFormulario">
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbl_reparar" runat="server" CssClass="lbl"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:RadioButtonList ID="rbl_reparar" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="1"></asp:ListItem>
                                            <asp:ListItem Value="0"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID='rfvRepara' runat='server' ControlToValidate='rbl_reparar'
                                            ValidationGroup="inc_horometro" SetFocusOnError='True' CssClass="lbl_mensaje"
                                            ForeColor="">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="<%$Resources:res_metadata,equ_overhall_horometro%>"
                                            CssClass="lbl"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtNuevoHorometro" runat="server" CssClass="txt_numero" ValidationGroup="inc_horometro"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID='rfvHorometro' runat='server' ControlToValidate='txtNuevoHorometro'
                                            ValidationGroup="inc_horometro" SetFocusOnError='True' CssClass="lbl_mensaje"
                                            ForeColor="">*</asp:RequiredFieldValidator>
                                        <act:FilteredTextBoxExtender ID="ftb_horometro1" runat="server" FilterType="Numbers,Custom"
                                            TargetControlID="txtNuevoHorometro">
                                        </act:FilteredTextBoxExtender>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbl_reiniciar" runat="server" CssClass="lbl"> </asp:Label>
                                    </td>
                                    <td>
                                        <asp:RadioButtonList ID="rbl_reiniciar" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="1"></asp:ListItem>
                                            <asp:ListItem Value="0"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID='rfvReiniciar' runat='server' ControlToValidate='rbl_reiniciar'
                                            ValidationGroup="inc_horometro" SetFocusOnError='True' CssClass="lbl_mensaje"
                                            ForeColor="">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text="<%$Resources:res_metadata, equ_ciclohorometro_horometroinicial %>"
                                            CssClass="lbl"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtHorometroInicial" runat="server" CssClass="txt_numero" ValidationGroup="inc_horometro"></asp:TextBox>

                                        <act:FilteredTextBoxExtender ID="ftb_horometro" runat="server" FilterType="Numbers,Custom"
                                            TargetControlID="txtHorometroInicial">
                                        </act:FilteredTextBoxExtender>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbl_afectaProyeccion" runat="server" CssClass="lbl"> </asp:Label>
                                    </td>
                                    <td>
                                        <asp:RadioButtonList ID="rbl_afectarProyeccion" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="1"></asp:ListItem>
                                            <asp:ListItem Value="0"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID='rfvAfectar' runat='server' ControlToValidate='rbl_afectarProyeccion'
                                            ValidationGroup="inc_horometro" SetFocusOnError='True' CssClass="lbl_mensaje"
                                            ForeColor="">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblFecha" runat="server" Text="<%$Resources:res_metadata,equ_overhall_fecha_ff%>"
                                            CssClass="lbl"></asp:Label></td>
                                    <td style="text-align: center">
                                        <uc1:fechaAvanzada ID="fecFecha" runat="server" a_str_grupoValidacion="inc_horometro">
                                        </uc1:fechaAvanzada>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td style="text-align: center" colspan="2">
                                        <cc1:BotonImagen ID="btiAceptar" runat="server" ImageUrl="~/images/botones/aceptar.png"
                                            ValidationGroup="inc_horometro" CausesValidation="true"></cc1:BotonImagen>
                                    </td>
                                </tr>

                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblmensaje" runat="server" CssClass="lbl_mensaje" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td>
            <table>
                <tr>
                    <td style="vertical-align: top">
                        <asp:Label runat="server" ID="lbl_titulo1" CssClass="lbl_etiquetaInformacion"></asp:Label>
                        <asp:GridView ID="grvCiclos" runat="server" AutoGenerateColumns="False" ShowFooter="true">
                            <EmptyDataTemplate>
                                <asp:Label ID="lbl" runat="server" CssClass="lbl_mensaje" Text='<%$Resources:res_mensajes,grillaVacia %>'></asp:Label>
                            </EmptyDataTemplate>
                            <Columns>
                                <asp:TemplateField HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible"
                                    FooterStyle-CssClass="invisible">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_id" runat="server" Text='<%#eval("id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="nciclo" HeaderText='<%$ Resources:res_campogrilla,equ_ciclohorometro_nciclo %>'>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="horometroInicial" HeaderText='<%$ Resources:res_campogrilla, equ_cicloHorometro_horometroinicial %>'>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="horometroFinal" HeaderText='<%$ Resources:res_campogrilla,equ_cicloHorometro_horometrofinal %>'>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="horas">
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                            <FooterStyle CssClass="gri_pie" />
                            <RowStyle CssClass="gri_item" />
                            <PagerStyle CssClass="gri_paginacion" />
                            <HeaderStyle CssClass="gri_titulo" />
                            <AlternatingRowStyle CssClass="gri_itemAlterno" />
                            <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                        </asp:GridView>
                    </td>
                    <td style="vertical-align: top">
                        <asp:Label runat="server" ID="lbl_titulo2" CssClass="lbl_etiquetaInformacion"></asp:Label>
                        <asp:GridView ID="grd_overhalls" runat="server" AutoGenerateColumns="False">
                            <EmptyDataTemplate>
                                <asp:Label ID="lbl" runat="server" CssClass="lbl_mensaje" Text='<%$Resources:res_mensajes,grillaVacia %>'></asp:Label>
                            </EmptyDataTemplate>
                            <Columns>
                                <asp:TemplateField HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_id" runat="server" Text='<%#eval("id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="fecha_ff" HeaderText='<%$ Resources:res_nombrecolumna, fecha %>'>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="horometro" HeaderText='<%$ Resources:res_campogrilla,equ_trazabilidad_horometro %>'>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
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
        </td>
    </tr>
</table>
