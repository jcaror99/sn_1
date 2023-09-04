<%@ Page Language="VB" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master" AutoEventWireup="false" CodeBehind="alq_DevolucionEquipos.aspx.vb" Inherits="website.samm_web.forms_alq_alq_DevolucionEquipos" title="Devolucion Equipos" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Src="~/controles/cnt/inc_informacionEquipos.ascx" TagName="inc_informacionEquipos"
TagPrefix="uc3" %>
<%@ Register Src='~/controles/general/tabs.ascx' TagName='tabs' TagPrefix='tab' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/busquedaAvanzadaMultiple.ascx' TagName='busquedaAvanzadaMultiple' TagPrefix='bus' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register src="~/controles/general/informacion.ascx" tagname="informacion" tagprefix="uc4" %>
<%@ Register Src="~/controles/general/valorLista.ascx" TagName="lista" TagPrefix="lis" %>
<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="TextoAvanzado" TagPrefix="txt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" Runat="Server">
    <asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo'></asp:Label>
<uc2:popup ID="pop_devolver" runat="server"  />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" Runat="Server">
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
           font-weight: bold;
            color: #28679d;
        }
</style>

<table>
<tr><td>
<uc4:informacion ID="inf_alquiler" runat="server" a_bln_orientacionVertical="false" />

</td></tr>  
<table cellpadding="0" cellspacing="0" class="tbl_marcoFormulario" width="100%" >
<tr>
<td>
<tab:tabs ID='Tabs' runat="server" />
</td>
</tr>
<tr>
<td>
<table cellpadding="10">
<tr>
<td>
<asp:Label ID="lbl_otrosalquileres" runat="server" CssClass="lbl"> </asp:Label>
<asp:DropDownList ID="drp_otrosAlquileres" runat="server" CssClass="drp" AutoPostBack="true"></asp:DropDownList>
</td>
</tr>
</table>
</td>
</tr>


<tr>
<td>



<asp:Panel ID="pnl_detalle" runat="server"  CssClass ="titulopanel"   >
<table>
<tr><td><asp:Label ID="lbl_tipodev" runat="server" CssClass ="lbl"  ></asp:Label></td>
<td><asp:DropDownList ID="drp_tipodev" CssClass ="drp" runat="server" AutoPostBack="true" ></asp:DropDownList></td>
</tr>
<tr><td><asp:Label ID="lbl_salida" runat="server" CssClass ="lbl"  ></asp:Label></td>
<td><bus:busquedaAvanzada ID="bus_documento" runat="server" a_str_campo="documento_numero,prefijo" a_str_tabla="doc_documento" a_str_filtroTemporal=" fechacierre_ff >0 and id_subtipodocumento in (select id from doc_subtipodocumento where active=1 and id_tipodocumento in (6) ) and id_estadotipodocumento in (select id from doc_estadotipodocumento where active=1 and estadotipodocumento_codigo not in('CAN')) "  a_bol_postBack ="true" /></td>
</tr>

<tr>
<td><asp:Label ID="lbl_fechaDevolucion" runat="server" CssClass ="lbl" ></asp:Label></td>
<td style ="text-align:left" ><fec:fechaAvanzada ID="fec_devolucion" runat="server" a_bln_obligatorio = "true" a_str_prefijo ="fh"  FechaSeleccionada='<%# eval("fec_devolucion") %>' /> </td>
</tr>
<tr>
<td><asp:Label ID="lbl_sucursalCliente" runat="server" CssClass ="lbl" > </asp:Label></td>
<td><bus:busquedaAvanzada ID ="bus_succliente" runat="server"  a_bol_postBack="true"  a_str_campo="sucursal" a_str_tabla="ter_sucursal"/>   </td>
</tr>
<tr>
<td><asp:Label ID="lbl_sucursal" runat ="server" CssClass="lbl"></asp:Label></td>
<td>
<bus:busquedaAvanzada  ID="bus_sucursal" runat ="server"  a_str_campo="sucursal" a_str_tabla="ter_sucursal" a_bol_postBack="true"  a_str_filtroTemporal=" id_tercero in(select id from ter_tercero where active=1 and  esempresapropia=1)" /></td>
</tr>
<tr>
<td><asp:Label ID="lbl_bodegadev" runat="server" CssClass ="lbl" > </asp:Label></td>
<td><bus:busquedaAvanzada ID ="bus_bodegadev" runat="server"  a_str_campo="bodega" a_str_tabla="gen_bodega" a_bol_postBack="true"   />   </td>
</tr>


                        <tr><td><asp:Label ID="lbl_subtipo" runat ="server"  CssClass ="lbl" ></asp:Label></td>
                        <td>
                        <bus:busquedaAvanzada id="bus_subtipo" runat="server" a_str_tabla ="doc_subtipoDocumento" a_str_campo ="subtipodocumento,subtipodocumento_codigo" a_str_filtroTemporal = " active=1 and id_tipodocumento in(5) " /></td></tr>
<tr>
<td>
<asp:Label ID="lbl_observacionesdev"  runat ="server" CssClass="lbl">  </asp:Label>
</td>
<td>
<txt:TextoAvanzado ID="txt_observacionesDev"  CssClass ="txt_formulario" runat="server" />

</td>
</tr>
<tr><td></td>
<td>
<bti:BotonImagen ID="btn_devolver"  runat="server" ImageUrl="../../images/botones/aceptar.jpg" /> 
<asp:Label  ID="lbl_mensaje" runat="server"  CssClass="lbl" Visible="false" > </asp:Label>
</td>
</tr>
</table>
</asp:Panel>
</td></tr>
<tr>
<td>
<asp:Panel ID="pnl_equipos" runat ="server"   CssClass ="titulopanel"  >
<asp:GridView ID="grv_devequipos" runat ="server" AutoGenerateColumns ="false"  AllowPaging ="false" PageSize ="50"  >
<Columns>
<asp:TemplateField >
<HeaderTemplate >
<asp:CheckBox ID="chb_seleccionar" runat="server" />
</HeaderTemplate>
<ItemTemplate> 
<asp:Label ID="lbl_iditemsal" runat="server"  CssClass="invisible"  text ='<%#eval("id_itemsal")%>'  >  </asp:Label>
<asp:CheckBox ID="chb_seleccionar" runat="server"  text='<%# eval("chk_devequipos") %>'   />
 <asp:Label ID="lbl_idpadre" runat="server" CssClass="invisible" Text='<%# eval("id_equipopadre") %>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>                         
<asp:BoundField HeaderText="res_metadata,equ_equipo_equipo" DataField ="equipo" ItemStyle-CssClass="columnasgrilla" />
<asp:BoundField HeaderText="res_metadata,equ_equipo_equipo_serial" DataField ="serial" ItemStyle-CssClass="columnasgrilla"  />
<asp:TemplateField HeaderText="res_etiquetas_alq,horometrosalida"   >
<ItemTemplate> 
   <asp:label ID="lbl_horometroSal" runat="server"  CssClass="lbl"  Visible='<%# iif( cbool(eval("tienehorometro")),true,false) %>'   Text='<%#  iif(cbool(eval("tienehorometro")),eval("horometro_salida"),"")  %>'  />                  
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField HeaderText="res_etiquetas_alq,fechaEntrega" DataField ="despacho" DataFormatString ="{0:d}"  />
<asp:TemplateField HeaderText="res_metadata,equ_equipo_horometroactual"   >
<ItemTemplate> 
   <asp:label ID="lbl_horometroDev" runat="server"  CssClass="lbl"  Visible='<%# iif( cbool(eval("tienehorometro")),true,false) %>'   Text='<%#  iif(cbool(eval("tienehorometro")),"Fecha ultima lectura: " & eval("fech_ultlectura") & " Horometro: " & eval("horodespacho"),"")  %>'  />                  
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="res_etiquetas_alq,horometrodevolucion"   >
<ItemTemplate> 
   <asp:TextBox ID="txt_horometroDev" runat="server"  CssClass="txt_numero"  Visible='<%# iif( cbool(eval("tienehorometro")),true,false) %>'   Text='<%#  iif(cbool(eval("tienehorometro")),eval("horometroDev"),"0")  %>'  />                  
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="res_etiquetas_alq,danado" Visible ="false">
<ItemTemplate> 
<table>
<tr><td><asp:CheckBox ID="chk_danado" runat="server" AutoPostBack="true" a_str_prefijo ="da" CssClass="chk" text='<%# eval("danado") %>' OnCheckedChanged="chk_eqdanado_cambia"  />
</td>
<td><asp:TextBox ID="txt_comentario" runat="server" CssClass ="txt" Visible="false"  text='<%# eval("comentario") %>'  />
<asp:Label ID="lbl_eqidAlquiler" runat="server"  CssClass="invisible"  text ='<%#eval("id_eqalquiler")%>' >  </asp:Label>
<asp:Label ID="lbl_eqidDetalle" runat="server"  CssClass="invisible"  text ='<%#eval("id_eqdetalleAlquiler")%>'  >  </asp:Label>
<asp:Label ID="lbl_idEquipo" runat="server"  CssClass="invisible"  text ='<%#eval("id_equipo")%>'  >  </asp:Label>
<asp:Label ID="lbl_eqidSucursal" runat="server"  CssClass="invisible"  text ='<%#eval("id_eqsucursal")%>'  >  </asp:Label>
<asp:Label ID="lbl_eqidTercero" runat="server"  CssClass="invisible"  text ='<%#eval("id_eqtercero")%>'  >  </asp:Label>
</td>
</tr>
</table>
</ItemTemplate>                    
</asp:TemplateField>
<%--<asp:TemplateField HeaderText="res_etiquetas_alq,crearot"  Visible ="true" >
<ItemTemplate>
<table>
<tr>
<td><asp:CheckBox ID="chk_crearotEquipo" runat="server"  CssClass="chk"  Checked ='<%# eval("chkot") %>'   AutoPostBack="true" OnCheckedChanged ="chk_CheckedChanged"  /></td>
</tr>
</table>
</ItemTemplate>
</asp:TemplateField>
--%>  <asp:TemplateField HeaderText="res_mensajes,moverComponetesalquiler" ItemStyle-HorizontalAlign="Center"  >
        <ItemTemplate  >
            <asp:CheckBox id="chk_componente" runat="server" CssClass =""/>
            <bus:busquedaAvanzada id="bus_equipo" runat="server" a_str_tabla="equ_equipo" a_str_campo ="equipo,equipo_serial,equipo_codigo"  />
        </ItemTemplate>
    </asp:TemplateField>
    
    <asp:TemplateField> 
    <ItemTemplate>
    <asp:label runat="server" ID="lbl_validacionFechaDevolucion" class="lbl_textoInformacion"></asp:label>
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
<table>
<tr><td colspan ="2"  ><asp:CheckBox ID="chk_todosot" runat="server"   AutoPostBack="true" Visible="false" Enabled ="false" OnCheckedChanged ="chk_CheckedChanged"  /> </td></tr>
<tr><td><asp:Label ID='lbl_subtipoDocumento' runat='server' CssClass='lbl'></asp:Label></td><td><bus:busquedaAvanzada ID='bus_subtipoDocumento' runat='server' a_str_tabla='doc_subtipoDocumento'  a_str_filtros="id_tipoDocumento=2" a_NObol_guardarNoExiste="true" /></td></tr>
<tr><td><asp:Label ID='lbl_tipoServicio' runat='server' CssClass='lbl'></asp:Label></td><td><bus:busquedaAvanzada ID='bus_tipoServicio' runat='server' a_str_tabla='gen_tipoServicio'  /></td></tr>
<tr><td><asp:Label ID='lbl_departamentoSolicitud' runat='server' CssClass='lbl'></asp:Label></td><td><bus:busquedaAvanzada ID='bus_departamentoSolicitud' runat='server' a_str_tabla='ort_departamentoSolicitud'  /></td></tr>
</table>
</asp:Panel>
<hr />
</td>
</tr>
<tr><td>
<asp:Panel ID="pnl_repuestos" runat ="server" CssClass ="titulopanel"  >
<table>
<tr>
<td><asp:CheckBox ID="chk_crearotRepuesto" runat="server" AutoPostBack="true"  Visible="false" Enabled="false"  CssClass="lbl"  /></td>
<td><bus:busquedaAvanzada ID="bus_otrepuesto"  runat="server" a_str_campo="subtipodocumento" a_str_tabla="doc_subtipoDocumento" a_str_filtroTemporal= "id>0 and active=1 and  id_tipodocumento in(2)" Visible="false" /></td>
</tr>


</table>
<asp:GridView ID="grv_devrepuestos" runat ="server" AutoGenerateColumns ="false"  AllowPaging ="false" PageSize ="50"  >
<Columns>
<%--<asp:TemplateField >
<HeaderTemplate >
<asp:CheckBox ID="chb_seleccionar" runat="server" />
</HeaderTemplate>
<ItemTemplate> 
<asp:CheckBox ID="chb_seleccionar" runat="server"  text='<%# eval("chk_devrptos") %>'  />
</ItemTemplate>
</asp:TemplateField> --%>
<asp:BoundField HeaderText="res_metadata,cat_catalogo_repuesto_catalogo_repuesto" DataField="repuesto" ItemStyle-CssClass="columnasgrilla" />
<asp:BoundField HeaderText="res_metadata,cat_catalogo_codigoinventario" DataField="codigoinventario" ItemStyle-CssClass="columnasgrilla" />
<%--<asp:BoundField HeaderText="res_etiquetas_alq,calq" DataField="cantiAlquilada" ItemStyle-CssClass="columnasgrilla" />
--%><asp:TemplateField HeaderText ="res_etiquetas_alq,calq"  ItemStyle-CssClass="columnasgrilla">
<ItemTemplate>
<asp:Label ID="lbl_iditemsal" runat="server"  CssClass="invisible"  text ='<%#eval("id_itemsal")%>'  >  </asp:Label>
 <asp:Label ID="lbl_alquilado" runat="server"  CssClass ="lbl" text='<%# eval("cantiAlquilada")%>' > </asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField  HeaderText ="res_etiquetas_alq,cantidaddoc" >
<ItemTemplate>
<asp:Label ID="lbl_candoc" runat="server"  CssClass="lbl"  text ='<%#eval("candoc")%>'  >  </asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText ="res_etiquetas_alq,cdev"  >
<ItemTemplate>
  <asp:TextBox ID="txt_devolucion" runat="server"  CssClass ="txt_numero" Visible="true"  text='<%# eval("devolucion") %>'  />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText ="res_etiquetas_alq,danado" Visible ="false">
<ItemTemplate>
 <asp:CheckBox ID="chk_repdanado" runat="server" AutoPostBack="true" a_str_prefijo ="da" CssClass="chk" text='<%# eval("repdanado") %>' OnCheckedChanged="chk_rep_danado" /> 
</ItemTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText ="res_etiquetas_alq,cantidad" Visible ="false">
<ItemTemplate>
  <asp:TextBox ID="txt_cantidadrepdanado" runat="server" CssClass="txt_numero" visible ="false" text='<%# eval("cantdanado") %>'  />
</ItemTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText ="res_metadata,doc_documentocomentario_documentocomentario" Visible ="false" >
<ItemTemplate>
  <asp:TextBox ID="txt_comentariorep" runat="server" CssClass="txt" Visible="false"  text='<%# eval("comentariorep") %>'  />
</ItemTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="res_etiquetas_alq,faltantes" Visible="false"  >
<ItemTemplate>
<table><tr>
<td><asp:CheckBox ID="chk_repfaltante" runat="server" AutoPostBack="true" a_str_prefijo ="fa" CssClass="chk" text='<%# eval("repfaltante") %>' OnCheckedChanged="chk_rep_danado" />
</td>
<td>  <asp:TextBox ID="txt_faltantes" runat="server"  CssClass ="txt_numero" Visible="false"  text='<%# eval("repfaltantes") %>'  />
<asp:Label ID="lbl_idAlquiler" runat="server"  CssClass="invisible"  text ='<%#eval("id_alquiler")%>' >  </asp:Label>
<asp:Label ID="lbl_idDetalle" runat="server"  CssClass="invisible"  text ='<%#eval("id_detalleAlquiler")%>'  >  </asp:Label>
<asp:Label ID="lbl_idCatalogo" runat="server"  CssClass="invisible"  text ='<%#eval("id_catalogo")%>'  >  </asp:Label>
<asp:Label ID="lbl_idSucursal" runat="server"  CssClass="invisible"  text ='<%#eval("id_sucursal")%>'  >  </asp:Label>
<asp:Label ID="lbl_idTercero" runat="server"  CssClass="invisible"  text ='<%#eval("id_tercero")%>'  >  </asp:Label>

</td>
</tr></table>
</ItemTemplate>
</asp:TemplateField>
<%--<asp:TemplateField HeaderText="res_etiquetas_alq,crearot" Visible="false" >
<ItemTemplate>
<table><tr><td><asp:CheckBox ID="chk_crearOtrpsto" runat="server" AutoPostBack="true" a_str_prefijo ="fa" Visible="false" Enabled="false"  CssClass="chk" OnCheckedChanged="chk_crearOtrpsto" /></td>
<td><bus:busquedaAvanzada ID="bus_otsRtos" runat="server" a_str_tabla ="doc_documento.ot" a_str_campo="documento.ot" Visible ="false" /></td></tr></table>
</ItemTemplate>
</asp:TemplateField>
--%>
</Columns>
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
</asp:GridView>
</asp:Panel>
<hr />
</td></tr>
<tr><td>
<asp:Panel ID="pnl_faltantes" runat ="server" CssClass ="titulopanel"  >
<table> <tr>
          <td>
                     <asp:Label ID="lbl_bodegaperdidos" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <bus:busquedaAvanzada  ID="bus_bodegaPerdidos"  a_str_tabla="gen_bodega" runat="server"  />
                    </td>
                   
        </tr><tr><td><asp:Label ID="lbl_mensajeperdidos" runat="server"  CssClass="lbl_mensaje" Visible="false" ></asp:Label></td></tr> </table>
<asp:GridView ID="grv_faltantes" runat ="server" AutoGenerateColumns ="false"  AllowPaging ="false" PageSize ="50"  >
<Columns>

<asp:BoundField HeaderText="res_metadata,cat_catalogo_repuesto_catalogo_repuesto" DataField="repuesto" ItemStyle-CssClass="columnasgrilla" />
<asp:BoundField HeaderText="res_metadata,cat_catalogo_codigoinventario" DataField="codigoinventario" ItemStyle-CssClass="columnasgrilla" />
<asp:TemplateField HeaderText="res_etiquetas_alq,faltantes" >
<ItemTemplate>
 <asp:Label ID="lbl_iddetalle" runat="server" CssClass="lbl" Visible ="false" Text='<%# eval("id_detalleAlquiler") %>' ></asp:Label> 
<asp:TextBox ID="txt_faltantes" runat="server"  CssClass ="txt_numero"   />
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
<hr />
</td></tr>
<tr><td>     
  <asp:Panel ID="pnl_adicional" runat="server"  CssClass ="titulopanel">
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


</td></tr>

</table>
</table>
</asp:Content>
