<%@ Page Language="VB" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master" AutoEventWireup="false" CodeBehind="gas_registroGastos.aspx.vb" Inherits="website.samm_web.forms_gas_gas_registroGastos" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada"TagPrefix="uc4" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti'%>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/calendario4meses.ascx" TagName="calendario4meses" TagPrefix="uc5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" runat="Server">
<asp:Label ID="lblTitulo" runat="server" CssClass="lbl_titulo"></asp:Label>
</asp:Content>
    
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" runat="Server">
    
    <table>
        <tr>
        <td align="center" valign="top">
            <uc5:calendario4meses ID="calendario" runat="server" a_bol_mostrarFestivos="true" Visible="True" />
        </td>
        <td valign="top">
          <asp:Panel ID="Panel2" runat="server" CssClass="pnl">
          
    <table class="tbl_marcoFormulario">
        <tr>
            <td >
                <table class="tbl_marcoFormulario" >
                    <tr >
                        <td class='td_lblFormulario'>
                            <asp:Label ID="lbl_gasto" runat="server" CssClass="lbl"></asp:Label>
                        </td>
                        <td >
                            <bus:busquedaAvanzada ID='bus_gasto' runat='server' a_str_tabla='gas_gasto' a_bol_postBack="true" a_bln_obligatorio="false" a_str_grupoValidacion="form"/>
                        </td>
                        <td align ="left" >
                            <asp:HyperLink ID="lnk_gasto" runat="server" CssClass="lbl_mensaje"></asp:HyperLink>
                        </td>
                        <td>
                        <bti:BotonImagen  ID ="bti_legalizar_registroGastos" runat="server" ImageUrl="../../images/botones/gas_aprobarGasto.gif" CssClass="imb" CausesValidation="true" ValidationGroup="form"/>
                         <asp:Label ID="lbl_error_legalizar"  runat ="server" CssClass="lbl_mensaje" Visible="false"></asp:Label>
                        </td>
                        <td>
                        <bti:BotonImagen ID ="bti_imprimirReporteGasto" runat="server" ImageUrl="../../images/botones/print.gif" />
                        </td>
                    </tr>
                    <tr>
                    <td></td>
                   <td>
                     <asp:HyperLink ID="lnk_importar" runat="server" CssClass="lnk"></asp:HyperLink>
                    </td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID='lbl_OTs' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                        <td class='td_controlesFormulario' >
                            <uc2:busquedaAvanzadaMultiple ID="bus_OTs" runat="server" a_str_tabla="doc_documento.ot" a_str_campo="doc_documento_ot_documento_numero,documento.ot" a_bln_obligatorio="true" a_str_grupoValidacion="form"/>
                        </td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID='lbl_fecha' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                        <td class='td_controlesFormulario' >
                            <uc4:fechaAvanzada ID="fecFecha" runat="server" a_str_prefijo="ff" a_bln_obligatorio="true" a_str_grupoValidacion="form"/>
                        </td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID='lbl_detalleGasto' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                        <td class='td_controlesFormulario' >
                            <asp:TextBox ID='txt_detalleGasto' runat='server' MaxLength='100' CssClass='txt'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_gasto" runat="server" ControlToValidate="txt_detalleGasto" ValidationGroup="form" CssClass="lbl_mensaje">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID='lbl_tipoGasto' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                        <td class='td_controlesFormulario' >
                            <bus:busquedaAvanzada ID='bus_tipoGasto' runat='server' a_str_tabla='cat_subtipoCatalogo' a_bol_postBack="true" a_bln_obligatorio="true" a_str_grupoValidacion="form"/>
                        </td>
                    </tr>
                    <tr>
                    <td>
                    </td>
                    </tr>
                    </table>
                    
                    <table>
                    <tr><td><asp:Label ID="lbl_concepto" runat ="server" CssClass ="lbl"></asp:Label><asp:Label ID="lbl_detalle" runat ="server" CssClass ="lbl"></asp:Label></td></tr>
                    <tr>
                        <td colspan="5">
                        <hr />
                            <asp:GridView ID="grd_gastos" runat="server" ShowFooter='true' AutoGenerateColumns="False">
                                <FooterStyle CssClass="gri_pie" />
                                <RowStyle CssClass="gri_item" />
                                <PagerStyle CssClass="gri_paginacion" />
                                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                                <HeaderStyle CssClass="gri_titulo" />
                                <AlternatingRowStyle CssClass="gri_itemAlterno" />
                                <Columns>
                                
                                
                                    <asp:BoundField DataField="id"  Visible ="false"/>
                                    
                                    
                                    <asp:TemplateField HeaderText="gas_detallegasto_id_gasto">
                                        <ItemTemplate>
                                            <asp:label ID="lbl_gasto" runat="server" Text='<%# eval("detalle") %>' CssClass="lbl_grilla" ></asp:label>
                                            <asp:label ID="lbl_id" runat="server" Text='<%# eval("id_detalleGasto") %>' Visible=false></asp:label>
                                            <asp:label ID="lbl_idCatalogo" runat="server" Text='<%# eval("id_catalogo") %>' Visible=false></asp:label>
                                        </ItemTemplate>
                                    </asp:TemplateField> 
                                    
                                    <asp:TemplateField HeaderText="gas_detallegasto_detallegasto" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:TextBox ID="txt_detalle" runat="server" CssClass='txt_itemGrilla' Text='<%# eval("detalleGasto") %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    
                                    <asp:TemplateField HeaderText="gas_detallegasto_cantidad" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:TextBox ID="txt_cantidad" runat="server" CssClass='txt_numeroGrilla' Text='<%# eval("cantidad") %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    
                                    <asp:TemplateField HeaderText="gas_detallegasto_valor" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Bottom">
                                        <ItemTemplate>
                                            <asp:TextBox ID="txt_valor" runat="server" CssClass='txt_precioGrilla' Text='<%# eval("valor") %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    
                                    <asp:TemplateField HeaderText="doc_documento_total" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Bottom">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_total" runat="server" CssClass="lbl_grilla"></asp:Label>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            <asp:Label ID="lbl_valorTotal" runat="server" CssClass="lbl_grilla"></asp:Label>
                                        </FooterTemplate>
                                            <FooterStyle HorizontalAlign="Right"></FooterStyle>
                                            <ItemStyle HorizontalAlign="Right"></ItemStyle>
                                    </asp:TemplateField>
                                 </Columns>
                            </asp:GridView>
                            
                            
                        </td>
                    </tr>
                    <tr>
                        <td align="right" colspan="3">
                        <asp:UpdatePanel ID="udp_panel" runat ="server" >
                        <ContentTemplate>
                       <bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.png" CssClass="imb" CausesValidation="true" ValidationGroup="form"/> 
                        </ContentTemplate>
                         </asp:UpdatePanel>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    </asp:Panel>
     </td> 
     </tr>
     </table>
    <uc1:popup ID='popup1' runat='server' a_bol_visible='false' />
</asp:Content>
    
    
