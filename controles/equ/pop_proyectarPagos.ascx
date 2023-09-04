<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_proyectarPagos.ascx.vb" Inherits="website.samm_componentes.controles_equ_pop_proyectarPagos" %>
<%@ Register src="~/controles/general/busquedaAvanzada.ascx" tagname="busquedaAvanzada" tagprefix="uc2" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register src="~/controles/general/fechaAvanzada.ascx" tagname="fechaAvanzada" tagprefix="uc1" %>

<table>
    <tr>
        <td>
        <asp:GridView ID="grd_detalleAlquiler" runat="server" AutoGenerateColumns="False">
                <EmptyDataTemplate>
                    <asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, grillaVacia %>'></asp:Label></EmptyDataTemplate>
                <Columns>
                    <asp:TemplateField HeaderText="">
                        <HeaderTemplate>
                            <asp:CheckBox ID="chb_seleccionar" runat="server" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="chb_seleccionar" runat="server" />
                            <asp:Label ID="lbl_periodo" runat="server" Text='<%# eval("periodo") %>' CssClass="invisible"/>
                            <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' CssClass="invisible"/>
                            <asp:Label ID="lbl_idEquipo" runat="server" Text='<%# eval("id_equipo") %>' CssClass="invisible"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla,equ_equipo_equipo %>' DataField="equipo"
                        ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundField>
                    <%--<asp:BoundField HeaderText='<%$Resources:res_campoGrilla,equ_equipo_equipo_serial %>'
                        DataField='serial' ItemStyle-HorizontalAlign="Center" />--%>
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla,equ_detallealquiler_fechadespacho_ff %>'
                        DataField='despacho' ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundField>
                    <%--<asp:BoundField HeaderText='<%$Resources:res_campoGrilla,ter_sucursal_sucursal %>'
                        DataField='sucursal' ItemStyle-HorizontalAlign="Center" />--%>
                    <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,equ_detallealquiler_fechaultimafactura_fh %>'>
                        <ItemTemplate>
                            <asp:Label ID="lbl_fechaUltimaFactura" runat="server" Text='<%# Format(eval("fechaUltimaFactura_fh"),"dd/MM/yyyy") %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="<%$Resources:res_campoGrilla,equ_detallealquiler_valorperiodo %>">
                        <ItemTemplate>
                            <asp:TextBox ID="txt_valor" runat="server" CssClass="txt_precioGrilla" 
                                Text='<%# eval("valorPeriodo") %>'></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="rfv_valor" runat="server" ControlToValidate="txt_valor" 
                                CssClass="lbl_mensaje" ValidationGroup="alq">*</asp:RequiredFieldValidator>--%>
                            <act:FilteredTextBoxExtender ID='ftb_valor' runat='server' TargetControlID='txt_valor' FilterType='Numbers,Custom'/>
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
            <td colspan="2">
                <table>
                    <tr>
                        <td>
                            <table id="tbl_periodo" runat="server" style="text-align: left">
                                <tr>
                                    <td class='td_lblFormulario'>
                                        <asp:Label ID="Label3" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,cnt_contratodetallevisita_fecha_ff %>"></asp:Label>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <uc1:fechaAvanzada ID="fec_inicioVisitas" runat="server" a_str_prefijo="ff" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class='td_lblFormulario'>
                                        <asp:Label ID="lbl_frecuencia" runat="server" Text='<%$Resources:res_metadata,cnt_contratodetallevisita_frecuencia %>'
                                            CssClass="lbl"></asp:Label>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <asp:DropDownList ID="drp_frecuencia" runat="server" CssClass="drp">
                                            <asp:ListItem Text='<%$Resources:res_controles,seleccione %>' Selected="True" Value=""></asp:ListItem>
                                            <asp:ListItem Value="1" Text='<%$Resources:res_controles,semanal %>'></asp:ListItem>
                                            <asp:ListItem Value="2" Text='<%$Resources:res_controles,mensual %>'></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID='rfv_frecuencia' runat='server' ControlToValidate='drp_frecuencia'
                                            ValidationGroup="cnt" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class='td_lblFormulario'>
                                        <asp:Label ID="lbl_cada" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,cnt_contratodetallevisita_cadan %>'></asp:Label>
                                    </td>
                                    <td class='td_controlesFormulario'>
                                        <asp:TextBox ID="txt_cada" runat="server" CssClass="txt"></asp:TextBox><asp:RequiredFieldValidator
                                            ID='rfv_cada' runat='server' ControlToValidate='txt_cada' ValidationGroup="cnt"
                                            SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
                                                id='ftb_cada' runat='server' targetcontrolid='txt_cada' filtertype='Numbers,Custom' />
                                        <asp:RangeValidator ID="rgv_cada" runat="server" ControlToValidate="txt_cada" MaximumValue="60"
                                            MinimumValue="0" Type="Integer" CssClass='lbl_mensaje' ValidationGroup="cnt"
                                            ForeColor="" ErrorMessage="<%$ Resources: res_mensajes,rangoInvalido %>">*</asp:RangeValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td_lblFormulario">
                                        <asp:Label ID="lbl_estrategia" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,cnt_contratodetallevisita_estrategia %>'></asp:Label>
                                    </td>
                                    <td class="td_controlesFormulario">
                                        <asp:DropDownList ID="drp_estrategia" runat="server" CssClass="drp">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID='rfv_estrategia' runat='server' ControlToValidate='drp_estrategia'
                                            ValidationGroup="cnt" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td_lblFormulario">
                                        <asp:Label ID="lbl_dia" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,cnt_contratodetallevisita_dia %>'></asp:Label>
                                    </td>
                                    <td class="td_controlesFormulario">
                                        <asp:DropDownList ID="drp_dias_1" runat="server" CssClass="drp">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID='rfv_dias_1' runat='server' ControlToValidate='drp_dias_1'
                                            ValidationGroup="cnt" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><asp:DropDownList
                                                ID="drp_dias_2" runat="server" CssClass="drp">
                                            </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID='rfv_dias_2' runat='server' ControlToValidate='drp_dias_2'
                                            ValidationGroup="cnt" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_guardar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                ValidationGroup="alq" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
                </table>
            </td>
        </tr>
</table>
