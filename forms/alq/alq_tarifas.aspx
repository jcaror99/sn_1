<%@ Page Language="VB" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master"  AutoEventWireup="false" CodeBehind="alq_tarifas.aspx.vb" Inherits="website.samm_web.forms_alq_alq_tarifas" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc2" %>
<%@ Register Src="~/controles/cnt/inc_informacionEquipos.ascx" TagName="inc_informacionEquipos" TagPrefix="uc3" %>
<%@ Register Src='~/controles/general/tabs.ascx' TagName='tabs' TagPrefix='tab' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register src="~/controles/general/informacion.ascx" tagname="informacion" tagprefix="uc4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" Runat="Server">
<asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo'></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" Runat="Server">
<table class='tbl_formulario'>
<tr><td>
<uc4:informacion ID="inf_alquiler" runat="server" a_bln_orientacionVertical="false" />
</td></tr>
<tr><td>

<bti:BotonImagen ID="bti_agregartodos"  runat="server" ImageUrl="../../images/botones/aplicarVariosItems.gif" CausesValidation="false" />
</td></tr>
<tr><td class='td_lblFormulario' >
      <asp:GridView ID="grd_detalles" runat="server" AutoGenerateColumns="False">
                    <Columns>
                    <asp:TemplateField HeaderText="res_metadata,equ_detallealquiler_detallealquiler"  >
                    <ItemTemplate>
                    <asp:Label ID="lbl_iddetalle" runat="server" Text='<%# eval("id") %>' CssClass="invisible" ></asp:Label>
                    <asp:Label ID="lbl_detalle" runat="server" Text='<%# eval("detallealquiler") %>'  ></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_metadata,alq_tarifa_tarifa"  >
                    <ItemTemplate>
                    <table>
                    <tr><td>                
                    <asp:GridView ID="grv_tarifas" runat="server" AutoGenerateColumns="false"    OnRowDeleting="s_tarifasEliminar" >
                                                <Columns>
                                                    <asp:TemplateField HeaderText="res_campoGrilla,cat_tarifa_tarifa">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_tarifa" runat="server" Text='<%# eval("doc_itemdocumento_itemdocumento") %>' CssClass="lbl"></asp:Label>
                                                            <asp:Label ID="lbl_idtarifa" runat="server" Text='<%# eval("id") %>' CssClass="invisible"></asp:Label>
                                                            <asp:Label ID="lbl_idtipotarifa" runat="server" Text='<%# eval("id_tipotarifa") %>' CssClass="invisible"></asp:Label>
                                                            <asp:Label ID="lbl_iditem" runat="server" Text='<%# eval("id_itemdocumento") %>' CssClass="invisible"></asp:Label>
                                                            <asp:Label ID="lbl_idcatalogo" runat="server" Text='<%# eval("id_catalogo") %>' CssClass="invisible"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="res_campoGrilla,cnt_pagoscontrato_valor">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_valor" runat="server" Text='<%# eval("doc_itemDocumento_valorunitarioplaneado") %>' CssClass="lbl"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                     <asp:TemplateField HeaderText="res_campoGrilla,alq_tipotarifa_tipotarifa" >
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_tipotarifa" runat="server" Text='<%# eval("alq_tipotarifa_tipotarifa") %>' CssClass="lbl"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="res_campoGrilla,alq_tarifa_horasincluidas" >
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_horasincluida" runat="server" Text='<%# eval("horasincluidas") %>' CssClass="lbl"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                       <asp:TemplateField HeaderText="res_campoGrilla,alq_tarifa_cantidadincluida" >
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_cantidadincluida" runat="server" Text='<%# eval("cantidadincluida") %>' CssClass="lbl"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                  <asp:ButtonField CommandName ="Delete" CausesValidation="false" ButtonType="Image" ImageUrl="../../images/botones/eliminar.png" ControlStyle-Width="20" ControlStyle-Height="20"   />
                                                </Columns>
                                            </asp:GridView></td></tr>
                    <tr><td>
                    <table>
                    <tr>
                     <td><asp:Label ID="lbl_tipotarifa" runat="server" CssClass="lbl" ></asp:Label></td>
                     <td><bus:busquedaAvanzada id="bus_tipotarifa" a_str_camposDrop ="tipoTarifa"  a_str_tabla ="alq_tipoTarifa" runat="server" a_str_camposGrilla="tipoTarifa,tipoTarifa_codigo"  a_str_campo="tipoTarifa,tipoTarifa_codigo" Onseleccionar="s_seleccionartipotarifa" a_bol_postBack="true"   /></td>
                    </tr>
                    <tr>
                    <td><asp:Label ID="lbl_tarifas" runat="server" Text="" CssClass="lbl"></asp:Label></td>
                    <td>
                   <bus:busquedaAvanzada  ID="bus_tarifas" runat="server" a_bln_obligatorio="true" a_str_tabla="cat_catalogo.otro" a_str_campo ="" a_str_filtroTemporal=" periodoalquiler>0 " a_bol_postBack="true" Onseleccionar="s_seleccionartarifa" />

                    </td>                  
                    </tr>
                    <tr>
                    <td><asp:Label ID="lbl_horas" runat="server" CssClass="lbl" Visible='<%# IIf( eval("id_catalogo")>0,false,true) %>' > </asp:Label> <act:filteredtextboxextender id='ftb_horas' runat='server' targetcontrolid='txt_horas'  filtertype='Numbers,Custom' /> </td>
                    <td><asp:TextBox ID="txt_horas" runat="server" CssClass="txt" Visible='<%# IIf( eval("id_catalogo")>0,false,true) %>' > </asp:TextBox></td>
                    </tr>
                     <tr>
                    <td><asp:Label ID="lbl_cantidadIncluida" runat="server" CssClass="lbl" Visible='<%# IIF( eval("id_catalogo")>0,true,false) %>'  ></asp:Label> <act:filteredtextboxextender id='ftb_incluida' runat='server' targetcontrolid='txt_cantidadIncluida'  filtertype='Numbers,Custom' /> </td>
                    <td><asp:TextBox ID="txt_cantidadIncluida" runat="server" CssClass="txt" Visible='<%# IIf( eval("id_catalogo")>0,true,false) %>' ></asp:TextBox></td>
                    </tr>
                    </table>
                    </td></tr>
                    
                 
                    </table>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_metadata,equ_detallealquiler_fechadespacho_ff"  >
                    <ItemTemplate>
                    <asp:Label ID="lbl_despacho" runat="server" Text='<%# eval("fechadespacho_ff") %>'  ></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="res_metadata,equ_detallealquiler_fechadevolucion_ff"  >
                    <ItemTemplate>
                    <asp:Label ID="lbl_devolucion" runat="server" Text='<%# eval("fechadevolucion_ff") %>'  ></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="res_metadata,equ_detallealquiler_cantidadalquilada"  >
                    <ItemTemplate>
                    <asp:Label ID="lbl_alquilada" runat="server" Text='<%# eval("cantidadalquilada") %>'  ></asp:Label>
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
<tr><td ><asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje" Visible="false"  ></asp:Label></td></tr>
<tr><td ><bti:BotonImagen ID="bti_aceptar"  runat="server" ImageUrl="../../images/botones/aceptar.jpg" CausesValidation="false" /></td></tr>
</table>
<uc2:popup ID="pop_interno" runat="server" a_bol_mostrarSAMM="false" />
</asp:Content>