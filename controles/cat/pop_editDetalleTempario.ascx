<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_editDetalleTempario.ascx.vb"
Inherits="website.samm_componentes.controles_cat_pop_editDetalleTempario" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
<tr>
<td>
<asp:Label ID="lblSistema" runat="server" Text="<%$Resources:res_metadata,cat_sistema_sistema %>"></asp:Label>
</td>
<td>
<uc1:busquedaAvanzada ID="busSistema" runat="server" a_bln_obligatorio="false" a_str_tabla="cat_sistema"
a_str_grupoValidacion="pop_editarDetalle" />
</td>
<td>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lblTipoCatalogo" runat="server" Text="<%$Resources:res_metadata,cat_tipocatalogo_tipocatalogo %>"></asp:Label>
</td>
<td>
<uc1:busquedaAvanzada ID="busTipoCatalogo" runat="server" a_bln_obligatorio="false"
a_str_tabla="cat_tipoCatalogo" a_bol_postBack="true" a_bol_deshabilitar="true" />
</td>
<td>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lblcatalogo" runat="server" Text="<%$Resources:res_metadata,cat_catalogo_catalogo %>"></asp:Label>
</td>
<td>
<uc1:busquedaAvanzada ID="busCatalogo" runat="server" a_bln_obligatorio="true" a_str_tabla="cat_catalogo"
a_str_grupoValidacion="pop_editarDetalle" a_bol_postBack="true" a_bol_deshabilitar="true" />
</td>
<td>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lblPrueba" runat="server" Text="<%$ Resources:res_metadata,cat_pruebachecklist_pruebachecklist %>"></asp:Label>
</td>
<td>
<uc1:busquedaAvanzada ID="busPrueba" runat="server" a_bln_obligatorio="false" a_str_tabla="cat_pruebaCheckList" />
</td>
<td>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lblTipoDetalleActividad" runat="server" Text="<%$ Resources:res_etiquetas_cat,tipoDetalleActividad %>"></asp:Label>
</td>
<td>
<asp:RadioButtonList ID="rblTipoDetalle" runat="server" AutoPostBack="True">
<asp:ListItem Value="0" Selected="True" Text="<%$ Resources:res_metadata,cat_catalogo_repuesto_catalogo_repuesto %>"></asp:ListItem>
<asp:ListItem Value="1" Text="<%$ Resources:res_metadata,cat_soporteActividad_soporteActividad %>"></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lblCargo" runat="server" Text="<%$ Resources:res_metadata,seg_cargo_cargo %>"></asp:Label>
</td>
<td>
<uc1:busquedaAvanzada ID="busCargo" runat="server" a_bln_obligatorio="false" a_str_tabla="seg_cargo" />
</td>
<td>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lblRepuestoActividad" runat="server" Text="<%$ Resources:res_metadata,cat_catalogo_repuesto_catalogo_repuesto %>"></asp:Label>
</td>
<td>
<uc1:busquedaAvanzada ID="busRepuesto" runat="server" a_bln_obligatorio="false" a_str_tabla="cat_catalogo.repuesto" />
</td>
<td>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lblCantidad" runat="server" Text="<%$Resources:res_metadata,cat_detalletempario_cantidadtropicalizada %>"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtCantidad" runat="server" CssClass="txt_entero"></asp:TextBox><asp:RequiredFieldValidator
ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCantidad" CssClass="lbl_mensaje"
ForeColor="" ValidationGroup="pop_editarDetalle"></asp:RequiredFieldValidator><act:filteredtextboxextender
id="ftb_cantidad" runat="server" filtertype="Numbers,Custom" targetcontrolid="txtCantidad"> </act:filteredtextboxextender>
</td>
<td>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lblCantidadFabricante" runat="server" Text="<%$Resources:res_metadata,cat_detalletempario_cantidadestandar %>"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtCantidadFabricante" runat="server" CssClass="txt_entero"></asp:TextBox><asp:RequiredFieldValidator
ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCantidadFabricante"
CssClass="lbl_mensaje" ForeColor="" ValidationGroup="pop_editarDetalle"></asp:RequiredFieldValidator><act:filteredtextboxextender
id="ftbCantidadFabricante" runat="server" filtertype="Numbers,Custom" targetcontrolid="txtCantidadFabricante"> </act:filteredtextboxextender>
</td>
<td>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lblorden" runat="server" Text="<%$Resources:res_metadata,cat_detalletempario_orden %>"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtOrden" runat="server" CssClass="txt_entero"></asp:TextBox><asp:RequiredFieldValidator
ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtOrden" CssClass="lbl_mensaje"
ForeColor="" ValidationGroup="pop_editarDetalle"></asp:RequiredFieldValidator><act:filteredtextboxextender
id="ftbOrden" runat="server" filtertype="Numbers,Custom" targetcontrolid="txtOrden"></act:filteredtextboxextender>
</td>
<td>
</td>
</tr>
<tr>
<td>
</td>
<td>
<cc1:BotonImagen ID="btiAceptar" runat="server" ImageUrl="~/images/botones/aceptar.png"
ValidationGroup="pop_editarDetalle" />
</td>
<td>
</td>
</tr>
<tr>
<td>
</td>
<td>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje" Text=""></asp:Label><asp:ValidationSummary
ID="ValidationSummary1" runat="server" CssClass="lbl_mensaje" DisplayMode="List"
ForeColor="" ValidationGroup="pop_editarDetalle" />
</td>
<td>
</td>
</tr>
</table>
