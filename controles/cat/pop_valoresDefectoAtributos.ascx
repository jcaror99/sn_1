<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_valoresDefectoAtributos.ascx.vb" Inherits="website.samm_componentes.controles_cat_pop_valoresDefectoAtributos" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %><%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<asp:GridView ID="grd_valores" runat="server" AutoGenerateColumns="False">
<%@ Register Src="~/controles/general/atributos.ascx" TagName="atributos" TagPrefix="atri" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<Columns>
<asp:BoundField DataField="atributo" HeaderText="<%$Resources:res_campoGrilla, cat_atributo_atributo %>" />
<asp:TemplateField HeaderText="<%$Resources:res_campoGrilla, cat_catalogo_equipo_atributo_catalogo_equipo_atributo %>">
<ItemTemplate>

<asp:Label ID="lbl_id_tipo" runat="server" Text='<%#eval("id_tipo") %>' Visible="false">
</asp:Label><asp:Label ID="lbl_id" runat="server" Text='<%#eval("id") %>' Visible="false">
</asp:Label>
<asp:TextBox ID="txt_valorDefecto" runat="server" CssClass="txt" Text='<%# eval("catalogo_atributo") %>' Visible="false" >
</asp:TextBox>

 <uc1:fechaavanzada id="fecValor" runat="server" Visible="false" /> 
 <asp:DropDownList ID="drpValor" runat="server" CssClass="drp" Visible="false"></asp:DropDownList>  
 <asp:CheckBoxList ID="chbValores" runat="server" CssClass="chk" RepeatColumns="1" Visible="false">  </asp:CheckBoxList>
</ItemTemplate>
</asp:TemplateField>


<asp:TemplateField HeaderText="<%$Resources:res_campoGrilla, _columnas_ordengrilla %>">
<ItemTemplate>
<asp:Label ID="lbl_orden" runat="server" Text='<%#eval("orden") %>' Visible="false"></asp:Label>

      <asp:DropDownList ID="drpOrden" runat="server" CssClass="drp" Visible="false"></asp:DropDownList>                                                                       

                                                                         
</ItemTemplate>
</asp:TemplateField>

<%-- <asp:TemplateField HeaderText="<%$Resources:res_campoGrilla, cat_catalogo_equipo_atributo_valorminimo %>"><ItemTemplate><asp:Label ID="lbl_valorMinimo" runat="server" Text='<%#eval("valorMinimo") %>' Visible='<%# IIF(eval("id_tipo")=samm_logica.enu_tipoAtributo.numero,true,false) %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField HeaderText="<%$Resources:res_campoGrilla, cat_catalogo_equipo_atributo_valormaximo %>"><ItemTemplate><asp:Label ID="lbl_valorMaximo" runat="server" Text='<%#eval("valorMaximo") %>'  Visible='<%# IIF(eval("id_tipo")=samm_logica.enu_tipoAtributo.numero,true,false) %>'></asp:Label></ItemTemplate></asp:TemplateField>--%>
</Columns>

<RowStyle CssClass="gri_item" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
</asp:GridView>
<br />
<cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="~/images/botones/aceptar.jpg" />
<%--<atri:atributos ID="atri_atribu" runat="server"></atri:atributos>--%>
