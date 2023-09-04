<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master" CodeBehind="localizacion.aspx.vb" Inherits="website.samm_web.forms_doc_localizacion" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName='tabs' TagPrefix='tab' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" runat="Server">
<asp:Label ID="lblTitulo" runat="server" CssClass="lbl_titulo" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" runat="Server">
<table cellpadding=0 cellspacing=0>
<tr>
<td>
<tab:tabs ID='Tabs' runat="server" />
</td>
</tr>
<tr>
<td style="vertical-align:top">
<table class="tbl_marcoFormulario" >
<tr>
<td>
<bus:busquedaAvanzada ID="bus_bodega" runat ="server" a_str_tabla="gen_bodega"  a_str_campo="bodega,bodega_codigo" />
</td>
</tr>
<tr>
<td>
<cc1:BotonImagen ID="bti_ajustar" runat="server" ImageUrl ="../../images/botones/aceptar.jpg" />
</td>
</tr>
<tr> <td>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje" Visible="false">
</asp:Label> 
</td></tr>
<tr><td>
<br />
<asp:UpdatePanel ID="upd_panel" runat="server"  UpdateMode="Always"  >
<ContentTemplate>
<asp:GridView ID="grd_localizaciones" runat ="server" AutoGenerateColumns ="false"  AllowPaging="true" PageSize="40"   >
<Columns >
<asp:TemplateField Visible="false" >
<ItemTemplate >
<asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>'  ></asp:Label>
<asp:Label ID="lbl_iditem" runat="server" Text='<%# eval("id_item") %>'  ></asp:Label>
<asp:Label ID="lbl_idlocal" runat="server" Text='<%# eval("id_localizacion") %>'  ></asp:Label>
<asp:Label ID="lbl_iditemlocal" runat="server" Text='<%# eval("id_itemLocalizacion") %>'  ></asp:Label>
<asp:Label ID="lbl_bodega" runat="server" Text='<%# eval("id_bodega") %>'  ></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='res_etiquetas,detalle' >
<ItemTemplate >
<asp:Label ID="lbl_detalle" runat="server" CssClass ='<%# iif((eval("id_localizacion")=0 )or(eval("id_localizacion")=-1 and eval("cantidad")>0) ,"lbl"  ,"") %>'  Text='<%# eval("detalle") %>' ></asp:Label>
</ItemTemplate>
<FooterTemplate>
<asp:Label ID="lbl_detalle" runat="server" ></asp:Label>
</FooterTemplate>
</asp:TemplateField>
<asp:TemplateField  HeaderText ="res_metadata,gen_localizacion_existencia" >
<ItemTemplate >
<asp:Label ID="lbl_existencia" runat="server" Text ='<%# eval("existencia") %>'  ></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="res_metadata,gen_localizacion_itemdocumento_cantidad" >
<ItemTemplate >
<asp:TextBox ID="txt_cantidad" runat="server" Text ='<%# eval("cantidad") %>' visible ='<%# iif((eval("id_localizacion")=-1 or eval("id_localizacion")>0) or( eval("id_localizacion")=0 and eval("id_bodega")=0 and  eval("id_itemlocalizacion") or(eval("id_localizacion")=0 and eval("id_bodega")=0 and eval("id_item")>0 ) ) ,"true"  ,"false") %>' Enabled='<%# iif(eval("id_localizacion")=0 and eval("id_bodega")=0 and eval("id_item")>0  ,"false","true") %>' CssClass='<%# iif(eval("id_localizacion")=0 and eval("id_bodega")=0 and eval("id_item")>0,"lbl","txt") %>'  ></asp:TextBox> </ItemTemplate>
<FooterTemplate >
<asp:Label ID="lbl_planeado" runat="server" ></asp:Label>
</FooterTemplate>
</asp:TemplateField>
<asp:TemplateField   HeaderText ="res_metadata,gen_localizacion_existenciamaxima" >
<ItemTemplate >
<asp:Label ID="lbl_existenciaMaxima" runat="server" Text ='<%# eval("maxima") %>' ></asp:Label>
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

</ContentTemplate>
</asp:UpdatePanel>
</td></tr>
<tr>
<td style="text-align:center">
<cc1:BotonImagen ID="imbAceptar" runat="server" ImageUrl ="../../images/botones/aceptar.jpg" />
<br />
<asp:Label ID="lblMensaje" runat="server" Text="" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr></table>
</td>
</tr>
</table>
<uc1:popup ID='popup1' runat='server' a_bol_visible='false' />
</asp:Content>

