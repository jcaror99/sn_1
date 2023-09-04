<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_buscarEquipos.ascx.vb"
Inherits="website.samm_componentes.controles_cnt_inc_buscarEquipos" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
TagPrefix="uc2" %>
<table>
<tr>
<td colspan="2">
&nbsp;<cc1:BotonImagen ID="bti_atras" runat="server" CausesValidation="False" ImageUrl="~/images/botones/atras.png" /><cc1:BotonImagen
ID="bti_siguiente" runat="server" CausesValidation="false" ImageUrl="~/images/botones/siguiente.png" />
</td>
</tr>
<tr valign="top">
<td>
<asp:Panel ID="Panel1" runat="server" CssClass="lbl">
<table>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_contrato" runat="server" CssClass="lbl" ></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID="bus_contrato" runat="server" a_str_tabla="cnt_contrato" a_bol_postBack="true"  />
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_tercero" runat="server" CssClass="lbl" ></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID="bus_tercero" runat="server" a_str_tabla="ter_tercero" a_bol_postBack="true" />
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_sucursal" runat="server" CssClass="lbl" ></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID="bus_sucursal" runat="server" a_str_tabla="ter_sucursal" a_bol_recursivoTodoelArbol="true" />
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_zona" runat="server" CssClass="lbl" ></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID="bus_zona" runat="server" a_str_tabla="gen_zona" />
</td>

</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_familia" runat="server" CssClass="lbl" ></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc2:busquedaAvanzadaMultiple ID="bus_familia" runat="server" a_str_tabla="gen_familia" a_bol_postBack="true" />
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_modelo" runat="server" CssClass="lbl" ></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc2:busquedaAvanzadaMultiple ID="bus_catalogo" runat="server" a_str_tabla="cat_catalogo.equipo"
a_bol_postBack="true" />
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_version" runat="server" CssClass="lbl" ></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID="bus_version" runat="server" a_str_tabla="cat_versionEquipo" />
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_equipo" runat="server" CssClass="lbl" ></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID="txt_equipo" runat="server" CssClass="txt"></asp:TextBox>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_serial" runat="server" CssClass="lbl" ></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID="txt_serial" runat="server" CssClass="txt"></asp:TextBox>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_garantia" runat="server" CssClass="lbl" ></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID="rbl" runat="server">
<asp:ListItem Value="g" Text='res_controles,conGarantia'></asp:ListItem>
<asp:ListItem Value="s" Text='res_controles,sinGarantia'></asp:ListItem>
<asp:ListItem Value="a" Selected="True" Text='res_controles,conSinGarantia'></asp:ListItem>
</asp:RadioButtonList>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_estadoEquipo' runat='server' CssClass='lbl' ></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID='bus_estadoEquipo' runat='server' a_str_tabla='equ_estadoEquipo' />
</td>
</tr>
<tr>
<td class='td_lblFormulario'  >
<asp:Label ID='lbl_id_tercero_servicio' runat='server'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID='bus_tercero_servicio' runat='server' a_str_tabla='ter_tercero'/>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_comprador" runat="server" CssClass="lbl" ></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID="bus_comprador" runat="server" a_str_tabla="ter_tercero" />
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_reporte" runat="server" CssClass="lbl" ></asp:Label>
</td>
<td class='td_controlesFormulario'>
 
             <asp:CheckBox id="chb_reporte" runat="server" />
</td>

</tr>

<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_centroCosto" runat="server" CssClass="lbl" ></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID="bus_centroCosto" runat="server" a_str_tabla="doc_centroCosto" />
</td>
</tr>


<tr>
<td colspan="2" align="center">
<cc1:BotonImagen ID="bti_buscar" runat="server" CausesValidation="false" ImageUrl="~/images/botones/aceptar.jpg">
</cc1:BotonImagen>
</td>
</tr>
</table>
</asp:Panel>
</td>
<td>
<asp:Panel ID="pnl_grilla" runat="server" GroupingText='' CssClass="lbl">
<table>
<tr>
<td>
<asp:Label ID="lbl_numEquipos" runat="server" CssClass="lbl"></asp:Label>&nbsp;
<asp:Label ID="Label1" runat="server" CssClass="lbl" Text="Ver:"></asp:Label><asp:DropDownList ID="drpNumeroRegistros" runat="server" AutoPostBack=true CssClass="drp">
<asp:ListItem Selected=True Text="10" Value="10"></asp:ListItem>
<asp:ListItem Text="50" Value="50"></asp:ListItem>
<asp:ListItem Text="100" Value="100"></asp:ListItem>
<asp:ListItem Text="200" Value="200"></asp:ListItem>
<asp:ListItem Text="500" Value="500"></asp:ListItem>
</asp:DropDownList><asp:GridView
ID="grd_equipo" runat="server" AllowPaging="True" AutoGenerateColumns="False" 
        PageSize="10">
<EmptyDataTemplate>
<asp:Label ID="vacio" runat="server" CssClass="lbl_mensaje" Text="<%$Resources:res_mensajes,grillaVacia %>"></asp:Label></EmptyDataTemplate>
<Columns>
<asp:TemplateField>
<ItemTemplate>
<asp:CheckBox ID="chb_seleccionar" runat="server" /></ItemTemplate>
<HeaderTemplate>
<asp:CheckBox ID="chb_seleccionar" runat="server" /></HeaderTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderStyle-CssClass="invisible" HeaderText="id" ItemStyle-CssClass="invisible">
<ItemTemplate>
<asp:Label ID="lbl_id" runat="server" Text='<%#eval("id") %>'></asp:Label></ItemTemplate>
<HeaderStyle CssClass="invisible" />
<ItemStyle CssClass="invisible" />
</asp:TemplateField>
<asp:BoundField DataField="equipo" HeaderText="res_campoGrilla,equ_equipo_equipo" />
<asp:BoundField DataField="serial" HeaderText="res_campoGrilla,equ_equipo_equipo_serial" />
<asp:BoundField DataField="modelo" HeaderText="res_campoGrilla,cat_catalogo_equipo_catalogo_equipo" />
<asp:BoundField DataField="version" HeaderText="res_campoGrilla,cat_versionEquipo_versionEquipo" />
<asp:BoundField DataField="familia" HeaderText="res_campoGrilla,gen_familia_familia" />
<asp:BoundField DataField="zona" HeaderText="res_campoGrilla,gen_zona_zona" />
<asp:BoundField DataField="tercero" HeaderText="res_campoGrilla,ter_tercero_tercero" />
<asp:BoundField DataField="sucursal" HeaderText="res_campoGrilla,ter_sucursal_sucursal" />
<asp:TemplateField ItemStyle-HorizontalAlign="Center">
<ItemTemplate>
<asp:Image ID="img_garantia" runat="server" ImageUrl='<%# iif(eval("garantia"),"~/images/iconos/garantia.gif","~/images/iconos/garantia_dis.gif") %>' /></ItemTemplate>
<ItemStyle HorizontalAlign="Center" />
</asp:TemplateField>
</Columns>
<RowStyle CssClass="gri_item" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
</asp:GridView>
<cc1:BotonImagen ID="bti_agregar" runat="server" CausesValidation="false" ImageUrl="~/images/botones/aceptar.jpg" />
</td>
</tr>
</table>
</asp:Panel>
</td>
</tr>
</table>
