<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_buscarXatributos.ascx.vb"
Inherits="website.samm_componentes.controles_equ_pop_buscarXatributos" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
<tr>
<td style="height: 21px">
<asp:Label ID="lblFamilia" runat="server" Text="<%$Resources: res_metadata,gen_familia_familia %>"></asp:Label>
</td>
<td style="height: 21px">
<uc1:busquedaAvanzada ID="busFamilia" runat="server" a_str_tabla="gen_familia" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lblMarca" runat="server" Text="<%$Resources: res_metadata,cat_marca_marca %>"></asp:Label>
</td>
<td>
<uc1:busquedaAvanzada ID="busMarca" runat="server" a_str_tabla="cat_marca" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lblAtributos" runat="server" Text="<%$Resources: res_metadata,cat_atributo_atributo %>" CssClass="lbl"></asp:Label>:
</td>
<td>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_modelo" runat="server" Text="<%$resources: res_metadata,cat_catalogo_equipo_catalogo_tempario_id_catalogo_equipo %>"></asp:Label>
</td>
<td>
<uc1:busquedaAvanzada ID="bus_modeloEquipo" runat="server" a_str_tabla="cat_catalogo.equipo" a_bol_postBack="true"/>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_seccion" runat="server" Text="<%$resources: res_metadata,cat_atributo_id_seccionatributo %>"></asp:Label>
</td>
<td>
<uc1:busquedaAvanzada ID="bus_seccion" runat="server" a_str_tabla="cat_seccionAtributo" a_bol_postBack="true"/>
</td>
</tr>
<tr>
<td colspan="2">
<asp:GridView ID="grvAtributos" runat="server" AllowPaging="false" AutoGenerateColumns="False">
<Columns>
<asp:BoundField DataField='atributo' HeaderText='<%$ Resources:res_campoGrilla,cat_atributo_atributo %>'>
<ItemStyle HorizontalAlign="Center" />
<HeaderStyle CssClass="gri_titulo" />
</asp:BoundField>
<asp:TemplateField HeaderText="<%$ Resources:res_nombrecolumna,valor %>">
<ItemTemplate>
<asp:Label ID="lbl" runat="server" Text='<%# eval("id") %>' Visible="false"></asp:Label><asp:Label
ID="lbl_1" runat="server" Text='<%# eval("id_tipoAtributo") %>' Visible="false"></asp:Label><table
cellpadding="0" cellspacing="0" style="width: 100%;">
<tr>
<td class='<%# IIF(eval("id_tipoAtributo")=samm_logica.enu_tipoAtributo.numero, "","invisible") %>'>
<asp:Label ID="lblDesde" runat="server" Text="<%$Resources: res_controles,desde %>"></asp:Label><asp:TextBox
ID="txt_valor_desde" runat="server" CssClass='txt_numero' ></asp:TextBox><asp:Label
ID="lblHasta" runat="server" Text="<%$Resources: res_controles,a %>"></asp:Label><asp:TextBox
ID="txt_valor_hasta" runat="server" CssClass='txt_numero' ></asp:TextBox>
</td>
<td class='<%# IIF(eval("id_tipoAtributo")=samm_logica.enu_tipoAtributo.texto or eval("id_tipoAtributo")=samm_logica.enu_tipoAtributo.textoLargo, "","invisible") %>'>
<asp:TextBox ID="txt_texto" runat="server" CssClass="txt"></asp:TextBox>
</td>
<td class='<%# IIF(eval("id_tipoAtributo")=samm_logica.enu_tipoAtributo.fecha, "","invisible") %>'>
<asp:Label ID="lbl_desde" runat="server" Text="<%$Resources: res_controles,desde %>"></asp:Label><uc2:fechaAvanzada
ID="fec_desde" runat="server" a_str_prefijo="ff" />
<asp:Label ID="lbl_hasta" runat="server" Text="<%$Resources: res_controles,a %>"></asp:Label>&nbsp;<uc2:fechaAvanzada
ID="fec_hasta" runat="server" a_str_prefijo="ff" />
</td>
<td class='<%# IIF(eval("id_tipoAtributo")=samm_logica.enu_tipoAtributo.lista or eval("id_tipoAtributo")=samm_logica.enu_tipoAtributo.listaSinComentarios or  eval("id_tipoAtributo")=samm_logica.enu_tipoAtributo.listaCondicional, "","invisible") %>'>
<asp:DropDownList ID="drp" runat="server">
</asp:DropDownList>
</td>
</tr>
</table>
</ItemTemplate>
<HeaderStyle CssClass="gri_titulo" />
<ItemStyle HorizontalAlign="Center" />
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
<td colspan=4>
<asp:CheckBox ID='chb_combinarBusquedaFormulario' runat="server" ></asp:CheckBox>
</td>
</td>
</tr>

<tr>
<td>
&nbsp;
</td>
<td>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label><br />
<cc1:BotonImagen ID="btiAceptar" runat="server" ImageUrl="~/images/botones/aceptar.png"
ValidationGroup="pop_buscar"></cc1:BotonImagen>
</td>
</tr>
</table>
