<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_equipo.ascx.vb" Inherits="website.samm_componentes.controles_ort_inc_equipo" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register src="ort_variables.ascx" tagname="ort_variables" tagprefix="var" %>
<%@ Register src="inc_tiempos.ascx" tagname="ort_tiempo" tagprefix="tiempo" %>
<%@ Register src="inc_fallas.ascx" tagname="ort_falla" tagprefix="falla" %>
<%@ Register src="inc_observaciones.ascx" tagname="ort_reporteTecnico_equipo" tagprefix="reporte" %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName="tabsPersonalizados"TagPrefix="tabper" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="../doc/inc_pendientes.ascx" TagName="ort_pendientes" TagPrefix="pendiente" %>
<table>
 <tr>
 <td>
<table id="tbl_nuevaOT" runat="server"    >
<tr>
<td>
 <asp:Label ID="lbl_ot" runat ="server" CssClass ="lbl"></asp:Label> </td>
<td>
<bus:busquedaAvanzada ID="busOts" runat="server" a_str_tabla="doc_documento.ot"
a_str_campo="doc_documento_ot_documento_numero,documento.ot" />
</td>
</tr>
<tr>
<td>
<asp:Label id="lbl_equipos" runat ="server"  CssClass ="lbl" > </asp:Label> 
</td>
<td> 
<bus:busquedaAvanzada runat="server" ID="bus_equipo" a_str_tabla="equ_equipo" a_bol_postBack="true"  a_str_grupoValidacion="ort_crearOT"  a_str_campo="equipo,equipo_serial,equipo_codigo" a_str_camposDrop="equipo" a_bln_mostrarNuevoConDrop="false" />
</td>
</tr>
<tr>
<td>
<asp:Label id="lbl_ots" runat="server" CssClass ="lbl"></asp:Label> 
</td>
 <td>
<asp:DropDownList ID="drp_ots" runat="server" CssClass="drp" AutoPostBack="true" a_str_grupoValidacion="ort_crearOT"   ></asp:DropDownList>
 </td>
 
 </tr>
 <tr id="tr_tipo_ot">
 <td>
 <asp:Label ID="lbl_tipo_ot" runat="server" CssClass="lbl"></asp:Label>
 </td>
 <td>
 <bus:busquedaAvanzada ID="bus_tipo_ots" runat="server" a_str_tabla= "doc_subtipoDocumento" a_bol_postBack ="true" a_str_grupoValidacion="ort_crearOT" a_bln_obligatorio ="true"/>
 </td>
 </tr>
<tr id="tr_nuevaOt" runat="server" >
<td>
<asp:Label ID="lbl_tiposervicio" runat="server" CssClass ="lbl"></asp:Label> 
</td>
<td>
<bus:busquedaAvanzada ID='bus_tipoServicio' runat='server' a_str_tabla='gen_tipoServicio'
a_bln_obligatorio='True' a_str_grupoValidacion="ort_crearOT" />
</td>
</tr>
<tr>
<td></td>
<td><bti:BotonImagen ID="bti_crearOT" runat="server" ValidationGroup="ort_crearOT" CausesValidation=true  ImageUrl="../../images/botones/aceptar.png"  /> </td>
</tr>
<tr >
<td colspan="2" >
<asp:Label ID="lbl_mensaje" runat ="server" CssClass ="lbl_mensaje"></asp:Label>
</td>
</tr>
</table> 
</td>
</tr>
</table>
<table>
<tr><td>
<bti:BotonImagen ID="bti_eliminar" runat="server" ImageUrl="../../images/botones/quitar.gif" ValidationGroup="ort_equipo" CausesValidation ="false"  />
</td></tr>
<tr valign="top"  >
<td>
<asp:GridView ID="grs_otsEquipos" runat="server" AutoGenerateColumns="false"    >
<Columns>
<asp:TemplateField  HeaderText="doc_documento_ot_pruebachecklist_id_documento_ot" >
<ItemTemplate >
<asp:LinkButton ID="lnk_documento" runat="server" Text='<%# bind("documento") %>' CssClass="gri_itemAlterno" CommandArgument ='<%# eval("id") %>' CommandName='<%# eval("ot") %>' ValidationGroup="ort_equipo" CausesValidation="false"   ></asp:LinkButton>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="doc_documento_ot_id_equipo" >
<ItemTemplate >
<asp:LinkButton ID="lnk_equipo" runat="server" Text='<%# bind("equipo") %>' CssClass="gri_itemAlterno" CommandArgument ='<%# eval("id") %>' CommandName='<%# eval("ot") %>' ValidationGroup="ort_equipo" CausesValidation="false" ></asp:LinkButton>
</ItemTemplate>
</asp:TemplateField>
</Columns>
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
</asp:GridView> 
</td>
</tr>
</table>
<table>
<tr valign="top"  >
<td> <table>
     <tr>
     <td>
     <tabper:tabsPersonalizados ID="tab_equi" runat="server"  />
      </td></tr> 
     <tr><td>
     <falla:ort_falla ID="ort_fallas1" runat=server />
     </td></tr>
     <tr>
     <td>
     <var:ort_variables ID="inc_variables" runat ="server" />
     </td></tr> 
       <tr>
     <td>
     <tiempo:ort_tiempo ID="ort_tiempo1" runat ="server"  />
     </td></tr> 
     <tr>
     <td>
     <pendiente:ort_pendientes ID="ort_pendiente1" runat="server" />
     </td>
     </tr>
     <tr>
     <td>
     <reporte:ort_reporteTecnico_equipo ID="ort_reporte" runat="server" />
     </td>
     </tr>
      </table>
  </td>
</tr> 
 </table>