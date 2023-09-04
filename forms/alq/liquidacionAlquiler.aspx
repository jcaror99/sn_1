<%@ Page Language="VB" AutoEventWireup="false"  MasterPageFile="~/master/master/mas_FormularioSinGrilla.master"  CodeBehind="liquidacionAlquiler.aspx.vb" Inherits="website.samm_web.forms_alq_liquidacionAlquiler" %>
<%@ Register src="~/controles/general/informacion.ascx" tagname="informacion" tagprefix="inf" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"  TagPrefix="mul" %>
<%@ Register Src='~/controles/general/tabs.ascx' TagName='tabs' TagPrefix='tab' %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada"     TagPrefix="fec" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="pop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" Runat="Server">
<asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo' ></asp:Label>
<style>
.lbl_titulovalor{
text-align :right;
font-size:12px;
font-weight: bold;
color: #28679d;
font-family: Verdana, Arial, Helvetica, sans-serif;
text-decoration: none;
curso:pointer;
border-top-style: none;
border-right-style: none;
border-left-style: none;
background-color: transparent;
border-bottom-style: none;
}
.lbl_valor{
text-align :right;
font-size:12px;
width:150px;
 
}
.td_titulo{
width:150px;
color: #28679d;
}
.td_campos{
text-align:left
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" Runat="Server">
<pop:popup ID="pop_liquidacion" runat="server" a_bol_ocultarScroll="true"  />
<table  style="border-spacing:0"  >
<tr><td>
<inf:informacion ID="inf_informacion" runat="server" a_bln_orientacionVertical="false"  />
</td></tr>
<tr><td><tab:tabs ID='Tabs' runat="server" /></td></tr>
<tr><td>
<table  class="tbl_marcoFormulario" style="border-spacing:0px">
<tr><td>
<table>
<tr><td></td></tr>
<tr>
<td><asp:Label ID="lbl_alquileres" runat="server" CssClass="lbl_titulovalor" ></asp:Label>
</td>
<td><bus:busquedaAvanzada ID="bus_alquiler" a_bol_postBack ="true"  runat="server" a_str_tabla ="doc_documento"   a_str_camposDrop="documento,prefijo,documento_numero"   a_str_campo ="documento,prefijo,documento_numero" a_str_filtroTemporal="id_subtipodocumento in (select id from  doc_subtipodocumento where active=1 and  id_tipodocumento=9)"  /></td>
<td><asp:CheckBox ID="chk_sucursalActual" runat="server" CssClass="lbl" AutoPostBack="true" /></td>

</tr>

</table>

</td></tr>

<tr><td>
</td>
</tr>
<tr><td>
<asp:Panel ID="pnl_detalle" runat="server"  >
<asp:GridView ID="grd_grupo" runat="server" AutoGenerateColumns ="false" ShowHeader="false"  >
<Columns>
<asp:TemplateField>
<ItemTemplate>
<table >
<tr><td style="width:100px"  ><asp:LinkButton  ID="lnk_grupo" runat="server" CommandName ='<%# eval("detalle") %>' Text='<%# eval("texto") %>' CssClass="lbl_titulovalor" ></asp:LinkButton> 
</td><td class ="td_titulo" style ="text-align:right"> <asp:Label ID="lbl_valorgrupo" runat="server" CssClass="lbl_valor"  ></asp:Label> </td><td>
<bti:BotonImagen ID="btn_detalle" runat ="server" CommandName ="verDetalle" ImageUrl= "../../images/iconos/doc_verHistorial.jpg"/>
<bti:BotonImagen ID="btn_detalleSerializado" runat ="server" CommandName ="verDetalleSer" ImageUrl= "../../images/iconos/doc_verHistorial.jpg"/>
</td></tr>
</table>
<table> 
<tr>
<td>

</td>
</tr> 

<tr><td id="td_detalle" runat ="server"  colspan ="2"  >  
                                <asp:GridView ID="grd_equipo" runat="server" AutoGenerateColumns="False" OnRowCommand="grd_detalles_RowCommand" OnRowDataBound="grd_detalles_RowDataBound">
                                    <EmptyDataTemplate>
                                        <asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, grillaVacia %>'></asp:Label></EmptyDataTemplate>
                                    <Columns>
                                        <asp:TemplateField >
                                            <HeaderTemplate>
                                                <asp:CheckBox ID="chb_seleccionar" runat="server" />
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:HiddenField  ID="hdd_iddetalle" runat="server" Value='<%# eval("id_detalle") %>' /> 
                                                <asp:Label ID="lbl_periodoAlquiler" runat="server" Text='<%# eval("periodoAlquiler") %>' CssClass="invisible" />
                                                <asp:CheckBox ID="chb_seleccionar" runat="server" Checked='<%# eval("checked") %>' />
                                                <asp:Label ID="lbl_idEquipo" runat="server" Text='<%# eval("id_equipo") %>' CssClass="invisible" />
                                                <asp:Label ID="lbl_valorStandBy" runat="server" Text='<%# eval("standby") %>'  CssClass="invisible" />
                                               <asp:label ID="lbl_despacho" runat="server"  Text='<%# eval("despacho") %>' CssClass="invisible"   />
                                                  <asp:Label ID="lbl_devolucion" runat="server" Text='<%# eval("devolucion") %>' CssClass="invisible"  />
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
                                                <asp:Label ID="lbl_equipo" runat="server" Text='<%# eval("serial") %>' ToolTip='<%# eval("detalle") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <%-- <asp:TemplateField  HeaderText='res_campoGrilla,equ_detallealquiler_fechadespacho_ff'>
                                            <ItemTemplate>
                                                <asp:label ID="lbl_despacho" runat="server"  Text='<%# eval("despacho") %>'  />
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
                                        <asp:TemplateField HeaderText='res_nombreColumna,fechaCorteInicial'>
                                            <ItemTemplate>
                                              <fec:fechaAvanzada ID="fec_ultimaFactura" runat="server" a_bln_obligatorio="True"
                                                    a_str_grupoValidacion="alq" a_str_prefijo="ff" FechaSeleccionada='<%# eval("fechaUltimaFactura_fh") %>'
                                                    a_bol_deshabilitar ='<%# IIF(eval("ultimafac")=#1/1/1900# ,"false","true") %>' CssClass='<%# IIF(eval("ultimafac")=#1/1/1900# ,"txt_fecha","txt_fecha_blo") %>' CssClassHora='<%# IIF(eval("ultimafac")=#1/1/1900# ,"txt_hora","txt_hora_blo") %>' />
                                                    
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                       <%-- <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_fechadevolucion_ff'>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_devolucion" runat="server" Text='<%# eval("devolucion") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField> FechaSeleccionada='<%# eval("fechaAFacturar") %>'  --%>
                                        <asp:TemplateField HeaderText='res_nombreColumna,fechaCorteFinal'>
                                            <ItemTemplate>
                                                <fec:fechaAvanzada ID="fec_facturar" runat="server" a_bln_obligatorio="True"
                                                    a_str_grupoValidacion="alq" a_str_prefijo="ff"  />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_valorperiodo'>
                                            <ItemTemplate>
                                                <asp:TextBox ID="txt_valor" runat="server" CssClass="txt_numero"
                                                    Text='<%# FormatCurrency(eval("periodoalquiler"),2) %>'></asp:TextBox>
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
                                        <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_valormulta' HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
                                            <ItemTemplate>
                                                <asp:TextBox ID="txt_multa" runat="server" CssClass="txt_numero" Text='<%# eval("valormulta") %>'></asp:TextBox>
                                                <act:FilteredTextBoxExtender ID='ftb_multa' runat='server' TargetControlID='txt_multa'
                                                    FilterType='Numbers,Custom' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_valorhorastandby'>
                                            <ItemTemplate>
                                                <asp:TextBox ID="txt_standBy" runat="server" CssClass="txt_numero" Text='<%# eval("cantidadstandby") %>'></asp:TextBox>
                                                <act:FilteredTextBoxExtender ID='ftb_standBy' runat='server' TargetControlID='txt_standBy'
                                                    FilterType='Numbers,Custom' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="res_campoGrilla,equ_detallealquiler_horometro">
                                            <ItemTemplate>
                                                <asp:TextBox ID="txt_horometro" runat="server" CssClass="txt_numero" Text='<%# eval("horometro") %>' Visible='<%# IIF(eval("mHorometro"),"true","false") %>'></asp:TextBox>
                                                <act:FilteredTextBoxExtender ID='ftb_horometro' runat='server' TargetControlID='txt_horometro'
                                                    FilterType='Numbers,Custom'  ValidChars=","/>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="res_campoGrilla,equ_equipo_ultimalectura_fh">
                                            <ItemTemplate>
                                                <fec:fechaAvanzada ID="fec_ultimaLectura" runat="server" a_bln_obligatorio="True"
                                                    a_str_grupoValidacion="alq" a_str_prefijo="fh" FechaSeleccionada='<%# eval("ultimaLectura") %>'
                                                    Visible='<%# IIF(eval("mHorometro"),"true","false") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                           <asp:TemplateField  HeaderText='res_etiquetas_alq,diasCalculados'>
                                            <ItemTemplate>
                                                <asp:label ID="lbl_diascalculo" runat="server"  Text='<%# eval("diascalculo") %>'  />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField  HeaderText='res_etiquetas_alq,total'>
                                            <ItemTemplate>
                                                <asp:label ID="lbl_total" runat="server"  Text='<%#  FormatCurrency(eval("total"),2) %>'  />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                           <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:ImageButton ID="imb_detalle" runat ="server" ImageUrl ="../../images/iconos/doc_verHistorial.jpg"  />
                                                <bti:BotonImagen ID="bti_hoja" runat="server" ImageUrl="../../images/botones/verReportes.gif"
                                                    Width="18px" OnClientClick='<%#eval("reporte")%>' />
                                                    <bti:BotonImagen ID="btn_actualizar" runat="server" ImageUrl="../../images/botones/editar.gif"
                                                    Width="18px" Visible="false"  />
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
                                <asp:GridView ID="grd_repuesto" runat="server" AutoGenerateColumns="False" OnRowCommand="grd_detalles_RowCommand" OnRowDataBound="grd_detalles_RowDataBound">
                                    <EmptyDataTemplate>
                                        <asp:Label ID="lbl_mensaje" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, grillaVacia %>'></asp:Label></EmptyDataTemplate>
                                    <Columns>
                                        <asp:TemplateField HeaderText="">
                                            <HeaderTemplate>
                                                <asp:CheckBox ID="chb_seleccionar" runat="server" />
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                               <asp:HiddenField  ID="hdd_iddetalle" runat="server" Value='<%# eval("id_detalle") %>' /> 
                                               <asp:CheckBox ID="chb_seleccionar" runat="server" Checked='<%# eval("checked") %>' />
                                               <asp:Label ID="lbl_idcatalogo" runat="server" Text='<%# eval("id_catalogo") %>' CssClass="invisible" />
                                                <asp:Label ID="lbl_periodoAlquiler" runat="server" Text='<%# eval("periodoAlquiler") %>' CssClass="invisible" />
                                                <asp:label ID="lbl_despacho" runat="server" CssClass ="invisible" Text='<%# eval("despacho") %>'  />
                                                  <asp:Label ID="lbl_devolucion" runat="server" CssClass ="invisible" Text='<%# eval("devolucion") %>' />
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
                                                <asp:Label ID="lbl_detalle" runat="server" Text='<%# eval("detalle") %>' ToolTip='<%# eval("catalogo") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>                             
                                        <asp:TemplateField HeaderText='res_nombreColumna,fechaCorteInicial'>
                                            <ItemTemplate>
                                                   <fec:fechaAvanzada ID="fec_UltimaFactura" runat="server" a_bln_obligatorio="True"
                                                    a_str_grupoValidacion="alq" a_str_prefijo="ff" FechaSeleccionada='<%# eval("fechaUltimaFactura_fh") %>'
                                                    a_bol_deshabilitar ='<%# IIF(eval("ultimafac")=#1/1/1900#,"false" ,"true") %>' CssClass ='<%# IIF(eval("ultimafac")=#1/1/1900#,"txt_fecha" ,"txt_fecha_blo") %>' CssClassHora='<%# IIF(eval("ultimafac")=#1/1/1900#,"txt_hora" ,"txt_hora_blo") %>'  />

                                            </ItemTemplate>
                                        </asp:TemplateField>
                                           <asp:TemplateField HeaderText='res_nombreColumna,fechaCorteFinal'>
                                            <ItemTemplate>
                                                <fec:fechaAvanzada ID="fec_facturar" runat="server" a_bln_obligatorio="True"
                                                    a_str_grupoValidacion="alq" a_str_prefijo="ff" FechaSeleccionada='<%# IIF(eval("fechaAFacturar")= #1/1/1900#,nothing,eval("fechaAFacturar"))%>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_valorperiodo' ItemStyle-HorizontalAlign="Right" >
                                            <ItemTemplate>
                                                <asp:TextBox ID="txt_valor" runat="server" CssClass="txt_numero"
                                                    Text='<%# FormatCurrency( eval("periodoAlquiler"),2) %>'></asp:TextBox>
                                                <act:FilteredTextBoxExtender ID='ftb_valor' runat='server' TargetControlID='txt_valor'
                                                    FilterType='Numbers,Custom' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                          <asp:TemplateField HeaderText='res_campoGrilla,doc_documento_descuento' ItemStyle-HorizontalAlign="Right" >
                                            <ItemTemplate>
                                               <asp:TextBox ID="txt_descuento" runat="server" CssClass="txt_numero" Enabled="true"   Text='<%# eval("porcdto") %>' ></asp:TextBox>
                                               </ItemTemplate>
                                        </asp:TemplateField>
                                       <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_valormulta' ItemStyle-HorizontalAlign="Right" >
                                            <ItemTemplate>
                                                <asp:TextBox ID="txt_multa" runat="server" CssClass="txt_numero" Text='<%# eval("valorMulta","{0:C}") %>'></asp:TextBox>
                                                <act:FilteredTextBoxExtender ID='ftb_multa' runat='server' TargetControlID='txt_multa'
                                                    FilterType='Numbers,Custom' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                           <asp:TemplateField  Visible="false" HeaderText='res_campoGrilla,equ_detallealquiler_valorhorastandby' ItemStyle-HorizontalAlign="Right" >
                                            <ItemTemplate>
                                                <asp:TextBox ID="txt_standBy" runat="server" CssClass="txt_numero" Text='<%# eval("standby") %>'></asp:TextBox>
                                                <act:FilteredTextBoxExtender ID='ftb_standBy' runat='server' TargetControlID='txt_standBy'
                                                    FilterType='Numbers,Custom' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText='res_campoGrilla,equ_detallealquiler_cantidadalquilada' ItemStyle-HorizontalAlign="Right" >
                                            <ItemTemplate>
                                              <asp:label ID="lbl_cantidadAlquilada" runat="server"  Text='<%# eval("cantidadAlquilada") %>' CssClass="lbl"></asp:label>
                                                </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText='res_campoGrilla,devolucion' ItemStyle-HorizontalAlign="Right" Visible="false"   >
                                            <ItemTemplate>
                                                <asp:TextBox ID="txt_cantidad" runat="server" CssClass="txt_numero" Text='<%# iif ( eval("cantidadSolicitada").tostring()="",0,eval("cantidadSolicitada")) %>' ></asp:TextBox>
                                                 <act:FilteredTextBoxExtender ID='ftb_cantidad' runat='server' TargetControlID='txt_cantidad'
                                                    FilterType='Numbers,Custom' />
                                               </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField  HeaderText='res_etiquetas_alq,diasCalculados' ItemStyle-HorizontalAlign="Right" >
                                            <ItemTemplate>
                                                <asp:label ID="lbl_diascalculo" runat="server"  Text='<%# eval("diascalculo") %>'  />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField  HeaderText='res_etiquetas_alq,total'>
                                            <ItemTemplate>
                                                <asp:label ID="lbl_total" runat="server"  Text='<%# FormatCurrency( eval("total"),2) %>'  />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField >
                                         <ItemTemplate>
                                       <asp:ImageButton ID="imb_detalle" runat ="server" ImageUrl ="../../images/iconos/doc_verHistorial.jpg" />
                                          <bti:BotonImagen ID="btn_actualizar" runat="server" ImageUrl="../../images/botones/editar.gif"
                                                    Width="18px" Visible="false"  />
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
                                <asp:GridView ID="grd_adicional" runat="server" AutoGenerateColumns="False" OnRowCommand="grd_detalles_RowCommand" OnRowDataBound="grd_detalles_RowDataBound">
                                    <EmptyDataTemplate>
                                        <asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, grillaVacia %>'></asp:Label></EmptyDataTemplate>
                                    <Columns>
                                        <asp:TemplateField HeaderText="">
                                            <HeaderTemplate>
                                                <asp:CheckBox ID="chb_seleccionar" runat="server" />
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:HiddenField  ID="hdd_iditem" runat="server" value='<%# eval("id_item") %>'  />
                                                <asp:CheckBox ID="chb_seleccionar" runat="server" Checked='<%# eval("checked") %>'  />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText='res_metadata,doc_itemdocumento_id_itemdocumento' DataField="item"
                                            ItemStyle-HorizontalAlign="Left">
                                            <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                        </asp:BoundField>
                                           <asp:TemplateField HeaderText='res_metadata,cat_catalogo_codigoinventario' ItemStyle-HorizontalAlign="Center" >
                                            <ItemTemplate>
                                               <asp:Label id="lbl_codigoinventario" runat="server" Text='<%# eval("codigoinventario") %>' ></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_nombreColumna,fechaCorteInicial' Visible='false'>
                                            <ItemTemplate >
                                              <fec:fechaAvanzada ID="fec_inicio" runat="server" a_bln_obligatorio="True" a_bol_deshabilitar="true" 
                                                    a_str_prefijo="ff" FechaSeleccionada='<%# eval("fechainicio") %>' Visible='<%# iif ( eval("anticipado").tostring()="True",false,true) %>' />
                                                </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_nombreColumna,fechaCorteFinal' Visible='false'>
                                            <ItemTemplate >
                                                <fec:fechaAvanzada ID="fec_fin" runat="server" a_bln_obligatorio="True" a_bol_deshabilitar="true" Visible='<%# iif ( eval("anticipado").tostring()="True",false,true) %>'
                                                     a_str_prefijo="ff" FechaSeleccionada='<%# eval("fechafin") %>'  />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText='res_metadata,doc_itemdocumento_valorunitarioplaneado' ItemStyle-HorizontalAlign="Right" >
                                            <ItemTemplate>
                                               <asp:Label id="lbl_total" runat="server" Text='<%# FormatCurrency(eval("valorunitario"),2) %>' ></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                           <asp:TemplateField HeaderText='res_campoGrilla,cat_listaprecio_porcentajedescuento' ItemStyle-HorizontalAlign="Right" >
                                            <ItemTemplate>
                                               <asp:Label id="lbl_dto" runat="server" Text='<%# eval("porcdto") %>' ></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_metadata,doc_itemdocumento_cantidadplaneado' ItemStyle-HorizontalAlign="Center" >
                                            <ItemTemplate>
                                               <asp:Label id="lbl_cantidadplaneado" runat="server" Text='<%# eval("cantidad") %>' ></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText='res_metadata,doc_itemdocumento_cantidadejecutado'  ItemStyle-HorizontalAlign="Right"   DataField='cantidadfacturado' >
                                        </asp:BoundField>
                                       <asp:TemplateField HeaderText='res_campoGrilla,dis_evento_catalogo_cantidad'  >
                                            <ItemTemplate>
                                                <asp:TextBox ID="txt_cantidad" runat="server" CssClass="txt_numero"
                                                    Text='<%# eval("cantidadfac") %>'></asp:TextBox>
                                                <act:FilteredTextBoxExtender ID='ftb_cantidad' runat='server' TargetControlID='txt_cantidad'
                                                    FilterType='Numbers,Custom' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                       
                                        
                                         <asp:TemplateField HeaderText='res_metadata,doc_itemdocumento_totalejecutado'  ItemStyle-HorizontalAlign="Right" Visible='false' >
                                            <ItemTemplate>
                                            <asp:TextBox runat="server" Id ="tbx_cantidad" CssClass="txt_fecha" Text='<%# eval("totaleje","{0:C}") %>' > </asp:TextBox>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_etiquetas_alq,totalfactura'  ItemStyle-HorizontalAlign="Right" >
                                            <ItemTemplate>
                                               <asp:Label id="lbl_totalfac" runat="server" Text='<%# eval("total","{0:C}") %>' ></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        
                                           <asp:TemplateField>
                                            <ItemTemplate>
                                                    <bti:BotonImagen ID="btn_actualizar" runat="server" ImageUrl="../../images/botones/editar.gif"
                                                    Width="18px" Visible="false"  />
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
                                <asp:GridView ID="grd_evento" runat="server" AutoGenerateColumns="False">
                                    <EmptyDataTemplate>
                                        <asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, grillaVacia %>'></asp:Label></EmptyDataTemplate>
                                    <Columns>
                                        <asp:TemplateField HeaderText="">
                                            <HeaderTemplate>
                                                <asp:CheckBox ID="chb_seleccionar" runat="server" />
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                  <asp:HiddenField  ID="hdd_iddetalle" runat="server" Value='<%# eval("id_detalle") %>' /> 
                                                    <asp:HiddenField  ID="hdd_iditemALQ" runat="server" Value='<%# eval("id_itemALQ") %>' /> 
                                                      <asp:HiddenField  ID="hdd_documentoFALTA" runat="server" Value='<%# eval("id_documentoFALTA") %>' /> 
                                                <asp:Label ID="lbl_idequipo" runat="server" Text='<%# eval("id_equipo") %>' CssClass="invisible" />
                                                <asp:Label ID="lbl_idcatalogo" runat="server" Text='<%# eval("id_catalogo") %>' CssClass="invisible" />
                                                <asp:Label ID="lbl_fechaevento" runat="server" Text='<%# eval("fechaevento") %>' CssClass="invisible" />
                                                <asp:Label ID="lbl_fechaeventofin" runat="server" Text='<%# eval("fechaeventofin") %>' CssClass="invisible" />
<%--                                                Checked='<%# IIF(eval("id_equipo")=-1 or eval("id_equipo")>0  ,true,false) %>'
--%>                                                <asp:CheckBox ID="chb_seleccionar" runat="server" Checked='<%# IIF(eval("id_equipo")=-1 or eval("id_equipo")>0  ,true,false)%>'   Visible='<%# IIF(eval("id_equipo")>0 or eval("id_equipo")=-1,TRUE,FALSE) %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText='res_etiquetas_alq,elemento' DataField="equipo"
                                            ItemStyle-HorizontalAlign="Left">
                                            <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText='res_nombreColumna,fechaCorteInicial'>
                                            <ItemTemplate>
                                                    <fec:fechaAvanzada ID="fec_ultimaFactura" runat="server" a_bln_obligatorio="True"
                                                    a_str_grupoValidacion="alq" a_str_prefijo="ff" FechaSeleccionada='<%#IIF(not eval("fechaInicio").toString() =System.dbnull.Value.ToString(),eval("fechaInicio"),#1/1/1900#)  %>'
                                                    Enable='<%# IIF(eval("id_equipo")>0 ,"true","false") %>'  visible='<%# IIF(eval("id_equipo")>0 ,"true","false") %>'/>

                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_nombreColumna,fechaCorteFinal'>
                                            <ItemTemplate>
                                                <fec:fechaAvanzada ID="fec_facturar" runat="server" a_bln_obligatorio="True" Visible='<%# IIF(eval("id_equipo")>0,TRUE,FALSE) %>'
                                                    a_str_grupoValidacion="alq" a_str_prefijo="ff" FechaSeleccionada='<%# eval("fechaAFacturar") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText='res_metadata,cat_catalogo_codigoinventario'>
                                            <ItemTemplate>
                                               <asp:Label id="lbl_codigoinventario" runat="server" Text='<%# eval("codigoInventario") %>' ></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText='res_campoGrilla,cat_catalogo_precioventa' ItemStyle-HorizontalAlign="Right" >
                                            <ItemTemplate>
                                               <asp:Label id="lbl_precio" runat="server" Text='<%# formatCurrency(eval("precio"),2) %>' ></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText='res_metadata,doc_itemdocumento_cantidadplaneado' ItemStyle-HorizontalAlign="Right" >
                                            <ItemTemplate>
                                               <asp:Label id="lbl_cantidad" runat="server" Text='<%# eval("cantidad") %>' ></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText='res_metadata,doc_itemdocumento_porcdto'  ItemStyle-HorizontalAlign="Right" >
                                            <ItemTemplate>
                                               <asp:Label id="lbl_dto" runat="server" Text='<%# eval("porcdto") %>' ></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                      
                                        <asp:BoundField HeaderText='res_metadata,doc_itemdocumento_subtotalplaneado' DataFormatString="{0:C}" DataField='total'
                                            ItemStyle-HorizontalAlign="Right">
                                           
                                        </asp:BoundField>
                                    </Columns>
                                    <FooterStyle CssClass="gri_pie" />
                                    <RowStyle CssClass="gri_item" />
                                    <PagerStyle CssClass="gri_paginacion" />
                                    <HeaderStyle CssClass="gri_titulo" />
                                    <AlternatingRowStyle CssClass="gri_itemAlterno" />
                                    <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                                </asp:GridView>

    
</td></tr>

</table>
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
</asp:Panel>
</td></tr>
<tr><td  >
<table>
<tr>
<td><asp:Label ID="lbl_aplicarfecha"  runat="server"  CssClass ="lbl_titulovalor"></asp:Label></td>
<td style ="text-align:left;width:150px"><fec:fechaAvanzada ID="fec_aplicarAtodas" runat ="server" a_bln_obligatorio ="false" a_str_prefijo ="ff"  /></td>
</tr>
<tr><td><asp:Label ID="lbl_calcularLiquidacion"  runat="server"  CssClass ="lbl_titulovalor"></asp:Label></td>
<td style ="text-align:left;width:150px"><bti:BotonImagen ID="btn_recalcular" runat ="server" ImageUrl= "../../images/botones/aceptar.png" CausesValidation="false"  /></td></tr>

</table>
</td></tr>
<tr><td>
<table>
<tr><td>
<asp:Panel ID="pnl_liquidacion" runat="server"   class="lbl_titulovalor"  >
<table    >
<tr><td class ="td_titulo"><asp:Label ID="lbl_ttotalALQ" runat="server" CssClass ="lbl"  ></asp:Label></td>
<td><asp:Label ID="lbl_totalALQ" runat="server" CssClass ="lbl_valor"  ></asp:Label></td></tr>
<tr><td></td></tr>
<tr> 
<td  class ="td_titulo">
<asp:Label ID="lbl_liquidaciones" runat="server" CssClass="lbl" ></asp:Label>
</td>
<td class ="td_campos">
<asp:DropDownList ID="drp_preliquidaciones" runat="server" CssClass ="drp" AutoPostBack="true" ValidationGroup="liq"  ></asp:DropDownList>
</td><td><asp:CheckBox ID="chk_sucursalLiq" runat="server" CssClass="lbl" AutoPostBack="true" /></td>
</tr>
<tr>
<td><asp:Label ID="lbl_subtipos" runat="server" CssClass="lbl" ></asp:Label>
</td>
<td><bus:busquedaAvanzada ID="bus_subtipo" runat="server" a_str_tabla ="doc_subtipoDocumento" a_str_campo ="subtipodocumento,subtipodocumento_codigo" /></td>
</tr>
<tr><td class ="td_titulo"><asp:Label ID="lbl_fechaFactura"  runat="server" CssClass="lbl"></asp:Label></td>
<td class ="td_campos"> <fec:fechaAvanzada ID="fec_fechaFactura" runat="server" a_bln_obligatorio="false"
                                                a_str_grupoValidacion="liq" a_str_prefijo="ff" /></td></tr>
<tr><td class ="td_titulo"><asp:Label ID="lbl_sucursalcliente" runat ="server" CssClass="lbl"></asp:Label></td>
<td class ="td_campos"> <bus:busquedaAvanzada ID ="bus_succliente" runat="server"  a_bol_postBack="true"  a_str_campo="sucursal" a_str_tabla="ter_sucursal"/> </td></tr>
<tr><td class ="td_titulo"><asp:Label ID="lbl_numfactura"  runat="server" CssClass="lbl"  ></asp:Label></td>
<td class ="td_campos"> <asp:TextBox ID="txt_numFactura" runat="server" CssClass="txt" ></asp:TextBox></td></tr>
<tr><td></td><td class ="td_campos"><bti:BotonImagen ID="btn_liquidar" runat ="server" ImageUrl= "../../images/botones/aceptar.png" ValidationGroup="liq"  /></td></tr>
<tr><td></td><td colspan="2" style="text-align :left"><asp:Label ID="lbl_mensaje" runat ="server" CssClass ="lbl"></asp:Label></td></tr>
</table>
</asp:Panel>
</td></tr>
 </table>
</td></tr>
<tr><td> </td></tr>
</table>
</td></tr>
</table>
</asp:Content>