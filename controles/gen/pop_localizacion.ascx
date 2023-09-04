<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_localizacion.ascx.vb" Inherits="website.samm_componentes.controles_gen_pop_localizacion" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix ="bus" %>  
<table id="tbl_local" runat ="server"  >
<tr>
<td><asp:Label ID="lbl_localizacion" CssClass='lbl' runat="server"  ></asp:Label></td>
<td><asp:TextBox ID="txt_localizacion" CssClass='txt' runat="server" ValidationGroup="frm_localizacion" ></asp:TextBox></td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_catalogo" CssClass='lbl' runat="server"  ></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_catalgo" runat="server"  a_str_tabla="cat_catalogo"  a_str_campo="codigoInventario,catalogo,catalogo_codigo" a_str_filtroTemporal=" id_subtipoCatalogo in(select id from view_cat_subtipocatalogo where cat_tipocatalogo_afectainventario=1)" />
</td>
</tr>
<tr>
<td><asp:Label ID="lbl_existenciaMax" CssClass='lbl' runat="server"  ></asp:Label></td>
<td><asp:TextBox ID="txt_existenciaMax" CssClass='txt' runat="server" ValidationGroup="frm_localizacion"  ></asp:TextBox></td>
</tr>

<tr>
<td>           
</td>
</tr>
</table>
<table id="tbl_localizaciones" runat ="server"  > 
<tr>
<td>
<asp:GridView ID="grd_localizaciones" runat=server AutoGenerateColumns=false ShowFooter="true"   >
<Columns>
<asp:TemplateField Visible="false"  >
<ItemTemplate>
<asp:Label id="lbl_idLoc" runat="server" CssClass='lbl' Text='<%# bind("id") %>' ></asp:Label>
</ItemTemplate>
</asp:TemplateField>
   <asp:TemplateField HeaderText ="res_metadata,gen_localizacion_localizacion"   >
<ItemTemplate>
<asp:Label id="lbl_localizacion" runat="server" CssClass='lbl' Text='<%# bind("localizacion") %>' ></asp:Label>
</ItemTemplate>
<FooterTemplate >
<asp:Label ID="lbl_bodega" runat="server" CssClass='lbl'></asp:Label>
</FooterTemplate>
</asp:TemplateField>
   <asp:TemplateField  HeaderText ="res_metadata,gen_localizacion_existencia"  >
<ItemTemplate>
<asp:TextBox ID ="txt_existencia" runat="server" CssClass='txt' Text ='<%# IIF( eval("existencia")>0, eval("existencia"),"") %>'  ></asp:TextBox>
</ItemTemplate>
<FooterTemplate>
<table>
<tr>
<td><asp:label ID="lbl_existencia" runat="server" CssClass='lbl' ></asp:label></td>
</tr>
<tr>
<td>
<asp:label ID="lbl_exis" runat="server" CssClass='lbl' ></asp:label>
</td>
</tr>
</table>
</FooterTemplate>
</asp:TemplateField>
   <asp:TemplateField   HeaderText ="res_metadata,gen_localizacion_existenciamaxima" >
<ItemTemplate>
<asp:TextBox ID ="txt_existenciaMaxima" runat="server" CssClass='txt' Text ='<%# IIF( eval("existenciaMaxima")>0, eval("existenciaMaxima"),"") %>'  ></asp:TextBox>
</ItemTemplate>
<FooterTemplate >
<table>
<tr>
<td><asp:label ID="lbl_existenciaMaxima" runat="server" CssClass='lbl' ></asp:label></td>
</tr>
<tr >
<td><asp:label ID="lbl_exisMax" runat="server" CssClass='lbl' ></asp:label></td>
</tr>
</table>
</FooterTemplate>
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
</table>
<table>
<tr>
<td>
 <bti:BotonImagen ID="btnAceptar" runat="server"  ImageUrl="../../images/botones/aceptar.jpg" CausesValidation="true" ValidationGroup="frm_localizacion"  />
</td>
</tr>
<tr>
<td> <asp:Label ID="lbl_mensaje" CssClass='lbl_mensaje' runat="server"  ></asp:Label></td>
</tr>
</table>