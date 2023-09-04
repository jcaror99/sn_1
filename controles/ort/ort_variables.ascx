<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="~/controles/ort/ort_variables.ascx.vb"
Inherits="website.samm_componentes.controles_ort_ort_variables" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
<tr>
<td ><asp:Label id="lbl_equipo" runat="server" CssClass ='lbl' ></asp:Label></td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada id="bus_equipo" runat ="server" a_str_tabla="equ_equipo" a_bol_postBack="true"   a_bln_obligatorio="false"  a_bln_mostrarNuevoConDrop ="false"  />
</td>
</tr>
<tr>
<td>
<asp:Label ID="Label1" runat="server" CssClass="lbl" Text="<%$ Resources:res_etiquetas_equ,fechaTomaDatos%>"></asp:Label>
</td>
<td>
<uc2:fechaAvanzada ID="fec_fecha" runat="server" a_bln_obligatorio="true" a_str_prefijo="fh"
a_str_grupoValidacion="pop_variables" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_horometro" runat="server" Text="<%$ Resources:res_metadata,equ_equipo_horometroactual%>"
Visible="false" CssClass="lbl"></asp:Label>
</td>
<td>
<asp:TextBox ID="txt_horometro" runat="server" CssClass="txt_precio" Visible="false"></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_estadoEquipo" runat="server" CssClass="lbl" ></asp:Label>
</td>
<td>
<uc1:busquedaAvanzada ID="bus_estadoEquipo" runat="server" a_str_tabla="equ_estadoEquipo"/>
</td>
</tr>


<tr>
<td colspan="2" >

<asp:Label ID="lbl_atributoOT" runat="server" CssClass="lbl_mensaje" Visible="False"></asp:Label>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_evento" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<asp:HyperLink ID="hyp_evento" runat="server" CssClass="lnk"></asp:HyperLink>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_reporte" runat="server" CssClass="lbl"></asp:Label>
    </td>
    <td>
    <asp:HyperLink ID="hyp_reporte" runat="server" CssClass="lnk"></asp:HyperLink>
    </td>
</tr>
<tr>
<td colspan="2">

<asp:GridView ID="grvAtributos" runat="server" AutoGenerateColumns="False">
<Columns>
<asp:TemplateField HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
<ItemTemplate>
<asp:Label ID="lbl_id" runat="server" Text='<%#eval("id_atributo") %>'></asp:Label></ItemTemplate>
<HeaderStyle CssClass="invisible"></HeaderStyle>
<ItemStyle CssClass="invisible"></ItemStyle>
</asp:TemplateField>
<asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,cat_atributo_atributo %>">
<ItemTemplate>
<asp:Label ID="lbl_" runat="server" CssClass='<%# IIF(eval("esSeccion"),"lbl","")%>'
Text='<%#eval("cat_atributo_atributo") %>'> </asp:Label></ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="<%$ Resources:res_nombrecolumna,valor %>">

<ItemTemplate>

<asp:TextBox ID="txt_valor" runat="server" CssClass='txt_numero' Text='<%# IIF(eval("id")>0,eval("valor"),"") %>'></asp:TextBox >&nbsp;

<asp:RequiredFieldValidator ID='rfv_valor' runat='server' ControlToValidate='txt_valor'
ValidationGroup="form" SetFocusOnError='true' CssClass='lbl_mensaje' ForeColor="" Visible=false>*</asp:RequiredFieldValidator>

<asp:HiddenField ID="hid_id" runat="server" Value='<%#eval("id") %>' />
</ItemTemplate>
<HeaderStyle CssClass="gri_titulo" />
<ItemStyle HorizontalAlign="Center" />
</asp:TemplateField>
<asp:BoundField DataField="unidad" HeaderText="<%$ Resources:res_campoGrilla,cat_atributo_id_unidad %>" />
<asp:TemplateField HeaderText="<%$ Resources:res_nombrecolumna,maximo %>">
<ItemTemplate>
<asp:Label ID="lbl_vmx" runat="server" Text='<%#eval("valormaximo") %>'></asp:Label></ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="<%$ Resources:res_nombrecolumna,minimo %>">
<ItemTemplate>
<asp:Label ID="lbl_vmn" runat="server" Text='<%#eval("valorminimo") %>'></asp:Label></ItemTemplate>
</asp:TemplateField>
<%--<asp:BoundField DataField="cat_atributo_valorminimo" HeaderText="<%$ Resources:res_nombrecolumna,minimo %>" />--%><%--<asp:BoundField DataField="cat_atributo_valormaximo" HeaderText="<%$ Resources:res_nombrecolumna,maximo %>" />--%><asp:BoundField
DataField="ultimo_valor" HeaderText="<%$ Resources:res_nombrecolumna,ultimo %>" />
<asp:BoundField DataField="fecha_ff" DataFormatString="{0:dd/MM/yyyy}" HeaderText="<%$ Resources:res_nombrecolumna,fecha %>" />
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
&nbsp;
</td>
<td>
<cc1:BotonImagen ID="btiAceptar" runat="server" ImageUrl="~/images/botones/aceptar.png"
ValidationGroup="pop_variables"></cc1:BotonImagen>
</td>
</tr>
<tr>
<td>
</td>
<td>
<asp:Label ID="lbl_mensaje" runat="server" Text="" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
</table>
