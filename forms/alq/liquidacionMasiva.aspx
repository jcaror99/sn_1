<%@ Page Language="VB" AutoEventWireup="false" CodeBehind="liquidacionMasiva.aspx.vb" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master" Inherits="website.samm_web.forms_alq_liquidacionMasiva" %>
<%@ Register src="~/controles/general/informacion.ascx" tagname="informacion" tagprefix="inf" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"  TagPrefix="mul" %>
<%@ Register Src='~/controles/general/tabs.ascx' TagName='tabs' TagPrefix='tab' %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada"     TagPrefix="fec" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="pop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" Runat="Server">
<asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo' ></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" Runat="Server">
<pop:popup ID="pop_liquidacion" runat="server" a_bol_ocultarScroll="true"  />
<table>
<tr><td>
<tab:tabs ID="tab_masivo" runat="server"  />
</td></tr>
<tr><td>
<asp:MultiView ID="mvie_masivo" runat="server" >
<asp:View ID="view_busqueda" runat ="server"  >
<table>
<tr><td><asp:Label ID="lbl_subtipo" runat="server" CssClass ="lbl"></asp:Label></td>
<td><bus:busquedaAvanzada runat="server" ID="bus_subtipo" a_str_tabla ="doc_subtipoDocumento" a_str_campo="subtipodocumento,subtipodocumento_codigo"  a_str_filtroTemporal ="active=1 and id_tipodocumento in(9)" a_bol_postBack ="true"  /></td></tr>
<tr><td><asp:Label ID="lbl_numerobus" runat="server" CssClass ="lbl"></asp:Label></td><td>
<table ><tr><td><asp:TextBox ID="txt_desdebus" runat="server" CssClass ="txt_numero" ></asp:TextBox></td><td><asp:Label ID="lbl_hastabus" runat="server" CssClass ="lbl"></asp:Label></td><td><asp:TextBox ID="txt_hastabus" runat="server" CssClass ="txt_numero" ></asp:TextBox></td></tr></table>
</td></tr>

<tr><td><asp:Label ID="lbl_cliente" runat="server" CssClass ="lbl" ></asp:Label></td>
<td>
<mul:busquedaAvanzadaMultiple ID="bus_cliente" runat="server" a_str_tabla ="ter_tercero" a_str_campo="tercero,tercero_nit" a_str_filtroTemporal ="id in (select id_tercero_cliente from doc_documento where active=1 and id_subtipodocumento in (select id from doc_subtipodocumento where id_tipodocumento in(9)))"  />
</td></tr>
<tr><td><asp:Label ID="lbl_sucursal" runat="server" CssClass ="lbl" ></asp:Label></td>
<td>
<mul:busquedaAvanzadaMultiple ID="bus_sucursal" runat="server" a_str_tabla ="ter_sucursal"  />
</td></tr>
<tr><td><asp:Label ID="lbl_estado" runat="server" CssClass ="lbl"></asp:Label></td>
<td><mul:busquedaAvanzadaMultiple runat="server" ID="bus_estado" a_str_tabla ="doc_estadoTipoDocumento" a_str_campo="estadotipodocumento,estadotipodocumento_codigo" a_str_filtroTemporal ="id_tipodocumento=9" /></td></tr>
<tr>
<td>
<asp:Label ID='lbl_mesVencido' runat='server' CssClass='lbl'></asp:Label>
</td>
<td >
    <asp:DropDownList ID="drp_mesVencido" runat="server" CssClass="drp">
    </asp:DropDownList>
</td>
</tr>
<tr><td><asp:Label ID="lbl_cortebus" runat="server" CssClass ="lbl"></asp:Label></td><td>
<fec:fechaAvanzada ID="fec_cortebus" runat="server" a_bln_obligatorio="false"
                                                a_str_grupoValidacion="liq" a_str_prefijo="fh" />
</td></tr>



<tr><td style="text-align:center"><bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="false"  ImageUrl="../../images/botones/aceptar.png" /> </td></tr>
</table>
</asp:View>
<asp:View ID="view_confirmacion" runat ="server"  >
<asp:Panel ID="pnl_liquidacion" runat="server"   class="lbl"  >
<table>
<%--<tr><td class ="td_titulo"><asp:Label ID="lbl_ttotalALQ" runat="server" CssClass ="lbl"  ></asp:Label></td>
<td><asp:Label ID="lbl_totalALQ" runat="server" CssClass ="lbl_valor"  ></asp:Label></td></tr>
<tr><td></td></tr>--%>
<%--<tr> 
<td  class ="td_titulo">
<asp:Label ID="lbl_liquidaciones" runat="server" CssClass="lbl" ></asp:Label>
</td>
<td >
<asp:DropDownList ID="drp_preliquidaciones" runat="server" CssClass ="drp" AutoPostBack="true" ValidationGroup="liq"  ></asp:DropDownList>
</td>
<%--<td><asp:CheckBox ID="chk_sucursalLiq" runat="server" CssClass="lbl" AutoPostBack="true" /></td>
</tr>--%>
<tr>
<td><asp:Label ID="lbl_subtipos" runat="server" CssClass="lbl_obligatorio" ></asp:Label>
</td>
<td><bus:busquedaAvanzada ID="bus_subtipoLiq" runat="server" a_str_tabla ="doc_subtipoDocumento" a_str_filtroTemporal ="id_tipodocumento in (4)" a_str_campo ="subtipodocumento,subtipodocumento_codigo" a_bln_obligatorio="true" a_str_grupoValidacion="liq"/></td>
</tr>
<tr><td class ="td_titulo"><asp:Label ID="lbl_fechaFactura"  runat="server" CssClass="lbl"></asp:Label></td>
<td > <fec:fechaAvanzada ID="fec_fechaFactura" runat="server" a_bln_obligatorio="true"
                                                a_str_grupoValidacion="liq" a_str_prefijo="ff" /></td></tr>
<tr><td class ="td_titulo"><asp:Label ID="lbl_numfactura"  runat="server" CssClass="lbl"  ></asp:Label></td>
<td > <asp:TextBox ID="txt_numFactura" runat="server" CssClass="txt" ></asp:TextBox></td></tr>
<tr><td><asp:Label ID="lbl_corte" runat="server" CssClass ="lbl"></asp:Label></td><td>
<fec:fechaAvanzada ID="fec_corte" runat="server" a_bln_obligatorio="false"  
                                                a_str_grupoValidacion="liq" a_str_prefijo="fh" />
</td></tr>
<tr><td class ="td_titulo"><asp:Label ID="lbl_generarPRE"  runat="server" CssClass="lbl"></asp:Label></td>
<td > <asp:RadioButtonList runat="server" CssClass="rbl" id="rbl_generacionPRE" ></asp:RadioButtonList></td></tr>
<tr><td></td><td ><bti:BotonImagen ID="btn_liquidar" runat ="server" ImageUrl= "../../images/botones/aceptar.png" ValidationGroup="liq"  /></td></tr>
<tr><td></td><td><asp:Label ID="lbl_mensaje" runat ="server" CssClass ="lbl"></asp:Label></td></tr>
</table>
</asp:Panel>

<asp:GridView ID="grd_detalle" runat="server" AutoGenerateColumns="False"  AllowPaging="true" PageSize ="30">
 <EmptyDataTemplate>
<asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, grillaVacia %>'></asp:Label></EmptyDataTemplate>
<Columns>
<asp:TemplateField >
<HeaderTemplate>
<asp:CheckBox ID="chb_seleccionar" runat="server" AutoPostBack="true"  OnCheckedChanged="s_seleccionarTodas" />
</HeaderTemplate>
<ItemTemplate>
<asp:CheckBox ID="chb_seleccionar" runat="server" Checked='<%# eval("checked") %>' />
<asp:Label ID="lbl_idalquiler" runat="server" Text='<%# eval("id") %>' CssClass="invisible" />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText ="res_metadata,doc_documento_documento" ItemStyle-HorizontalAlign ="Right" >
<ItemTemplate>
<asp:HyperLink ID="hyp_documento" CssClass='hyp' runat="server" Visible='true' Text='<%# eval("documento") %>' Target="_blank"></asp:HyperLink>
<%--<asp:Label ID="lbl_documento" runat ="server"  Text='<%# eval("documento") %>'  > </asp:Label>
--%></ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText ="res_metadata,ter_tercero_tercero" ItemStyle-HorizontalAlign ="Right" >
<ItemTemplate>
<asp:Label ID="lbl_itemdocumento" runat ="server"  Text='<%# eval("tercero") %>' > </asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText ="res_metadata,dis_evento_catalogo_total" ItemStyle-HorizontalAlign ="Right" >
<ItemTemplate>
<asp:Label ID="lbl_valor" runat ="server"  Text='<%# FormatCurrency(eval("total"),2) %>' > </asp:Label>
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

</asp:View>
</asp:MultiView>

</td></tr>
</table>
</asp:Content>
