<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master"  CodeBehind="despachoagil.aspx.vb" Inherits="website.samm_web.forms_alq_despachoagil" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Src='~/controles/general/tabs.ascx' TagName='tabs' TagPrefix='tab' %>
<%@ Register Src="~/controles/general/informacion.ascx" TagName="informacion" TagPrefix="uc4" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"  TagPrefix="mul" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="pop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" runat="Server">
    <asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo'></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" Runat="Server">
<pop:popup ID="pop_liquidacion" runat="server" a_bol_ocultarScroll="true"  />
<table>
<tr>
<td>
<asp:Label ID="lbl_despacho" runat="server" CssClass ="lbl"  ></asp:Label>
</td>
<td>
<fec:fechaAvanzada ID="fec_despacho" runat="server" a_bln_obligatorio ="true" a_str_prefijo ="fh" a_str_grupoValidacion="des" /> 
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_cliente" runat="server" CssClass ="lbl"  ></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_cliente" a_str_tabla ="ter_tercero" a_bln_obligatorio ="true" runat="server"  a_str_grupoValidacion="des" a_str_campo="tercero,tercero_nombrecorto,tercero_nit" a_bol_postBack ="true"  />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_sucursal" runat="server" CssClass ="lbl"  ></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_sucursal" a_str_tabla ="ter_sucursal" runat="server" a_str_campo="sucursal,sucursal_codigo" a_bln_obligatorio  ="true"  a_str_grupoValidacion ="des" />
</td>
</tr>
<tr><td>
<asp:Label ID="lbl_alquiler" runat ="server" CssClass ="lbl" ></asp:Label>
</td>
<td>
<asp:DropDownList ID="drp_alquiler" runat="server" CssClass ="drp" AutoPostBack="true"   ></asp:DropDownList>
</td>
</tr>
<tr id="tr_subtipo" runat="server" >
<td>
<asp:Label ID="lbl_subtipo" runat="server" CssClass ="lblobligatorio"  ></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_subtipo" a_str_tabla ="doc_subtipoDocumento" runat="server" a_str_campo="subtipodocumento" a_bol_postBack ="false" a_str_grupoValidacion ="des"  />
</td>
</tr>
<tr id="tr_vencida" runat="server" >
<td class='td_lblFormulario'>
<asp:Label ID='lbl_mesVencido' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
    <asp:DropDownList ID="drp_mesVencido" runat="server" CausesValidation="true" ValidationGroup ="des" CssClass="drp">
    </asp:DropDownList>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_bodega" runat="server" CssClass ="lbl"  ></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_bodega" a_str_tabla ="gen_bodega" runat="server" a_str_campo="bodega" a_bol_postBack ="true"  a_bln_obligatorio ="true" a_str_grupoValidacion ="des" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_catalogo" runat="server" CssClass ="lbl"  ></asp:Label>
</td>
<td>
<mul:busquedaAvanzadaMultiple  ID="bus_catalogo" a_str_tabla ="cat_catalogo" runat="server" a_str_campo="catalogo,catalogo_codigo,codigoinventario" a_bol_postBack ="true"  />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_adicional" runat="server" CssClass ="lbl"  ></asp:Label>
</td>
<td>
<mul:busquedaAvanzadaMultiple  ID="bus_adicional" a_str_tabla ="cat_catalogo" runat="server" a_str_campo="catalogo,catalogo_codigo,codigoinventario" a_bol_postBack ="true"  />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_equipo" runat="server" CssClass ="lbl"  ></asp:Label>
</td>
<td>
<mul:busquedaAvanzadaMultiple  ID="bus_equipo" a_str_tabla ="equ_equipo" runat="server" a_str_campo="equipo,equipo_serial,cat_catalogo_equipo_codigoinventario" a_bol_postBack ="true"  />
</td>
</tr>
<tr><td colspan ="2">
<asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='des' CssClass='lbl_mensaje'
ForeColor='' />
<asp:Label ID="lbl_mensaje" runat="server"  ></asp:Label>
</td></tr>
</table>
<table >
<tr><td>
<asp:GridView ID="grd_detalle" runat="server" AutoGenerateColumns="false"    >
<Columns>
<asp:TemplateField HeaderText ="res_metadata,cat_catalogo_catalogo">
<ItemTemplate>
<asp:Label ID="lbl_idcatalogo" runat="server" CssClass ="invisible" Text='<%# eval("id_catalogo") %>' ></asp:Label>
<asp:Label ID="lbl_catalogo" runat="server" CssClass ="lbl" Text='<%# eval("catalogo") %>' ></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText ="res_metadata,cat_catalogo_codigoinventario">
<ItemTemplate>
<asp:Label ID="lbl_codigoinventario" runat="server" CssClass ="lbl" Text='<%# eval("codigoinventario") %>' ></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText ="res_metadata,equ_equipo_equipo_serial">
<ItemTemplate>
<asp:Label ID="lbl_serial" runat="server" CssClass ="lbl" Text='<%# eval("serial") %>' ></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText ="res_metadata,cat_catalogo_bodega_existencia">
<ItemTemplate>
<asp:Label ID="lbl_existencia" runat="server" CssClass ="lbl" Text='<%# eval("existencia") %>' ></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText ="res_etiquetas_alq,cantidad" >
<ItemTemplate>
<asp:TextBox ID="txt_cantidad" runat="server"  CssClass="txt" Text='<%# eval("cantidad") %>' Visible ='<%# IIF(not eval("tipoalq")=1,"true","false")  %>' ></asp:TextBox>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField     HeaderText ="res_metadata,equ_equipo_ultimalectura_fh" >
<ItemTemplate>
<asp:Label ID="lbl_fecha" runat="server" CssClass="lbl" Text='<%# eval("fechaactual") %>'   Visible ='<%# IIF(eval("tipoalq")=1 and cbool(eval("mhor")),"true","false")  %>'  ></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText ="res_metadata,equ_equipo_horometroactual">
<ItemTemplate>
<asp:label  ID="lbl_horometro" runat="server" CssClass ="lbl" Text='<%# eval("horometroactual") %>' Visible ='<%# IIF(eval("tipoalq")=1 and cbool(eval("mhor")),"true","false")  %>' ></asp:label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText ="res_metadata,equ_equipo_horometroactual">
<ItemTemplate>
<asp:TextBox  ID="txt_horometro" runat="server" CssClass ="txt" Text='<%# eval("horometro") %>' Visible ='<%# IIF(eval("tipoalq")=1 and cbool(eval("mhor")) ,"true","false")  %>' ></asp:TextBox>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField>
<ItemTemplate>
<asp:Label ID="lbl_detalle" runat="server" CssClass ="lbl" Text='<%# eval("detalle") %>' ></asp:Label>
</ItemTemplate>
</asp:TemplateField>
 <asp:TemplateField>                                              
   <ItemTemplate>
         <asp:ImageButton ID="imb_eliminar" runat ="server" ImageUrl ="../../images/iconos/eliminar.gif"  CommandArgument  ='<%# eval("id_catalogo")& "|"& eval("id_tipocatalogo")  %>'  CommandName='eliminarDET' />
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
<tr><td>
<bti:BotonImagen ID="btn_guardar" runat ="server" ImageUrl= "../../images/botones/aceptar.png" ValidationGroup="des"  />
</td></tr></table>
</asp:Content>
