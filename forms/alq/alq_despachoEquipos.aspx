<%@ Page Language="VB" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master"
    AutoEventWireup="false" CodeBehind="alq_despachoEquipos.aspx.vb" Inherits="website.samm_web.forms_alq_alq_despachoEquipos"
    Title="Despachar Equipos" %>

<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada"
    TagPrefix="fec" %>
<%@ Register Src="~/controles/cnt/inc_informacionEquipos.ascx" TagName="inc_informacionEquipos"
    TagPrefix="uc3" %>
<%@ Register Src='~/controles/general/tabs.ascx' TagName='tabs' TagPrefix='tab' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada'
    TagPrefix='bus' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/informacion.ascx" TagName="informacion"
    TagPrefix="uc4" %>
<%@ Register Src="~/controles/general/valorLista.ascx" TagName="lista" TagPrefix="lis" %>
<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="TextoAvanzado"
    TagPrefix="txt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" runat="Server">
 <style>
        .columnasgrilla
        {
            width: 200px;
            text-align:left
        }
        .columnasgrillafecha
        {
            padding-left :5px;
            padding-right :5px;
            text-align:center
        }
        .titulopanel
        {
            font-size: 12px;
        }
        .lbl_titulovalor{
            text-align :right;
            font-size:12px;
            font-weight: bold;
            color: #28679d;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            text-decoration: none;
            cursor: default;
            border-top-style: none;
            border-right-style: none;
            border-left-style: none;
            background-color: transparent;
            border-bottom-style: none;
}
    </style>
    <asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo'></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" runat="Server">
    <uc2:popup ID="pop_agregarEquipo" runat="server" />
    <table class="tbl_marcoFormulario" width="100%">
        <tr>
            <td>
                <uc4:informacion ID="inf_alquiler" runat="server" a_bln_orientacionVertical="false" />
            </td>
        </tr>
        <tr>
            <td>
                <tab:tabs ID='Tabs' runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="pnl_detalleDespacho" runat="server" CssClass="lbl_titulovalor">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="lbl_fechadespacho" runat="server" CssClass="lbl"></asp:Label>
                            </td>
                            <td style ="text-align:left" >
                                <fec:fechaAvanzada ID="fec_despacho" runat="server" a_bln_obligatorio="true" a_str_prefijo="fh"
                                    FechaSeleccionada='<%# eval("fec_despacho") %>' />
                            </td>
                        </tr>
                         <tr>
                                        <td>
                                            <asp:Label ID="lbl_sucursal" runat="server" CssClass="lbl"> sucursal destino </asp:Label>
                                        </td>
                                        <td>
                                            <bus:busquedaAvanzada ID="bus_sucursal" runat="server" a_bln_obligatorio="false" a_str_campo="sucursal" a_bol_postBack="true" 
                                                a_str_tabla="ter_sucursal" />
                                        </td>
                                    </tr>
                         <tr>
                                        <td>
                                            <asp:Label ID="lbl_bodega" runat="server" CssClass="lbl" Text="Bodega origen"> </asp:Label>
                                        </td>
                                        <td>
                                            <bus:busquedaAvanzada ID="bus_bodega" runat="server" a_str_campo="bodega" a_str_tabla="gen_bodega"
                                                a_bln_obligatorio="false"  a_str_filtroTemporal="[id_sucursal]>0" a_bol_postBack="true"
                                                Onseleccionar="bus_bodega_seleccionar" a_str_grupoValidacion="ninguna" />
                                        </td>
                                    </tr>
                        
                        <tr><td><asp:Label ID="lbl_subtipo" runat ="server"  CssClass ="lbl" ></asp:Label></td>
                        <td>
                        <bus:busquedaAvanzada id="bus_subtipo" runat="server" a_str_tabla ="doc_subtipoDocumento" a_str_campo ="subtipodocumento,subtipodocumento_codigo" a_str_filtroTemporal = " active=1 and id_tipodocumento in(6) " /></td></tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl_observaciones" runat="server" CssClass="lbl">  </asp:Label>
                            </td>
                            <td style="text-align:left ">
                                <asp:TextBox  ID="txt_observacionesDesp" CssClass ="txt_multilinea"  runat="server" />
                            </td>
                            <td>
                            <asp:RequiredFieldValidator ID='rfv_observaciones' runat='server' ControlToValidate='txt_observacionesDesp'
                            ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                      
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lbl_mensaje" runat="server"   Visible="false"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="pnl_equipo" runat="server" CssClass ="lbl_titulovalor" >
                    <table>
                        <tr>
                            <td>
                                <table>
                               
                                        
                                    
                                    <tr>
                                        <td>
                                            <bti:BotonImagen ID="btn_agregarEquipo" Visible="false" runat="server" CommandName="agregar_aequipo"
                                                ImageUrl="../../images/botones/agregar.gif" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:GridView ID="grv_equipos" runat="server" AutoGenerateColumns="False" AllowPaging="false"
                                    PageSize="50">
                                    <Columns>
                                        <asp:TemplateField>
                                            <HeaderTemplate>
                                                <asp:CheckBox ID="chb_seleccionar" runat="server" />
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                            <asp:HiddenField ID="bloqueadespacho_equipo" runat="server" value='<%# eval("bloquearDespacho") %>'/>
                                                <asp:CheckBox ID="chb_seleccionar" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText="res_metadata,equ_equipo_equipo" DataField="equipo" ItemStyle-CssClass="columnasgrilla"  />
                                        <asp:BoundField HeaderText="res_metadata,equ_equipo_equipo_serial" DataField="serial" ItemStyle-CssClass="columnasgrilla"  />
                                        <asp:BoundField HeaderText="res_etiquetas_alq,despacho" DataField="despacho" ItemStyle-CssClass="columnasgrilla"  />                                    
                                        <asp:TemplateField HeaderText="res_metadata,equ_equipo_horometroactual" >
                                            <ItemTemplate>
                                                <asp:TextBox ID="txt_horometroActual" runat="server" CssClass="txt_numero" Visible='<%# iif( cbool(eval("tienehorometro")),true,false) %>'   Text='<%#  iif(cbool(eval("tienehorometro")),eval("horometroActual"),"0")  %>' />
                                                <asp:Label ID="lbl_idequipo" runat="server" CssClass="invisible" Text='<%# eval("id_equipo") %>'></asp:Label>
                                                <asp:Label ID="lbl_idpadre" runat="server" CssClass="invisible" Text='<%# eval("id_equipopadre") %>'></asp:Label>
                                                <asp:Label ID="lbl_idTercero" runat="server" CssClass="invisible" Text='<%# eval("id_tercero") %>'></asp:Label>
                                                <asp:Label ID="lbl_idAlquiler" runat="server" CssClass="invisible" Text='<%# eval("id_Alquiler") %>'></asp:Label>
                                                <asp:Label ID="lbl_idDetalleAlquiler" runat="server" CssClass="invisible" Text='<%# eval("idDetalleAlquiler") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <%--  <asp:TemplateField HeaderText="res_etiquetas_alq,crearot" ItemStyle-HorizontalAlign="Center"  >
                                            <ItemTemplate  >
                                                <asp:CheckBox id="chk_ot" runat="server" CssClass ="" Checked ='<%# eval("chkot") %>'  AutoPostBack="true" OnCheckedChanged ="chk_CheckedChanged"  />
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
                                      <asp:TemplateField HeaderText="res_mensajes,moverComponetesalquiler" ItemStyle-HorizontalAlign="Center"  >
                                            <ItemTemplate  >
                                                <asp:CheckBox id="chk_componente" runat="server" CssClass =""/>
                                                <bus:busquedaAvanzada id="bus_equipo" runat="server" a_str_tabla="equ_equipo" a_str_campo ="equipo,equipo_serial,equipo_codigo"  />
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
                        <td>
                        <table>
                        <tr><td colspan ="2">
                        <asp:CheckBox ID="chk_todosot" runat="server"  AutoPostBack="true" Visible="false"  Enabled ="false" OnCheckedChanged ="chk_CheckedChanged"  /> 
                        </td></tr>
                        <tr><td><asp:Label ID='lbl_subtipoDocumento' runat='server' CssClass='lbl'></asp:Label></td><td><bus:busquedaAvanzada ID='bus_subtipoDocumento' runat='server' a_str_tabla='doc_subtipoDocumento'  a_str_filtros="id_tipoDocumento=2" a_NObol_guardarNoExiste="true" /></td></tr>
                        <tr><td><asp:Label ID='lbl_tipoServicio' runat='server' CssClass='lbl'></asp:Label></td><td><bus:busquedaAvanzada ID='bus_tipoServicio' runat='server' a_str_tabla='gen_tipoServicio'  /></td></tr>
                        <tr><td><asp:Label ID='lbl_departamentoSolicitud' runat='server' CssClass='lbl'></asp:Label></td><td><bus:busquedaAvanzada ID='bus_departamentoSolicitud' runat='server' a_str_tabla='ort_departamentoSolicitud'  /></td></tr>
                        </table>
                        </td>
                        </tr>
                    </table>
                </asp:Panel>
                <hr />
                <asp:Panel ID="pnl_repuesto" runat="server" CssClass ="lbl_titulovalor">
                    <table>
                        <tr>
                            <td>
                                <table>
                                
                                    <tr>
                                        <td colspan="2">
                                            <bti:BotonImagen ID="btn_agregarRepuesto" Visible="false" runat="server" CommandName="agregar_Repuesto"
                                                ImageUrl="../../images/botones/agregar.gif" CommandArgument='<%#eval("id_detalleAlquiler") %>' />
                                        </td>
                                    </tr> 
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:GridView ID="grv_repuestos" runat="server" AutoGenerateColumns="false" AllowPaging="false"
                                    PageSize="50">
                                    <Columns>
                                      <asp:BoundField HeaderText="res_metadata,cat_catalogo_repuesto_catalogo_repuesto"   ItemStyle-CssClass="columnasgrilla"      DataField="repuesto" />
                                        <asp:BoundField HeaderText="res_metadata,cat_catalogo_codigoinventario" DataField="codigoinventario" ItemStyle-CssClass="columnasgrilla"   />
                                        <asp:TemplateField HeaderText="res_metadata,cat_catalogo_bodega_existencia" ItemStyle-CssClass="columnasgrilla" >
                                            <ItemTemplate>
                                            <asp:HiddenField ID="bloqueadespacho_repuesto" runat="server" value='<%# eval("bloquearDespacho") %>'/>
                                                <asp:Label ID="lbl_existencias" runat="server"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText="res_etiquetas_alq,calq" DataField="cantidadalquilada" />
                                        <asp:BoundField HeaderText="res_metadata,doc_itemdocumento_cantidadplaneado" DataField="cantidadplaneada"   />
                                        <asp:TemplateField HeaderText="res_etiquetas_alq,cantidaddespachada"  >
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_idDetalle" runat="server" CssClass="invisible" Text='<%# eval("id_detalleAlquiler") %>'></asp:Label>
                                                   <asp:Label ID="lbl_idcatalogo" runat="server" CssClass="invisible" Text='<%# eval("id_catalogo") %>'></asp:Label>
                                                <asp:TextBox ID="txt_cantidadDespacho" runat="server" CssClass="txt_numero" Text='<%# eval("cantidadDespacho") %>' />
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
                  <hr />
                
                <asp:Panel ID="pnl_adicional" runat="server" CssClass ="lbl_titulovalor">
                <table>
                <tr><td>
                  <asp:GridView ID="grv_adicionales" runat="server" AutoGenerateColumns="false" AllowPaging="false"
                                    PageSize="50">
                                    <Columns>
                                      <asp:BoundField HeaderText="res_etiquetas_alq,adicional"   ItemStyle-CssClass="columnasgrilla"      DataField="adicional" />
                                       <asp:BoundField HeaderText="res_metadata,doc_itemdocumento_cantidadplaneado" DataField="cantalq" ItemStyle-CssClass="columnasgrilla"   />
                                       <asp:BoundField HeaderText="res_campoGrilla,doc_itemdocumento_costoejecutado"   ItemStyle-CssClass="columnasgrilla"      DataField="despachado" />
                                       <asp:TemplateField HeaderText="res_etiquetas_alq,cantidad"  >
                                            <ItemTemplate>
                                               <asp:Label ID="lbl_id" runat="server" CssClass="invisible" Text='<%# eval("id") %>'></asp:Label>
                                               <asp:Label ID="lbl_idcatalogo" runat="server" CssClass="invisible" Text='<%# eval("id_catalogo") %>'></asp:Label>
                                                <asp:TextBox ID="txt_cantidad" runat="server" CssClass="txt_numero"  />
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
                </td></tr>
                
                </table>
                </asp:Panel> 
                
            </td>
        </tr>
          <tr style="text-align:center ">
                            <td >
                                <bti:BotonImagen ID="btn_despachar" runat="server" ImageUrl="../../images/botones/aceptar.jpg" />
                            </td>
           </tr>
    </table>
</asp:Content>
