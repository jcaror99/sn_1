<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_equiposPreventivo.ascx.vb" Inherits="website.samm_componentes.controles_doc_pop_equipospreventivo" %>
<%@ Register src="~/controles/general/busquedaAvanzada.ascx" tagname="busquedaAvanzada" tagprefix="uc1" %>
<%@ Register src="~/controles/general/busquedaAvanzadaMultiple.ascx" tagname="busquedaAvanzadaMultiple" tagprefix="uc3" %>
<%@ Register src="~/controles/general/fechaAvanzada.ascx" tagname="fechaAvanzada" tagprefix="uc2" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table>
<tr>
<td colspan="4">
<table>
<tr>
<td>
<asp:Label ID="lbl_equiposSinAlquiler" runat="server"  CssClass="lbl_etiquetaInformacion"></asp:Label>
</td>
</tr>
</table>
<asp:GridView ID="grv_equiposSinAlquiler" runat="server" AutoGenerateColumns="False"  >
<Columns>
<asp:TemplateField HeaderText="">
<ItemTemplate >
<asp:CheckBox ID="chb_seleccionar"  runat="server" CssClass='chb'  />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="res_campoGrilla,equ_equipo_equipo_serial">
<ItemTemplate>
<asp:Label ID="lbl_serial" runat="server" CssClass="lbl"  Text='<%# eval("equipo_serial") %>'></asp:Label>
</itemtemplate>
</asp:templatefield>
<asp:TemplateField HeaderText="res_campoGrilla,equ_equipo_ultimalectura_fh">
<ItemTemplate>
<asp:Label ID="lbl_ultimalectura" runat="server" CssClass="lbl"  Text='<%# eval("ultimalectura") %>'></asp:Label>
</itemtemplate>
</asp:templatefield>
<asp:TemplateField HeaderText="res_campoGrilla,doc_documento_ot_documento_ot">
<ItemTemplate>
<asp:Label ID="lbl_idot" runat="server" CssClass="invisible"  Text='<%# eval("id_ot") %>'></asp:Label>
<asp:Label ID="lbl_ot" runat="server" CssClass="lbl"  Text='<%# eval("ot") %>'></asp:Label>
</itemtemplate>
</asp:templatefield>
<asp:TemplateField >
<ItemTemplate>
<asp:Label ID="lbl_link" runat="server"  CssClass="lbl" Text='<%# eval("link") %>'></asp:Label>
</itemtemplate>
</asp:templatefield>
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
<tr><td>
<asp:CheckBox runat="server" ID="chk_asignar" CssClass="lbl"  />
</td></tr>
<tr id="tr_contratos" runat="server"><td>
<asp:DropDownList runat="server" ID="drp_contratos" CssClass="drp" >
</asp:DropDownList>
</td></tr>
<tr><td><bti:BotonImagen ID="btn_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg" ValidationGroup="equpre"   /> </td></tr>
   <tr><td> <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label> </td></tr>
</table>