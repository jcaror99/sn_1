<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="busquedaAvanzada.ascx.vb"
Inherits="website.samm_controles.controles_busquedaAvanzada" %>
<%@ Register TagName="grilla" Src="~/controles/general/grilla.ascx" TagPrefix="gri" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<link href="../../css/samm/popup.css" rel="stylesheet" type="text/css" />
<asp:HiddenField ID="hdi_drpselect" runat="server" />
<asp:HiddenField ID="hdd_estadoPop" runat="server" Value="1"/>
<div id="divModal_bus" class="modalBackground_bus" runat="server" style="display:none; overflow:visible; width:100%; height:100%;">
</div>
<table id="tbl_popup" runat="server" border="0" cellpadding="0" cellspacing="0"
class="tbl_popup_bus" style="display:none;" visible="false" >
<tr id="tr_barratitulo" runat="server" class="tr_tituloPop">
<td width="99%">
</td>
<td width="1%" style="text-align:right ">
<bti:BotonImagen ID="btiCerrar" runat="server" ImageUrl="../../images/botones/cerrar_pop.jpg"
CausesValidation="false" />
</td>
</tr>
<tr>
<td width="98%" valign="top" colspan="2">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
<td width="75%" valign="top" bgcolor="#E7EEF5">
<table width="100%" border="0" cellpadding="10" cellspacing="0">
<tr>
<td bgcolor="#FFFFFF" valign="top">
<asp:Panel ID="pnl_control" runat="server" BackColor="white">
<table>
<tr>
<td>
<table id="tbl_grilla" runat="server" cellpadding="0" cellspacing="0">
<tr>
<td>
<asp:Panel ID='pan_busqueda' runat='server' DefaultButton='imb_buscar' GroupingText="">
<table>
<tr>
<td>
<asp:GridView ID="grd_buscar" runat="server" AutoGenerateColumns="False" GridLines="None" CellPadding="3" ShowHeader="false">
<Columns>
<asp:TemplateField ItemStyle-HorizontalAlign="Right">
<ItemTemplate>
<asp:Label ID="lbl_buscar" runat="server" CssClass="lbl" Text='<%# eval("label") %>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField ItemStyle-HorizontalAlign="Left">
<ItemTemplate>
<asp:TextBox ID="txt_buscar" runat="server" CssClass="txt_formulario" Text='<%# eval("buscar") %>' Visible='<%# IIF(eval("id"),False,True) %>'></asp:TextBox>
<asp:DropDownList ID="drp_buscar" runat="server" CssClass="drp" >
</asp:DropDownList>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField></asp:TemplateField>
</Columns>
</asp:GridView>
</td>
<td valign="top">
<bti:BotonImagen ID="imb_buscar" runat="server" CssClass='imb' CausesValidation="false"
ImageUrl="~/images/botones/buscarBA.gif" /></td>
<td valign="top">
<bti:BotonImagen ID="imb_nuevo" runat="server" CssClass='imb' CausesValidation="false"
ImageUrl="~/images/botones/nuevoDrop.gif"></bti:BotonImagen></td>
<td valign="top">
<bti:BotonImagen ID="imb_deseleccionar" runat="server" CssClass='imb' CausesValidation="false"
ImageUrl="~/images/botones/deselect.gif"></bti:BotonImagen></td>
</tr>
</table>
</asp:Panel>
</td>
</tr>
<tr>
<td >
<div class="div_grillaBusquedaAvanzada">
<gri:grilla ID="grilla" runat="server" a_bln_paginacionNormal="true" />
</div>
</td>
</tr>
</table>
<table id="tbl_arbol" runat="server" cellpadding="0" cellspacing="0">
<tr>
<td>
<div class="div_grillaBusquedaAvanzada">
<asp:TreeView ID="trv" runat="server" CssClass='trv' LineImagesFolder="../../images/treelineimages" ShowLines="True"
SkipLinkText="a" EnableClientScript="false">
<SelectedNodeStyle CssClass="tre_seleccionado" />
<RootNodeStyle CssClass="tre_raiz" />
<NodeStyle CssClass="tre_nodo" />
</asp:TreeView>
</div>
</td>
</tr>
</table>
<asp:Label ID="lbl_path" runat="server" CssClass="lbl"></asp:Label><table>
<tr>
<td>
<%--<bti:BotonImagen ID="imb_aceptar" runat="server" CssClass='imb' CausesValidation="false"
ImageUrl="~/images/botones/aceptar.jpg" />--%>
<asp:Label ID="lbl_buscado" runat="server" CssClass="lbl_mensaje"></asp:Label></td>
</tr>
</table>
</td>
</tr>
</table>
</asp:Panel>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
<table cellpadding="0" cellspacing="0">
<tr>
<td style="white-space: nowrap">
<asp:DropDownList ID="drpListado" runat="server" CssClass="drp">
</asp:DropDownList>
<bti:BotonImagen ID="imb_nuevoDRP" runat="server" CausesValidation="false" CssClass='imb'
ImageUrl="~/images/botones/nuevoDrop.gif" />
<bti:BotonImagen ID="imb_editaDRP" runat="server" CausesValidation="false" CssClass='imb'
ImageUrl="~/images/botones/editaDrop.png" />
<asp:Label ID="lbl" runat="server" CssClass="lbl"></asp:Label>
<asp:RequiredFieldValidator ID="rfvListado" runat="server" ControlToValidate="drpListado"
SetFocusOnError="True" CssClass="lbl_mensaje" ForeColor=''>*</asp:RequiredFieldValidator>
<asp:DropDownList ID="drp_aux" runat="server" CssClass="invisible" Visible="false">
</asp:DropDownList>
<asp:DropDownList ID="drp_auxFecha" runat="server" CssClass="invisible" Visible="false">
</asp:DropDownList>
<asp:DropDownList ID="drp_auxHora" runat="server" CssClass="invisible" Visible="false">
</asp:DropDownList>

</td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td style="white-space:nowrap">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td>
<asp:TextBox ID="txt_busqueda" runat="server" CssClass="txt_formulario"></asp:TextBox>
</td>
<td>
<asp:TextBox ID="txt_buscado" runat="server" CssClass="invisible"></asp:TextBox>
</td>
<td>
<bti:BotonImagen ID="imb_busqueda" runat="server" CssClass='imb' CausesValidation="false" ImageUrl="~/images/botones/buscarBA.gif" />
</td>
<td>
<bti:BotonImagen ID="imb_busquedaArbol" runat="server" ImageUrl="../../images/botones/buscarBA_arbol.gif" CssClass='imb' CausesValidation="false" />
</td>
<td>
<bti:BotonImagen ID="imb_edita" runat="server" CausesValidation="false" CssClass='imb' ImageUrl="~/images/botones/editaDrop.png" />
</td>
<td>
<asp:RequiredFieldValidator ID="rfv_buscado" runat="server" ControlToValidate="txt_buscado" SetFocusOnError="True" CssClass="lbl_mensaje" ForeColor=''>*</asp:RequiredFieldValidator>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>

<asp:HiddenField ID="hddPosicionScroll" runat="server" />
</td>
</tr>
</table>
</td>
</tr>
</table>
<asp:LinkButton ID="lnk_nuevoDrp" runat="server" CssClass='invisible' ></asp:LinkButton>
<asp:HiddenField id="hdd_id" runat="server">
</asp:HiddenField>
<asp:HiddenField ID="hdd_tbl_posX" runat="server" />
<asp:HiddenField ID="hdd_tbl_posY" runat="server" />
<asp:HiddenField ID="hdd_tbl_visible" runat="server" />