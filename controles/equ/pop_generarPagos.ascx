<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_generarPagos.ascx.vb"
    Inherits="website.samm_componentes.controles_equ_pop_generarPagos" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix ="bus" %>    
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register src="~/controles/general/fechaAvanzada.ascx" tagname="fechaAvanzada" tagprefix="uc2" %>
<table>

<tr> <td><asp:Panel ID="pnl_buscarEquipos" runat =server CssClass="lbl"   > <table>
<tr>
    <td> <asp:RadioButtonList ID="rbl_alquiler" runat="server" CssClass="lbl" RepeatDirection='Horizontal' >
    <asp:ListItem Value="0" ></asp:ListItem>
     <asp:ListItem Value="1" ></asp:ListItem>
    </asp:RadioButtonList> </td>
    </tr> 
<tr>
    <td>
    <table id="tbl_buscar" runat="server"  >
    <tr><td><asp:Label ID="lbl_sucursal" runat ="server" CssClass ="lbl"></asp:Label>  </td><td class='td_lblFormulario' > <bus:busquedaAvanzada ID ="bus_sucursal" runat="server" CssClass ="lbl" a_str_tabla ="ter_sucursal" /></td></tr>
    <tr><td><asp:Label ID ="lbl_zona" runat ="server" CssClass ="lbl"></asp:Label></td><td class='td_lblFormulario' ><bus:busquedaAvanzada ID ="bus_zona" runat ="server" CssClass ="lbl" a_str_tabla ="gen_zona" /></td></tr>
    <tr><td></td><td><bti:BotonImagen ID="bti_buscar" runat="server" ImageUrl="../../images/botones/aceptar.png"  CausesValidation="false" /></td></tr>
    </table>
    </td>
    </tr>
<tr>
        <td colspan="3" align="center">
            <asp:GridView ID="grd_detalleAlquiler" runat="server" AutoGenerateColumns="False">
                <EmptyDataTemplate>
                    <asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, grillaVacia %>'></asp:Label></EmptyDataTemplate>
                <Columns>
                    <asp:TemplateField HeaderText="">
                        <HeaderTemplate>
                            <asp:CheckBox ID="chb_seleccionar" runat="server" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_idAlquiler" runat="server" Text='<%# eval("id_alquiler") %>' CssClass="invisible"/>
                            <asp:Label ID="lbl_periodoAlquiler" runat="server" Text='<%# eval("periodoAlquiler") %>' CssClass="invisible"/>
                            <asp:CheckBox ID="chb_seleccionar" runat="server" 
                                Checked='<%# eval("checked") %>' />
                            <asp:Label ID="lbl_idEquipo" runat="server" Text='<%# eval("id_equipo") %>' CssClass="invisible"/>
                            <asp:Label ID="lbl_valorStandBy" runat="server" Text='<%# eval("valorStandBy") %>' CssClass="invisible"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla,equ_equipo_equipo %>' DataField="serial"
                        ItemStyle-HorizontalAlign="Center" >
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundField>
                    <%--<asp:BoundField HeaderText='<%$Resources:res_campoGrilla,equ_equipo_equipo_serial %>'
                        DataField='serial' ItemStyle-HorizontalAlign="Center" />--%>
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla,equ_detallealquiler_fechadespacho_ff %>'
                        DataField='despacho' ItemStyle-HorizontalAlign="Center" >
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundField>
                    <asp:TemplateField HeaderText='<%$Resources:res_etiquetas_equ,fechaFacturaAnterior %>'>
                        <ItemTemplate>
                            <asp:Label ID="lbl_fechaUltimaFactura" runat="server" Text='<%# eval("fechaUltimaFactura_fh") %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,equ_detallealquiler_fechadevolucion_ff %>'>
                        <ItemTemplate>
                            <asp:Label ID="lbl_fechaDevolucion" runat="server" Text='<%# eval("fechaDevolucion_ff") %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='<%$Resources:res_etiquetas_equ,fechaFacturaActual%>'>
                        <ItemTemplate>
                            <uc2:fechaAvanzada ID="fec_fechaFacturar" runat="server" 
                                a_bln_obligatorio="True" a_str_grupoValidacion="alq" a_str_prefijo="ff" FechaSeleccionada='<%# eval("fechaAFacturar") %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,equ_detallealquiler_valorperiodo %>'>
                        <ItemTemplate>
                            <asp:TextBox ID="txt_valor" runat="server" CssClass="txt_numero" Text='<%# eval("valorPeriodo") %>'></asp:TextBox>
                            <act:FilteredTextBoxExtender ID='ftb_valor' runat='server' TargetControlID='txt_valor' FilterType='Numbers,Custom'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,equ_detallealquiler_valormulta %>'>
                        <ItemTemplate>
                            <asp:TextBox ID="txt_multa" runat="server" CssClass="txt_numero" Text='<%# eval("valorMulta") %>'></asp:TextBox>
                            <act:FilteredTextBoxExtender ID='ftb_multa' runat='server' TargetControlID='txt_multa' FilterType='Numbers,Custom'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,equ_detallealquiler_valorhorastandby %>'>
                        <ItemTemplate>
                            <asp:TextBox ID="txt_standBy" runat="server" CssClass="txt_numero" Text="0"></asp:TextBox>
                            <act:FilteredTextBoxExtender ID='ftb_standBy' runat='server' TargetControlID='txt_standBy' FilterType='Numbers,Custom'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="<%$Resources:res_campoGrilla,equ_detallealquiler_horometro %>">
                        <ItemTemplate>
                            <asp:TextBox ID="txt_horometro" runat="server" CssClass="txt_numero" Visible='<%# IIF(eval("mHorometro"),"true","false") %>'></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="rfv_horometro" runat="server" ControlToValidate="txt_horometro" 
                                CssClass="lbl_mensaje" ValidationGroup="alq">*</asp:RequiredFieldValidator>--%>
                            <act:FilteredTextBoxExtender ID='ftb_horometro' runat='server' TargetControlID='txt_horometro' FilterType='Numbers,Custom'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="<%$Resources:res_campoGrilla,equ_equipo_ultimalectura_fh %>">
                        <ItemTemplate>
                            <uc2:fechaAvanzada ID="fec_ultimaLectura" runat="server" 
                                a_bln_obligatorio="True" a_str_grupoValidacion="alq" a_str_prefijo="fh" FechaSeleccionada='<%# eval("fechaAFacturar") %>' Visible='<%# IIF(eval("mHorometro"),"true","false") %>'/>
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
</table></asp:Panel></td></tr>
<tr>
<td>
<asp:Panel ID ="pnl_detalleFactura" runat="server" CssClass="lbl"  >
<table>
<tr><td>
    <table> <tr>
        <td>
            <asp:Label ID="lbl_numFactura" runat="server" CssClass="lbl" Text=""></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_numFactura" runat="server" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_fechaFactura" runat="server" CssClass="lbl" Text=""></asp:Label>
        </td>
        <td>
            <uc2:fechaAvanzada ID="fec_fechaFactura" runat="server" 
                                a_bln_obligatorio="True" a_str_grupoValidacion="alq" a_str_prefijo="ff" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_valorFactura" runat="server" CssClass="lbl" Text=""></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_valorFactura" runat="server" CssClass="txt_numero"></asp:TextBox>
            <act:FilteredTextBoxExtender ID='ftb_valorF' runat='server' TargetControlID='txt_valorFactura' FilterType='Numbers,Custom'/>
        </td>
    </tr>    
    <tr>
        <td>
            <asp:Label ID="lbl_calcularP" runat="server" Text=""></asp:Label>
        </td>
        <td>
            <bti:BotonImagen ID="bti_calcularParciales" runat="server" ImageUrl="../../images/botones/equ_calcularParciales.gif"
                CausesValidation="true" ValidationGroup="alq" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_calcularT" runat="server" Text=""></asp:Label>
        </td>
        <td>
            <bti:BotonImagen ID="bti_calcularFactura" runat="server" ImageUrl="../../images/botones/equ_calcularTotales.gif"
                CausesValidation="true" ValidationGroup="alq" />
        </td>
    </tr> </table>
    
    </td></tr>   
    <tr>
        <td align="center" colspan="3">
            <bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.png"
                CausesValidation="true" ValidationGroup="alq" />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="3">
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
</table>

</asp:Panel>
</td>
</tr>  
</table>