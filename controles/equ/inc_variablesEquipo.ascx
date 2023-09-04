<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_variablesEquipo.ascx.vb" Inherits="website.samm_componentes.controles_equ_inc_variablesEquipo" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
<tr>
<td>
<asp:GridView ID="grd_datos" runat="server" AutoGenerateColumns="false">
<Columns>
           <asp:TemplateField Visible="false"    >
           <ItemTemplate>
           <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id_atributo") %>' Visible="false" > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField> 
<asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,cat_atributo_atributo %>'>
<ItemTemplate>
<asp:Label ID="Label1" runat="server" Text='<%# eval("cat_atributo_atributo") %>'>
</asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,equ_equipoatributo_equipoatributo %>'>
<ItemTemplate>
<asp:Label ID="lblIdAtributo" runat="server" Visible='<%# IIF(eval("id")=-1,false,true) %>' Text='<%# eval("ultimoValor") %>'>
</asp:Label></ItemTemplate></asp:TemplateField>
<asp:TemplateField HeaderText="<%$ Resources:res_nombrecolumna,maximo %>">
<ItemTemplate>
<asp:Label ID="lbl_vmx" runat="server" Text='<%#eval("cat_atributo_valormaximo") %>'></asp:Label></ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="<%$ Resources:res_nombrecolumna,minimo %>">
<ItemTemplate>
<asp:Label ID="lbl_vmn" runat="server" Text='<%#eval("cat_atributo_valorminimo") %>'></asp:Label></ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="<%$ Resources:res_nombrecolumna,ultimo %>">
<ItemTemplate>
<asp:Label ID="lbl_ultva" runat="server" Text='<%#eval("valor") %>'></asp:Label>
</ItemTemplate> 
</asp:TemplateField>

<asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,equ_equipoatributo_fecha_ff %>'>
<ItemTemplate><asp:Label ID="Label2" runat="server" Visible="true" Text='<%# eval("fecha_ff") %>'>
</asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,cat_atributo_id_unidad %>'>
<ItemTemplate><asp:Label ID="Label3" runat="server" Visible="true" Text='<%# eval("unidad") %>'>
</asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField>
<ItemTemplate>
<asp:ImageButton ID="imb_editarVariable" runat ="server" ImageUrl ="../../images/botones/editaDrop.png" ToolTip="Editar" ValidationGroup='form' CssClass='imb' 
 CommandName ='<%# eval("id")%>' CommandArgument ='<%# eval("id_Atributo")%>'  Visible='<%# IIF(eval("id_atributo").tostring()="",false,true) %>'/>
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
</td>
</tr>
<tr>
<td style="padding-left: 100px">
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje">
</asp:Label>
</td>
</tr>
</table>