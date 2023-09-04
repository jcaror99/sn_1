<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master"
    CodeBehind="Configuracion.aspx.vb" Inherits="website.samm_web.forms_alq_Configuracion" %>

<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc2" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src='~/controles/general/tabs.ascx' TagName='tabs' TagPrefix='tab' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada'
    TagPrefix='ava' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/informacion.ascx" TagName="informacion"
    TagPrefix="uc4" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="bus" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaavanzada"
    TagPrefix="fecha" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" runat="Server">
    <style>
      .lbl_titulovalor{
            text-align :right;
            font-size:10px;
            font-weight: bold;
            color: #28679d;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            text-decoration: none;
            cursor:pointer;
            border-top-style: none;
            border-right-style: none;
            border-left-style: none;
            background-color: transparent;
            border-bottom-style: none;
}
        .columnasgrilla
        {
            width: 2000px;
             cursor:default;
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
    </style>
    <asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo'></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" runat="Server">
    <table>
        <tr>
            <td>
                <uc4:informacion ID="inf_alquiler" runat="server" a_bln_orientacionVertical="false" />
            </td>
        </tr>
        <tr>
            <td>
                <table cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <tab:tabs ID='Tabs' runat="server" />
                        </td>
                    </tr>
                </table>
                <table class="tbl_marcoFormulario" cellpadding="5px" cellspacing="0" width="100%">
                    <tr>
                        <td>
                            <act:collapsiblepanelextender id="clp_equipo" runat="server" targetcontrolid="pnl_equipo"
                                collapsedsize="0" collapsed="True" expandcontrolid="imb_extequipo" collapsecontrolid="imb_extequipo"
                                textlabelid="lbl_indicador" autocollapse="False" autoexpand="False" scrollcontents="false"
                                expandedimage="../../images/menu/lnk_menos.png" collapsedimage="../../images/menu/lnk_mas.png"
                                imagecontrolid="imb_extequipo" expanddirection="Vertical">
</act:collapsiblepanelextender>
                            <asp:Label CssClass="lbl" runat="server" ID="lbl_tequipo" Font-Size="12px"></asp:Label>
                            <img alt="" id="imb_extequipo" src="../../images/menu/lnk_mas.png" runat="server" />
                            <table>
                                <tr>
                                    <td>
                                        <asp:Panel ID="pnl_equipo" runat="server" CssClass="lbl" BorderStyle="Solid" BorderWidth="1px"
                                            BorderColor="Gray">
                                            <table>
                                            <tr><td><asp:Label ID="lbl_equipodisponible" runat="server" CssClass ="lbl" ></asp:Label></td> 
                                            <td > <ava:busquedaAvanzada id="bus_sucursal" runat="server" a_str_tabla ="ter_sucursal"  a_str_campo="sucursal" a_str_filtroTemporal =" paraalquiler=1 " a_bol_postBack="true"  Onseleccionar="s_filtroseleccionado"  /> </td>
                                             <td colspan="2" > <asp:CheckBox ID="chk_modelocotizado" runat="server" CssClass="lbl" AutoPostBack="true" OnCheckedChanged="s_filtroseleccionado" /> </td>
                                            </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label CssClass="lbl" runat="server" ID="lbl_tequipobus"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <bus:busquedaAvanzadaMultiple ID="bus_equipo" runat="server" a_bln_obligatorio="true"
                                                                                                                      a_str_tabla="equ_equipo" a_bol_postBack="true" a_str_grupoValidacion="agregarEquipo" />
                                                    </td>
                                                    <td>
                                                        <asp:Label CssClass="lbl" runat="server" ID="lbl_tsucursal"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="drp_sucursal" CssClass="drp" runat="server" ValidationGroup="agregarEquipo" >
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label CssClass="lbl" runat="server" ID="lbl_tdespachoE"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <fecha:fechaavanzada ID="fechadespachoE" runat="server" a_str_grupoValidacion="agregarEquipo" ></fecha:fechaavanzada>
                                                    </td>
                                                    <td>
                                                        <asp:Label CssClass="lbl" runat="server" ID="lbl_tdevolucionE"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <fecha:fechaavanzada ID="fechadevolucionE" runat="server"  a_bln_obligatorio="false"  ></fecha:fechaavanzada>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                    </td>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <bti:BotonImagen runat="server" Text="GuardarEquipo" CausesValidation="true" ID="btn_aceptarEquipos"
                                                            ImageUrl="../../images/botones/aceptar.jpg" ValidationGroup="agregarEquipo"  />
                                                    </td>
                                                </tr>
                                                 <tr>
                                                  <td>
                                                    </td>
                                                    <td>
                                                    </td>
                                                    <td>
                                                    </td>
                                                  <td colspan ="4">
                                                          <asp:Label CssClass="lbl_mensaje" runat="server" ID="lbl_mensajeEquipo" Visible="false" ></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                        <asp:Label CssClass="lbl" runat="server" ID="lbl_mensajeTotalEquipos" Visible="true" ></asp:Label>
                                    </td>
                               </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="grv_resumenAlquiler" runat="server" AutoGenerateColumns="false"
                                            OnRowCommand="grv_resumenAlquiler_RowCommand" OnRowDataBound="grv_resumenAlquiler_RowDataBound">
                                            <Columns>
                                            
                                            <asp:TemplateField>
                                            <ItemTemplate>
                                            <asp:ImageButton runat="server" Text="GuardarEquipo"  ID="btn_editarEquipos"
                                                            ImageUrl="~/images/botones/seleccionarGrilla.gif"   />
                                            </ItemTemplate>
                                            </asp:TemplateField>
                                                
                                                <asp:TemplateField HeaderText="res_etiquetas_alq,elementoalquilado" ItemStyle-CssClass="columnasgrilla">
                                                    <ItemTemplate>
                                                        <asp:Label Visible="false" ID="lbl_iddetalle" CssClass="lbl" runat="server" Text='<%# eval("id_detallealquiler") %>'></asp:Label>
                                                        <asp:Label ID="lbl_id_equipo" runat="server" Visible="false" Text='<%# eval("id_equipo") %>' > </asp:Label>
                                                        <asp:TextBox ID="txt_elemento" Enabled="false"  Width="200" runat="server" Text='<%# eval("Equipo") %>' CssClass="lbl"> </asp:TextBox>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                
                                                 <%--<asp:TemplateField HeaderText="res_metadata,equ_equipo_id_tercero_comprador" ItemStyle-CssClass="columnasgrilla">
                                                    <ItemTemplate>
                                                        <asp:TextBox ID="txt_tercero" Enabled="false"   Width="200" runat="server" CssClass="lbl" Text='<%# eval("tercero") %>'></asp:TextBox> 
                                                    </ItemTemplate>
                                                </asp:TemplateField>--%>
                                                
                                                <asp:TemplateField HeaderText="res_metadata,equ_equipo_equipo_serial" ItemStyle-CssClass="columnasgrilla">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl_identificacion" runat="server" CssClass="lbl" Text='<%# eval("Serial") %>'></asp:Label> 
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="res_metadata,cat_atributo_atributo_codigo" ItemStyle-CssClass="columnasgrilla">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl_codigo" runat="server" CssClass="lbl" Text='<%# eval("Codigo") %>'></asp:Label> 
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="res_metadata,alq_tarifa_tarifa" ItemStyle-HorizontalAlign="Right"
                                                    ItemStyle-CssClass="columnasgrilla">
                                                    <ItemTemplate>
                                                        <asp:LinkButton CausesValidation="false" ID="lnk_tarifa" runat="server" CssClass="lbl_titulovalor" 
                                                            Text='<%# eval("Tarifa","{0:C}") %>' CommandName="agregartarifas" CommandArgument='<%# eval("id_detallealquiler")& "|" & eval("id_catalogo")%>'></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="res_etiquetas_alq,fechaDespacho" ItemStyle-CssClass="columnasgrillafecha"  >
                                                    <ItemTemplate   >
                                                        <asp:LinkButton ID="hyp_fechamovimientos" CausesValidation="false"  runat="server"
                                                            CssClass="lbl_titulovalor" Text='<%# eval("FechaDespacho","{0:d}") %>' CommandName="vermovimientos"
                                                            CommandArgument='<%# eval("id_equipo")%>'></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="res_etiquetas_alq,valorliquidado" ItemStyle-CssClass="columnasgrilla"
                                                    ItemStyle-HorizontalAlign="Right">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="hyp_valorliquidado" runat="server" CssClass="lbl_titulovalor" CausesValidation="false" 
                                                            Text='<%# eval("valorliquidado","{0:C}") %>' CommandName="verliquidacion" CommandArgument='<%# eval("id_equipo")%>'></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="res_metadata,ter_sucursal_sucursal" ItemStyle-CssClass="columnasgrilla">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl_sucursal" runat="server" CssClass="lbl" Text='<%# eval("Sucursal") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="res_metadata,equ_equipo_id_estadoequipo" ItemStyle-HorizontalAlign="Right">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl_estadoequipo" runat="server" CssClass="lbl" Text='<%# eval("estadoequipo") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                      <asp:TemplateField HeaderText="res_etiquetas_alq,estadoalq" ItemStyle-HorizontalAlign="Right">
                                                    <ItemTemplate>
                                                                <asp:LinkButton ID="hyp_estado" CausesValidation="false"  runat="server"
                                                            CssClass="lbl_titulovalor" Text='<%# eval("estadoalq") %>' CommandName="verreservas"
                                                            CommandArgument='<%# eval("id_equipo")%>'></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="ID" Visible="false">
                                                    <ItemTemplate>
                                                        <asp:HyperLink ID="int_id" runat="server" Text='<%# eval("id_detallealquiler") %>'
                                                            NavigateUrl='<%# eval("id_detallealquiler") %>'></asp:HyperLink>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                  <asp:TemplateField HeaderText="res_etiquetas_alq,numservicios" ItemStyle-CssClass="columnasgrillafecha"  >
                                                    <ItemTemplate   >
                                                        <asp:LinkButton ID="hyp_servicios" CausesValidation="false"  runat="server"
                                                            CssClass="lbl_titulovalor" Text='<%# eval("numservicios") %>' CommandName="verservicios"
                                                            CommandArgument='<%# eval("id_equipo")%>'></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField > 
                                                <HeaderTemplate > <asp:LinkButton id="lnk_crearOT" ToolTip ="Crear OT" runat="server" OnClick="s_clickCrearOt" Text='<%$Resources:res_etiquetas_doc,crearOtAlq %>'></asp:LinkButton> </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="chk_ots_equipo" runat="server" Visible="false"/>
                                                </ItemTemplate>
                                                </asp:TemplateField>
                                               <asp:TemplateField>
                                                  
                                               <ItemTemplate>
                                                     <asp:ImageButton ID="imb_eliminar" runat ="server" ImageUrl ="../../images/iconos/eliminar.gif" Visible='<%# IIF( eval("estadoalquiler")=1 or eval("estadoalquiler")=4 , "true","false")   %>'  CommandArgument  ='<%# eval("id_detallealquiler")%>'  CommandName='eliminarConfiguracion' />
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
                            </table>  <hr />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <act:collapsiblepanelextender id="clp_repuestos" runat="server" targetcontrolid="pnl_repuesto"
                                collapsedsize="0" collapsed="True" expandcontrolid="img_extrepuesto" collapsecontrolid="img_extrepuesto"
                                textlabelid="lbl_indicador" autocollapse="False" autoexpand="False" scrollcontents="false"
                                expandedimage="../../images/menu/lnk_menos.png" collapsedimage="../../images/menu/lnk_mas.png"
                                imagecontrolid="img_extrepuesto" expanddirection="Vertical">
</act:collapsiblepanelextender>
                            <asp:Label CssClass="lbl" runat="server" ID="lbl_trepuesto" Font-Size="12px"></asp:Label>
                            <img alt="" id="img_extrepuesto" src="../../images/menu/lnk_mas.png" runat="server" />
                            <table>
                                <tr>
                                    <td>
                                        <asp:Panel ID="pnl_repuesto" runat="server" BorderStyle="Solid" BorderWidth="1px"
                                            BorderColor="Gray">
                                            <table>
                                             <tr><td><asp:Label ID="lbl_existenciaen" runat="server" CssClass ="lbl" ></asp:Label></td>
                                            <td> <ava:busquedaAvanzada ID="bus_bodega" runat ="server" a_str_campo ="bodega" a_str_tabla ="gen_bodega" a_bol_postBack="true" Onseleccionar="s_filtroseleccionado"  />  </td>
                                             <td colspan="2"> <asp:CheckBox ID="chk_respuestocotizado" runat="server" CssClass="lbl" AutoPostBack="true" OnCheckedChanged="s_filtroseleccionado" /> </td>
                                            </tr>

                                                <tr>
                                                    <td>
                                                        <asp:Label CssClass="lbl" runat="server" ID="lbl_trepuestobus"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <bus:busquedaAvanzadaMultiple ID="bus_repuesto" runat="server" a_bln_obligatorio="true"
                                                            a_str_campo="catalogo,codigoinventario" a_str_tabla="cat_catalogo" a_bol_postBack="true" a_str_filtroTemporal="active= 1 and id in(select id from [cat_catalogo.repuesto] where active=1 ) and id_subtipocatalogo in(select id from cat_subtipocatalogo where active=1 and id_tipocatalogo in(2))" a_str_grupoValidacion="agregarRepuesto"  />
                                                    </td>
                                                    <td>
                                                        <asp:Label CssClass="lbl" runat="server" ID="lbl_tcantidad"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txt_cantidad" runat="server" CssClass="txt_numero" ValidationGroup="agregarRepuesto"  ></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:Label CssClass="lbl" runat="server" ID="lbl_tsucursalRepuesto"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="drp_sucursalRepuesto" CssClass="drp" runat="server" ValidationGroup="agregarRepuesto" >
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label CssClass="lbl" runat="server" ID="lbl_tdespacho"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <fecha:fechaavanzada ID="fechadespachoR" runat="server" a_bln_obligatorio="true" a_str_grupoValidacion="agregarRepuesto"  >
                                                        </fecha:fechaavanzada>
                                                    </td>
                                                    <td>
                                                        <asp:Label CssClass="lbl" runat="server" ID="lbl_tdevolucion"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <fecha:fechaavanzada ID="fechadevolucionR" runat="server" a_bln_obligatorio="false"  >
                                                        </fecha:fechaavanzada>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                    </td>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <bti:BotonImagen ID="btn_aceptarRepuesto" runat="server" CausesValidation="true"
                                                            CommandName="agregarrepuesto" ValidationGroup ="agregarRepuesto"  ImageUrl="../../images/botones/aceptar.png" />
                                                    </td>
                                                </tr>
                                                 <tr>
                                                  <td colspan ="4">
                                                          <asp:Label CssClass="lbl_mensaje" runat="server" ID="lbl_mensajeRes" Visible="false" ></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                      
                                        <asp:GridView ID="grv_repuestos" runat="server" AutoGenerateColumns="false" OnRowCommand="grv_repuestos_RowCommand">
                                            <Columns>
                                            <asp:TemplateField>
                                            <HeaderTemplate>
                                           
                                             <asp:CheckBox runat ="server" ID="chb_habilitar" />
                                                                                      
                                            </HeaderTemplate>
                                            <ItemTemplate >
                                            <asp:CheckBox runat="server" ID="chb_habilitar"/>
                                            </ItemTemplate>
                                            </asp:TemplateField>
                                                <asp:TemplateField HeaderText="res_etiquetas_alq,elementoalquilado" ItemStyle-CssClass="columnasgrilla">
                                                    <ItemTemplate>
                                                        <asp:Label Visible="false" ID="lbl_iddetalle" runat="server" Text='<%# eval("id_detallealquiler") %>'></asp:Label>
                                                        <asp:TextBox ID="txt_elemento" runat="server" Enabled="false"   Width="200"   Text='<%# eval("Repuesto") %>' CssClass="lbl"> </asp:TextBox>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="res_metadata,cat_catalogo_catalogo" ItemStyle-CssClass="columnasgrilla">
                                                    <ItemTemplate>
                                                        <asp:TextBox ID="txt_identificacion" Enabled="false"    Width="200" runat="server" CssClass="lbl" Text='<%# eval("Catalogo") %>'></asp:TextBox>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="res_etiquetas_alq,tarifa" ItemStyle-HorizontalAlign="Right"
                                                    ItemStyle-CssClass="columnasgrilla">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lnk_tarifa"  CssClass="lbl_titulovalor" runat="server" CausesValidation="false"
                                                            Text='<%# eval("Tarifa") %>' CommandName="agregartarifas" CommandArgument='<%# eval("id_detallealquiler")& "|" & eval("id_catalogo")%>'></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="res_etiquetas_alq,fechaDespacho" ItemStyle-CssClass="columnasgrillafecha">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="hyp_fechamovimientosrepuestos" CausesValidation="false" runat="server"
                                                            CssClass="lbl_titulovalor" Text='<%# eval("FechaDespacho","{0:d}") %>' CommandName="vermovimientosrepu"
                                                            CommandArgument='<%#  eval("id_catalogo")%>'></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="res_etiquetas_alq,valorliquidado" ItemStyle-CssClass="columnasgrilla"
                                                    ItemStyle-HorizontalAlign="Right">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="hyp_valorliquidado"  runat="server" CssClass="lbl_titulovalor" CausesValidation ="false" 
                                                            Text='<%# eval("valorliquidado","{0:C}") %>' CommandName="verliquidacion" CommandArgument='<%# eval("id_catalogo")%>'></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="res_etiquetas_alq,devolucion" ItemStyle-CssClass="columnasgrillafecha">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="hyp_fechadevolucion" runat="server" CssClass="lbl_titulovalor" Text='<%# eval("FechaDevolucion","{0:d}") %>' CausesValidation="false" 
                                                            CommandName="vermovimientosdevol" CommandArgument='<%#  eval("id_catalogo") %>'></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                  <asp:TemplateField HeaderText="res_metadata,ter_sucursal_sucursal" ItemStyle-CssClass="columnasgrillafecha">
                                                    <ItemTemplate>
                                                      <asp:Label ID="lbl_sucursal" runat="server" CssClass="lbl" Text='<%# eval("sucursal") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="res_etiquetas_alq,csol" ItemStyle-HorizontalAlign="Right">
                                                    <ItemTemplate>
<%--                                                        <asp:Label ID="lbl_cantidadsol" runat="server" CssClass="lbl" Text='<%# eval("cantidadsolicitada") %>'></asp:Label>
--%>                                                        <asp:TextBox ID="txt_cantidadSolicitada" runat ="server" CssClass ="txt_numero" Text='<%# eval("cantidadsolicitada") %>'></asp:TextBox>                                                        
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                  <asp:TemplateField HeaderText="res_etiquetas_alq,calq" ItemStyle-HorizontalAlign="Right">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl_cantidadalq" runat="server" CssClass="lbl" Text='<%# iif(eval("cantidadalquilada").tostring()="",0,eval("cantidadalquilada")) %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                              
                                                <asp:TemplateField Visible="false">
                                                    <ItemTemplate>
                                                        <asp:HyperLink ID="int_id" runat="server" Text='<%# eval("id_catalogo") %>' NavigateUrl='<%# eval("id_catalogo") %>'></asp:HyperLink>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                              <asp:TemplateField>
                                               <ItemTemplate>
                                                     <asp:ImageButton ID="imb_eliminar" runat ="server" ImageUrl ="../../images/iconos/eliminar.gif" Visible='<%# eval("permiteEditar")  %>'  CommandArgument='<%# eval("id_detallealquiler")%>' CommandName='eliminarConfiguracion' />
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
                                <tr><td>  
                              
                                  <bti:BotonImagen ID="bti_aplicarvariositems" runat="server" ImageUrl="../../images/botones/alq_editar_sucursal_repuestos.png" CausesValidation="false" />
                                <bti:BotonImagen ID="bti_actualizarRepuesto" runat="server" CausesValidation="false" ValidationGroup="editarRepuesto"
                                                CommandName="editarRepuesto" ImageUrl="../../images/botones/aceptar.png" /></td></tr>
                            </table> <hr />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <act:collapsiblepanelextender id="clp_adicionales" runat="server" targetcontrolid="pnl_adicional"
                                collapsedsize="0" collapsed="True" expandcontrolid="imb_extadicional" collapsecontrolid="imb_extadicional"
                                textlabelid="lbl_indicador" autocollapse="False" autoexpand="False" scrollcontents="false"
                                expandedimage="../../images/menu/lnk_menos.png" collapsedimage="../../images/menu/lnk_mas.png"
                                imagecontrolid="imb_extadicional" expanddirection="Vertical">
</act:collapsiblepanelextender>
                            <asp:Label CssClass="lbl" runat="server" ID="lbl_ttadicional" Font-Size="12px"></asp:Label>
                            <img alt="" id="imb_extadicional" src="../../images/menu/lnk_mas.png" runat="server" />
                            <asp:Panel ID="pnl_adicional" runat="server" BorderStyle="Solid" BorderWidth="1px"
                                BorderColor="Gray">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label CssClass="lbl" runat="server" ID="lbl_tadicional"></asp:Label>
                                        </td>
                                        <td>
                                            <bus:busquedaAvanzadaMultiple ID="bus_catalogo" runat="server" a_bln_obligatorio="true"
                                                a_str_campo="catalogo,codigoinventario" a_str_tabla="cat_catalogo" a_bol_postBack="true" a_str_grupoValidacion="agregarAdicional"
                                                a_str_filtroTemporal="(id in(select otro.id from [cat_catalogo.otro] otro where otro.active=1 and (otro.periodoalquiler <1 or otro.periodoalquiler is null)) or id_subtipocatalogo in (select id from cat_subtipocatalogo where active=1 and id_tipocatalogo=2))" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label CssClass="lbl" runat="server" ID="lbl_tcantidadAdicional"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox runat="server" ID="txt_cantidadAdicional" CssClass="txt_numero"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <bti:BotonImagen ID="btn_aceptarAdicional" runat="server" CausesValidation="true" ValidationGroup="agregarAdicional"
                                                CommandName="agregaradicional" ImageUrl="../../images/botones/aceptar.png" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <asp:GridView ID="grd_adicional" runat="server" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:TemplateField HeaderText="res_etiquetas_alq,adicional" ItemStyle-CssClass="columnasgrilla">
                                        <ItemTemplate>
                                                <asp:LinkButton CausesValidation="false" ID="lnk_tarifa" runat="server" CssClass="lbl_titulovalor" 
                                                            Text='<%#eval("itemdocumento")  %>' CommandName="editarAdicional" CommandArgument='<%# eval("id")%>' ></asp:LinkButton>

<%--                                            <asp:TextBox ID="txt_adicional" CssClass="lbl" runat="server" Text='<%#eval("itemdocumento")  %>'></asp:TextBox>
--%>                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="res_metadata,cat_catalogo_codigoinventario" ItemStyle-CssClass="columnasgrilla">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_codigo" CssClass="lbl" runat="server" Text='<%#eval("codigoinventario")  %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                      <asp:TemplateField HeaderText="res_metadata,doc_itemdocumento_valorunitarioplaneado"
                                        ItemStyle-CssClass="columnasgrilla">
                                        <ItemTemplate>
<%--                                            <asp:Label ID="lbl_valorplaneado" CssClass="lbl" runat="server" Text='<%# FormatCurrency( eval("valorunitarioplaneado"),2)  %>'></asp:Label>
--%>                                       
                                                          <asp:LinkButton CausesValidation="false" ID="lnk_valorplaneado" runat="server" CssClass="lbl_titulovalor" 
                                                            Text='<%# FormatCurrency( eval("valorunitarioplaneado"),2) %>' CommandName="editarAdicional" CommandArgument='<%# eval("id")%>' ></asp:LinkButton>

                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="res_etiquetas_alq,cantidad" ItemStyle-HorizontalAlign="Right">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_cantidad" CssClass="lbl" runat="server" Text='<%#eval("cantidadplaneado")  %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="res_etiquetas_alq,total"  ItemStyle-CssClass="columnasgrilla">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_total" CssClass="lbl" runat="server" Text='<%# FormatCurrency(cdbl( eval("valorunitarioplaneado")) * cdbl(eval("cantidadplaneado")),2)  %>'></asp:Label>
                                                                                                           
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                       <asp:TemplateField HeaderText="res_campogrilla,equ_detallealquiler_fechaultimafactura_fh"  ItemStyle-CssClass="columnasgrilla">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_fechaliq" CssClass="lbl" runat="server" Text='<%# eval("fechaliq")  %>'></asp:Label>
                                                                                                           
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                      <asp:TemplateField>
                                               <ItemTemplate>
<%--                                                 <asp:ImageButton ID="imb_detalle" runat ="server" CommandArgument='<%# eval("id")%>'  CommandName="detalleadicional"  ImageUrl ="../../images/iconos/doc_verHistorial.jpg" />
--%>                                                   
                              <asp:ImageButton ID="imb_eliminar" runat ="server" ImageUrl ="../../images/iconos/eliminar.gif" Visible='<%# IIF( eval("cantidadEjecutado")=0 , "true","false")   %>' CommandArgument ='<%# eval("id")%>'  CommandName  ='eliminarConfiguracion' />
<%--                                                      <asp:ImageButton ID="imb_editar" runat ="server" ImageUrl ="../../images/iconos/pencil.gif"  CommandArgument ='<%# eval("id")%>'  CommandName="editarAdicional" />
--%>
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
                            <hr />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <uc2:popup ID="pop_tarifa" runat='server' />
    <uc2:popup ID="pop_sucursal" runat='server' />
</asp:Content>
