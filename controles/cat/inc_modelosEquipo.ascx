<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_modelosEquipo.ascx.vb"
Inherits="website.samm_componentes.controles_cat_inc_modelosEquipo" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
TagPrefix="uc3" %>
<table visible="false" runat="server" id="tbl_Equipo">
<tr>
<td>
<table>
<tr>
<td>
<bti:BotonImagen ID="btn_aplicarTodaFamilia" runat="server" CausesValidation="False"
ImageUrl="~/images/botones/cat_aplicarATodos.gif" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl" runat="server" CssClass="lbl" Text='<%$ resources:res_metadata,gen_familia_familia %>'></asp:Label>
</td>
<td>
<uc2:busquedaAvanzada ID="bus_familia" runat="server" a_bln_obligatorio='false' a_bol_postBack="true"
a_str_tabla="gen_familia" />
</td>
</tr>
</table>
<table runat="server" id="tbl_pocosModelos">
<tr valign="top">
<td>
<asp:Label ID="lbl0" runat="server" CssClass="lbl" Text='<%$ resources:res_metadata,cat_catalogo_equipo_catalogo_equipo %>'></asp:Label>
</td>
</tr>
<tr>
<td>
<asp:GridView ID="grv_modelos" runat="server" AutoGenerateColumns="False" GridLines="None" AllowPaging="true" ShowHeader='true'  PageSize="20">
<Columns>
<asp:TemplateField HeaderText="a" HeaderStyle-HorizontalAlign="Left">
<ItemTemplate>
<asp:Label
ID="lbl_seleccionar" runat="server" Text='<%# eval("checked") %>' CssClass='invisible'></asp:Label>
<asp:CheckBox ID="chb_seleccionar" runat="server" Text='<%# eval("modelo") %>' CssClass="chb" /><asp:Label
ID="lbl_idModelo" runat="server" Text='<%# eval("id_modelo") %>' CssClass='invisible'></asp:Label></ItemTemplate>
<HeaderTemplate>
<asp:CheckBox ID="chb_seleccionar" runat="server" Text="todo" /></HeaderTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="Orden" HeaderStyle-HorizontalAlign="Left">
<ItemTemplate>
<asp:TextBox ID="txt_orden" runat="server" CssClass='txt' Width="30px" text='<%#eval("orden") %>'/></ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje" Text=''></asp:Label>
</td>
</tr>
<tr>
<td>
<bti:BotonImagen ID="bti_guardarModelos" runat="server" CausesValidation="False"
ImageUrl="~/images/botones/aceptar.jpg" />
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
</td>
</tr>
</table>
<table runat="server" id="tbl_Documentos" visible="false">
<tr>
<td>
<table runat="server" id="Table2">
<tr>
<td>
<asp:Label ID="lbl_tipo" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<uc3:busquedaAvanzadaMultiple ID="bum_tipoDocumento" runat="server" a_str_tabla="doc_tipoDocumento" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_subtipo" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<uc3:busquedaAvanzadaMultiple ID="bum_subtipoDocumento" runat="server" a_str_tabla="doc_subtipoDocumento" />
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table runat="server" id="Table3">
<tr>
<td>
<bti:BotonImagen ID="bti_elimiar_subtipodocumentoAtributo" runat="server" CausesValidation="False"
ImageUrl="~/images/botones/quitar.gif" />
</td>
</tr>
<tr>
<td>
<asp:GridView ID="grd_subtipos" runat="server" AutoGenerateColumns="False" GridLines="None" >
<Columns>
<asp:TemplateField HeaderText="a" HeaderStyle-HorizontalAlign="Left">
<ItemTemplate>
<asp:CheckBox ID="chb_seleccionar" runat="server" Text='<%# eval("doc_subtipoDocumento_subtipoDocumento") %>' CssClass="chb" />
<asp:Label ID="lbl_idSubtipo" runat="server" Text='<%# eval("id_subtipoDocumento") %>' CssClass='invisible'></asp:Label></ItemTemplate>
<HeaderTemplate>
<asp:CheckBox ID="chb_seleccionar" runat="server" Text="todo" /></HeaderTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="Orden" HeaderStyle-HorizontalAlign="Left">
<ItemTemplate>
<asp:TextBox ID="txt_orden" runat="server" CssClass='txt' Width="30px" Text ='<%# eval("orden") %>' /></ItemTemplate>
</asp:TemplateField></Columns>
</asp:GridView>
</td>
</tr>
<tr>
<td>
<bti:BotonImagen ID="bti_guardarSubtipos" runat="server" CausesValidation="False"
ImageUrl="~/images/botones/aceptar.jpg" />
</td>
</tr>
</table>
</td>
</tr>
</table>
