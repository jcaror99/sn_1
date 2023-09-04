<%@ Page Language="VB" MasterPageFile='~/master/master/mas_formulariosinGrilla.master'
    AutoEventWireup="false" CodeBehind="detalleAlquiler.aspx.vb" Inherits="website.samm_web.forms_equ_detalleAlquiler" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="mul" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada"
    TagPrefix="bus" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada"
    TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc2" %>
<%@ Register Src='~/controles/general/informacion.ascx' TagName='informacion'
    TagPrefix='inf' %>
<asp:Content ID='content5' runat='server' ContentPlaceHolderID='cph_tituloPagina'>
    <asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo'></asp:Label>
</asp:Content>
<asp:Content ID='Content2' ContentPlaceHolderID='cph_general' runat='Server'>
    <table class="tbl_marcoFormulario">
        <tr>
            <td>
                <inf:informacion ID='infPrincipal' runat='server' a_bln_orientacionVertical="false" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="pnl_buscarEquipos" runat="server" CssClass="lbl">
                    <table>
                        <tr>
                            <td>
                                <asp:RadioButtonList ID="rbl_alquiler" runat="server" CssClass="lbl" RepeatDirection='Horizontal'>
                                    <asp:ListItem Value="0"></asp:ListItem>
                                    <asp:ListItem Value="1"></asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table id="tbl_buscar" runat="server">
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbl_sucursal" runat="server" CssClass="lbl"></asp:Label>
                                        </td>
                                        <td class='td_lblFormulario'>
                                            <bus:busquedaAvanzada ID="bus_sucursal" runat="server" a_bol_postBack ="true"  a_str_tabla="ter_sucursal" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbl_zona" runat="server" CssClass="lbl"></asp:Label>
                                        </td>
                                        <td class='td_lblFormulario'>
                                            <bus:busquedaAvanzada ID="bus_zona" runat="server" a_str_tabla="gen_zona" />
                                        </td>
                                    </tr>
                                        <tr>
                                        <td>
                                            <asp:Label ID="lbl_alquiler" runat="server" CssClass="lbl"></asp:Label>
                                        </td>
                                        <td class='td_lblFormulario'>
                                            <mul:busquedaAvanzadaMultiple ID="bus_alquiler" runat="server" a_str_tabla="doc_documento" a_str_campo="documento,documento_numero,prefijo" a_str_filtroTemporal="id_subtipodocumento in (select id from doc_subtipodocumento where id_tipodocumento=9) and id_estadotipodocumento in(select id from doc_estadotipodocumento where id_tipodocumento=9 and estadotipodocumento_codigo not in('CAN','CER'))" />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                        </td>
                                        <td>
                                            <bti:BotonImagen ID="bti_buscar" runat="server" ImageUrl="../../images/botones/aceptar.png"
                                                CausesValidation="false" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="white-space:nowrap;">
                                <table>
                                    <tr>
                                    <td>
                                        <uc2:fechaAvanzada ID="fec_fechaParaTodos" runat="server" a_bln_obligatorio="False" a_str_prefijo="fh" />   
                                    </td>
                                    <td>
                                           <bti:BotonImagen ID="bti_aplicarFecha" runat="server" ImageUrl="../../images/botones/equ_aplicarFecha.jpg" CausesValidation="false" />
                                    </td>
                                    </tr>
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
                                                <asp:HiddenField ID="hdd_id" runat="server" Value='<%# eval("id") %>' />
                                                <asp:Label ID="lbl_idAlquiler" runat="server" Text='<%# eval("id_alquiler") %>' CssClass="invisible" />
                                                <asp:Label ID="lbl_periodoAlquiler" runat="server" Text='<%# eval("periodoAlquiler") %>'
                                                    CssClass="invisible" />
                                                <asp:CheckBox ID="chb_seleccionar" runat="server" Checked='<%# eval("checked") %>' />
                                                <asp:Label ID="lbl_idEquipo" runat="server" Text='<%# eval("id_equipo") %>' CssClass="invisible" />
                                                <asp:Label ID="lbl_valorStandBy" runat="server" Text='<%# eval("valorStandBy") %>'
                                                    CssClass="invisible" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:DropDownList ID="drp_periodoAlquiler" runat="server" CssClass="drp" AutoPostBack="true"
                                                    OnSelectedIndexChanged="drp_tarifasAlquiler_selected">
                                                </asp:DropDownList>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_campoGrilla,equ_equipo_equipo'>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_equipo" runat="server" Text='<%# eval("serial") %>' ToolTip='<%# eval("equipo") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField  HeaderText='res_campoGrilla,equ_detallealquiler_fechadespacho_ff'>
                                            <ItemTemplate>
                                                <asp:label ID="lbl_despacho" runat="server"  Text='<%# eval("despacho") %>'  />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_nombreColumna,fechaCorteInicial'>
                                            <ItemTemplate>
                                              <uc2:fechaAvanzada ID="fec_fechaUltimaFactura" runat="server" a_bln_obligatorio="True"
                                                    a_str_grupoValidacion="alq" a_str_prefijo="fh" FechaSeleccionada='<%# eval("fechaUltimaFactura_fh") %>'
                                                    Enable='<%# IIF(eval("fechaUltimaFactura_fh")=#1/1/1900# ,"true","false") %>' />
                                                    
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_fechadevolucion_ff'>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_fechaDevolucion" runat="server" Text='<%# eval("fechaDevolucion_ff") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_nombreColumna,fechaCorteFinal'>
                                            <ItemTemplate>
                                                <uc2:fechaAvanzada ID="fec_fechaFacturar" runat="server" a_bln_obligatorio="True"
                                                    a_str_grupoValidacion="alq" a_str_prefijo="ff" FechaSeleccionada='<%# eval("fechaAFacturar") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_valorperiodo'>
                                            <ItemTemplate>
                                                <asp:TextBox ID="txt_valor" runat="server" CssClass="txt_numero"
                                                    Text='<%# eval("valorPeriodo") %>'></asp:TextBox>
                                                <act:FilteredTextBoxExtender ID='ftb_valor' runat='server' TargetControlID='txt_valor'
                                                    FilterType='Numbers,Custom' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText='res_campoGrilla,cat_listaprecio_porcentajedescuento'>
                                            <ItemTemplate>
                                                <asp:TextBox ID="txt_descuento" runat="server" CssClass="txt_numero" Enabled="true" 
                                                 Text='<%# eval("porcdto") %>' ></asp:TextBox>
                                          </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_valormulta'>
                                            <ItemTemplate>
                                                <asp:TextBox ID="txt_multa" runat="server" CssClass="txt_numero" Text='<%# eval("valorMulta") %>'></asp:TextBox>
                                                <act:FilteredTextBoxExtender ID='ftb_multa' runat='server' TargetControlID='txt_multa'
                                                    FilterType='Numbers,Custom' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_valorhorastandby'>
                                            <ItemTemplate>
                                                <asp:TextBox ID="txt_standBy" runat="server" CssClass="txt_numero" Text='<%# eval("standby") %>'></asp:TextBox>
                                                <act:FilteredTextBoxExtender ID='ftb_standBy' runat='server' TargetControlID='txt_standBy'
                                                    FilterType='Numbers,Custom' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="res_campoGrilla,equ_detallealquiler_horometro">
                                            <ItemTemplate>
                                                <asp:TextBox ID="txt_horometro" runat="server" CssClass="txt_numero" Text='<%# eval("horometro") %>' Visible='<%# IIF(eval("mHorometro"),"true","false") %>'></asp:TextBox>
                                                <act:FilteredTextBoxExtender ID='ftb_horometro' runat='server' TargetControlID='txt_horometro'
                                                    FilterType='Numbers,Custom' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="res_campoGrilla,equ_equipo_ultimalectura_fh">
                                            <ItemTemplate>
                                                <uc2:fechaAvanzada ID="fec_ultimaLectura" runat="server" a_bln_obligatorio="True"
                                                    a_str_grupoValidacion="alq" a_str_prefijo="fh" FechaSeleccionada='<%# eval("ultimaLectura") %>'
                                                    Visible='<%# IIF(eval("mHorometro"),"true","false") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <bti:BotonImagen ID="bti_hoja" runat="server" ImageUrl="../../images/botones/verReportes.gif"
                                                    Width="18px" OnClientClick='<%#eval("reporte")%>' />
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
  
                    </table>
                </asp:Panel>
                </td>
                
        </tr>
              <tr>
                       <td>
                <asp:Panel ID="Pnl_buscarNoserializados" runat="server" CssClass="lbl">
                    <table>
                         <tr>
                            <td colspan="3" align="center">
                                <asp:GridView ID="grd_noSerializados" runat="server" AutoGenerateColumns="False">
                                    <EmptyDataTemplate>
                                        <asp:Label ID="lbl_mensaje" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, grillaVacia %>'></asp:Label></EmptyDataTemplate>
                                    <Columns>
                                        <asp:TemplateField HeaderText="">
                                            <HeaderTemplate>
                                                <asp:CheckBox ID="chb_seleccionar" runat="server" />
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:HiddenField ID="hdd_id" runat="server" Value='<%# eval("id") %>' />
                                                <asp:Label ID="lbl_idAlquiler" runat="server" Text='<%# eval("id_alquiler") %>' CssClass="invisible" />
                                                <asp:CheckBox ID="chb_seleccionar" runat="server" Checked='<%# eval("checked") %>' />
                                                <asp:Label ID="lbl_idcatalogo" runat="server" Text='<%# eval("id_catalogo") %>' CssClass="invisible" />
                                                <asp:Label ID="lbl_periodoAlquiler" runat="server" Text='<%# eval("periodoAlquiler") %>' CssClass="invisible" />
                                               </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:DropDownList ID="drp_periodoAlquiler" runat="server" CssClass="drp" AutoPostBack="true"
                                                    OnSelectedIndexChanged="drp_tarifasAlquiler_selected">
                                                </asp:DropDownList>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_campoGrilla,cat_catalogo_repuesto'>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_equipo" runat="server" Text='<%# eval("detalleAlquiler") %>' ToolTip='<%# eval("equipo") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                          <asp:TemplateField  HeaderText='res_campoGrilla,equ_detallealquiler_fechadespacho_ff'>
                                            <ItemTemplate>
                                                <asp:label ID="lbl_despacho" runat="server"  Text='<%# eval("despacho") %>'  />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                              
                                        <asp:TemplateField HeaderText='res_nombreColumna,fechaCorteInicial'>
                                            <ItemTemplate>
                                                   <uc2:fechaAvanzada ID="fec_fechaUltimaFactura" runat="server" a_bln_obligatorio="True"
                                                    a_str_grupoValidacion="alq" a_str_prefijo="fh" FechaSeleccionada='<%# eval("fechaUltimaFactura_fh") %>'
                                                    Enable='<%# IIF(eval("fechaUltimaFactura_fh")=#1/1/1900# ,"true","false") %>' />

                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_fechadevolucion_ff'>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_fechaDevolucion" runat="server" Text='<%# eval("fechaDevolucion_ff") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_nombreColumna,fechaCorteFinal'>
                                            <ItemTemplate>
                                                <uc2:fechaAvanzada ID="fec_fechaFacturar" runat="server" a_bln_obligatorio="True"
                                                    a_str_grupoValidacion="alq" a_str_prefijo="ff" FechaSeleccionada='<%# eval("fechaAFacturar") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_valorperiodo'>
                                            <ItemTemplate>
                                                <asp:TextBox ID="txt_valor" runat="server" CssClass="txt_numero"
                                                    Text='<%# eval("valorPeriodo") %>'></asp:TextBox>
                                                <act:FilteredTextBoxExtender ID='ftb_valor' runat='server' TargetControlID='txt_valor'
                                                    FilterType='Numbers,Custom' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                          <asp:TemplateField HeaderText='res_campoGrilla,doc_documento_descuento'>
                                            <ItemTemplate>
                                               <asp:TextBox ID="txt_descuento" runat="server" CssClass="txt_numero" Enabled="true"   Text='<%# eval("porcdto") %>' ></asp:TextBox>
                                               </ItemTemplate>
                                        </asp:TemplateField>
                                       <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_valormulta'>
                                            <ItemTemplate>
                                                <asp:TextBox ID="txt_multa" runat="server" CssClass="txt_numero" Text='<%# eval("valorMulta") %>'></asp:TextBox>
                                                <act:FilteredTextBoxExtender ID='ftb_multa' runat='server' TargetControlID='txt_multa'
                                                    FilterType='Numbers,Custom' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_cantidadalquilada'>
                                            <ItemTemplate>
                                              <asp:label ID="lbl_cantidadAlquilada" runat="server"  Text='<%# eval("cantidadAlquilada") %>' CssClass="lbl"></asp:label>
                                                </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText='res_campoGrilla,devolucion'>
                                            <ItemTemplate>
                                                <asp:TextBox ID="txt_cantidad" runat="server" CssClass="txt_numero" Text='<%# eval("cantidadSolicitada") %>' ></asp:TextBox>
                                                 <act:FilteredTextBoxExtender ID='ftb_cantidad' runat='server' TargetControlID='txt_cantidad'
                                                    FilterType='Numbers,Custom' />
                                               </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText='res_etiquetas_alq,detalle'>
                                         <ItemTemplate>
                                         <asp:ImageButton ID="imb_detalle" runat ="server" ImageUrl ="../../images/iconos/doc_verHistorial.jpg" />
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
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="pnl_elementosPreliq" runat="server" CssClass="lbl">
                    <table>
                    <tr>
                    <td>
                        <asp:LinkButton ID="bti_calcularItemsXEquipo" runat="server" CausesValidation="false" />
                    </td>
                    </tr>
                        <tr>
                            <td>
                                <asp:GridView ID="grd_otrosPreliq" runat="server" AutoGenerateColumns="False">
                                    <EmptyDataTemplate>
                                        <asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, grillaVacia %>'></asp:Label></EmptyDataTemplate>
                                    <Columns>
                                        <asp:TemplateField HeaderText="">
                                            <HeaderTemplate>
                                                <asp:CheckBox ID="chb_seleccionar" runat="server" />
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_idElemento" runat="server" Text='<%# eval("id_item") %>' CssClass="invisible" />
                                                <asp:CheckBox ID="chb_seleccionar" runat="server" CssClass='<%# IIF(eval("id_item")>0,"chb","invisible") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText='res_metadata,doc_itemdocumento_id_itemdocumento' DataField="item"
                                            ItemStyle-HorizontalAlign="Left">
                                            <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText='res_metadata,doc_documento_documento'>
                                            <ItemTemplate>
                                                <asp:HyperLink ID="lnk_ot" runat="server" CssClass="lnk" Text='<%# eval("numero_ot") %>' NavigateUrl='<%# eval("link_ot") %>' ></asp:HyperLink>
                                                <asp:HyperLink ID="lnk_preliquidacion" runat="server" CssClass="lnk" Text='<%# eval("numero_preliquidacion") %>' NavigateUrl='<%# eval("link_preliquidacion") %>' ></asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText='res_metadata,doc_itemdocumento_valorunitarioplaneado' DataField='total'
                                            ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField HeaderText='res_metadata,doc_itemdocumento_cantidadplaneado' DataField='cantidad'
                                            ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
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
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="pnl_elementos" runat="server" CssClass="lbl">
                    <table>
                        <tr>
                            <td>
                                <asp:GridView ID="grd_otros" runat="server" AutoGenerateColumns="False">
                                    <EmptyDataTemplate>
                                        <asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, grillaVacia %>'></asp:Label></EmptyDataTemplate>
                                    <Columns>
                                        <asp:TemplateField HeaderText="">
                                            <HeaderTemplate>
                                                <asp:CheckBox ID="chb_seleccionar" runat="server" />
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_iditem" runat="server" Text='<%# eval("id_item") %>' CssClass="invisible" />
                                                <asp:CheckBox ID="chb_seleccionar" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText='res_metadata,doc_itemdocumento_id_itemdocumento' DataField="item"
                                            ItemStyle-HorizontalAlign="Left">
                                            <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField HeaderText='res_metadata,doc_itemdocumento_valorunitarioplaneado' DataField='total'
                                            ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                           <asp:BoundField HeaderText='res_campoGrilla,cat_listaprecio_porcentajedescuento' DataField='porcdto'
                                            ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField HeaderText='res_metadata,doc_itemdocumento_cantidadplaneado' DataField='cantidad'
                                            ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText='res_campoGrilla,dis_evento_catalogo_cantidad'>
                                            <ItemTemplate>
                                                <asp:TextBox ID="txt_cantidad" runat="server" CssClass="txt_numero"
                                                    Text="0"></asp:TextBox>
                                                <act:FilteredTextBoxExtender ID='ftb_cantidad' runat='server' TargetControlID='txt_cantidad'
                                                    FilterType='Numbers,Custom' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText='res_metadata,doc_itemdocumento_cantidadejecutado' DataField='cantidadfacturado'
                                            ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                         <asp:BoundField HeaderText='res_metadata,doc_itemdocumento_totalejecutado' DataField='totaleje'
                                            ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
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
                </asp:Panel>
            </td>
        </tr>
        <tr>
                        <td>
                            <asp:Panel ID="pnl_eventos" runat="server" CssClass="lbl">
                <bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.gif" />
                            
                                <table class="tbl_marcoFormulario">
                                    <tr>
                                        <td colspan ="4">
                                           <asp:GridView ID="grd_eventos" runat="server" AutoGenerateColumns="False">
                                    <EmptyDataTemplate>
                                        <asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, grillaVacia %>'></asp:Label></EmptyDataTemplate>
                                    <Columns>
                                        <asp:TemplateField HeaderText="">
                                            <HeaderTemplate>
                                                <asp:CheckBox ID="chb_seleccionar" runat="server" />
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id_detalleAlquiler") %>' CssClass="invisible" />
                                                <asp:Label ID="lbl_idequipo" runat="server" Text='<%# eval("id_equipo") %>' CssClass="invisible" />
                                                <asp:CheckBox ID="chb_seleccionar" runat="server" Visible='<%# IIF(eval("id_equipo")>0,TRUE,FALSE) %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText='res_metadata,equ_equipo_equipo' DataField="equipo"
                                            ItemStyle-HorizontalAlign="Left">
                                            <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText='res_nombreColumna,fechaCorteInicial'>
                                            <ItemTemplate>
                                                    <uc2:fechaAvanzada ID="fec_fechaUltimaFactura" runat="server" a_bln_obligatorio="True"
                                                    a_str_grupoValidacion="alq" a_str_prefijo="fh" FechaSeleccionada='<%#IIF(not eval("fechaInicio").toString() =System.dbnull.Value.ToString(),eval("fechaInicio"),#1/1/1900#)  %>'
                                                    Enable='<%# IIF(eval("id_equipo")>0 ,"true","false") %>'  visible='<%# IIF(eval("id_equipo")>0 ,"true","false") %>'/>

                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_nombreColumna,fechaCorteFinal'>
                                            <ItemTemplate>
                                                <uc2:fechaAvanzada ID="fec_fechaFacturar" runat="server" a_bln_obligatorio="True" Visible='<%# IIF(eval("id_equipo")>0,TRUE,FALSE) %>'
                                                    a_str_grupoValidacion="alq" a_str_prefijo="ff" FechaSeleccionada='<%# eval("fechaAFacturar") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText='res_metadata,cat_catalogo_codigoinventario' DataField='codigoInventario'
                                            ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                           <asp:BoundField HeaderText='res_campoGrilla,cat_catalogo_precioventa' DataField='precio'
                                            ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField HeaderText='res_metadata,doc_itemdocumento_cantidadplaneado' DataField='cantidad'
                                            ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField HeaderText='res_metadata,doc_itemdocumento_porcdto' DataField='porcdto'
                                            ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField HeaderText='res_metadata,doc_itemdocumento_subtotalplaneado' DataField='total'
                                            ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
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
                            </asp:Panel>
                        </td>
                    </tr>
        <tr>
            <td>
                <asp:Panel ID="pnl_detalleFactura" runat="server" CssClass="lbl">
                    <table class="tbl_marcoFormulario">
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbl_numFactura" runat="server" CssClass="lbl" Text=""></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_numFactura" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="lbl_fechaFactura" runat="server" CssClass="lbl" Text=""></asp:Label>
                                        </td>
                                        <td>
                                            <uc2:fechaAvanzada ID="fec_fechaFactura" runat="server" a_bln_obligatorio="True"
                                                a_str_grupoValidacion="alq" a_str_prefijo="ff" />
                                        </td>
                                        <td>
                                            <asp:Label ID="lbl_valorFactura" runat="server" CssClass="lbl" Text=""></asp:Label>
                                            <asp:LinkButton ID="lnk_calcularFactura" runat="server" Text="" CssClass="lnk_subrayado"
                                                CausesValidation="true" ValidationGroup="alq" />
                                            -&gt;
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_valorFactura" runat="server" CssClass="txt_numero"></asp:TextBox>
                                            <act:FilteredTextBoxExtender ID='ftb_valorF' runat='server' TargetControlID='txt_valorFactura'
                                                FilterType='Numbers,Custom' />
                                        </td>
                                        <td>
                                            <asp:LinkButton ID="lnk_calcularParciales" runat="server" CausesValidation="true"
                                                ValidationGroup="alq" CssClass="lnk_subrayado" Visible="false" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
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
                        <tr>
                            <td align="center" colspan="3">
                                <asp:HyperLink ID="hyp_preliquidacion" runat="server" CssClass="lnk"></asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    <uc2:popup ID="pop_detalle" runat="server" a_bol_mostrarSAMM="false" />
</asp:Content>
