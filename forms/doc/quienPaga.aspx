<%@ Page Language="VB" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master"
AutoEventWireup="false" CodeBehind="quienPaga.aspx.vb" Inherits="website.samm_web.forms_doc_quienPaga" %>
<%@ Register Src="~/controles/general/informacion.ascx" TagName="informacion"
TagPrefix="uc3" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada"
TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="pop" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada'
TagPrefix='bus' %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName='tabs' TagPrefix='tab' %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" runat="Server">
    <asp:Label ID="lbTitulo" runat="server" Text="<%$ Resources:res_titulopagina,forms_doc_quienpaga %>"
CssClass="lbl_titulo"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" runat="Server">
<pop:popup ID="popupInterno" runat="server" />
 
<table cellpadding="0" cellspacing="0">
<tr>
<td>
<tab:tabs ID='Tabs' runat="server" />
</td>
</tr>
</table>
<uc3:informacion ID="inf_documento" runat="server" a_bln_orientacionVertical="false" />
<table class="tbl_marcoFormulario" cellpadding="0" cellspacing="0">
<tr>
<td>
<table>
<tr>
<td valign="top">
<asp:Panel ID="Panel2" runat="server" CssClass="pnl" >
<table>
<tr>
<td colspan="2">
<asp:RadioButtonList ID="rbl_totales" runat="server" RepeatDirection="Horizontal"
AutoPostBack="True" Enabled="True">
<asp:ListItem Selected="True" runat="server"></asp:ListItem>
<asp:ListItem runat="server"></asp:ListItem>
</asp:RadioButtonList>
</td>
</tr>
<tr>
<td colspan="2">
<asp:RadioButtonList ID="rbl_porcentajeOrValor" runat="server" RepeatDirection="Horizontal"
AutoPostBack="True">
<asp:ListItem Selected="True" runat="server"></asp:ListItem>
<asp:ListItem runat="server"></asp:ListItem>
</asp:RadioButtonList>
</td>
</tr>
<tr>
<td align="center">
<asp:Label ID="lbl_salariominimo" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<asp:TextBox ID="txt_salariominimo" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:DropDownList ID="drp_columna" runat="server" CssClass="drp">
<asp:ListItem Value="1" Text='<%$Resources:res_campoGrilla,doc_itemdocumento_porcentajecliente %>'></asp:ListItem>
<asp:ListItem Value="2" Text='<%$Resources:res_campoGrilla,doc_itemdocumento_porcentajedistribuidor %>'></asp:ListItem>
<asp:ListItem Selected="True" Value="3" Text='<%$Resources:res_campoGrilla,doc_itemdocumento_porcentajefabricante %>'></asp:ListItem>
</asp:DropDownList>
</td>
<td>
<bti:BotonImagen ID="bti_autocompletar" runat="server" ImageUrl="../../images/botones/aceptar.jpg" />
</td>
</tr>
</table>
</asp:Panel>
</td>
<td valign="top">
<asp:Panel ID="Panel1" runat="server" CssClass="pnl" GroupingText="<%$Resources:res_metadata,doc_centrocosto_centrocosto  %>">
<table>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_centroCosto" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,doc_centrocosto_centrocosto %>'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID="bus_centroCosto" runat="server" a_str_tabla="doc_centroCosto"
a_bol_postBack="true" />
</td>
</tr>
<tr>
<td colspan="2">
<asp:GridView ID="grd_centroCosto" runat="server" AutoGenerateColumns="False">
<Columns>
<asp:TemplateField>
<ItemTemplate>
<bti:BotonImagen ID="bti_eliminar" runat="server" OnClick="bti_eliminarCentroCosto_Click"
CommandArgument='<%# eval("id") %>' ImageUrl="../../images/iconos/eliminar.gif" />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_centrocosto_centrocosto %>'>
<ItemTemplate>
<asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="false"></asp:Label>
<asp:Label ID="lbl_id_centro" runat="server" Text='<%# eval("id_centroCosto") %>'
Visible="false"></asp:Label>
<asp:Label ID="lbl_centro" runat="server" Text='<%# eval("centroCosto") %>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_documento_ot_centrocosto_porcentaje %>'>
<ItemTemplate>
<asp:TextBox ID='txt_porcentaje' runat='server' Text='<%# eval("porcentaje") %>'
CssClass='txt_numeroGrilla'></asp:TextBox>%
<asp:RequiredFieldValidator ID='rfv_porcentaje' runat='server' ControlToValidate='txt_porcentaje'
ValidationGroup="costo" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
<act:FilteredTextBoxExtender ID='ftb_porcentaje' runat='server' TargetControlID='txt_porcentaje'
FilterType='Numbers,Custom' />
<asp:RangeValidator ID="rgv_porcentaje" runat="server" ControlToValidate="txt_porcentaje"
MaximumValue="100" MinimumValue="0" Type="Double" CssClass='lbl_mensaje' ValidationGroup="costo"
ForeColor="" Text="*" ErrorMessage="<%$ Resources: res_mensajes,rangoInvalido %>">
</asp:RangeValidator>
</ItemTemplate>
</asp:TemplateField>
</Columns>
<RowStyle CssClass="gri_item" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
</asp:GridView>
</td>
</tr>
<tr>
<td align="center" colspan="2">
<bti:BotonImagen ID="bti_guardarCentroCosto" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
ValidationGroup="costo" />
</td>
</tr>
<tr>
<td align="center" colspan="2">
<asp:Label ID="lbl_mensajeCentro" runat="server" CssClass="lbl_mensaje"></asp:Label>
<asp:ValidationSummary ID='vls_centro' runat='server' ValidationGroup='costo' CssClass='lbl_mensaje'
ForeColor='' HeaderText='<%$Resources:res_mensajes,camposObligatorios %>'></asp:ValidationSummary>
</td>
</tr>
</table>
</asp:Panel>
</td>
</tr>
<tr>
<td align="center" colspan="2">
<asp:Label ID="lbl_flujoDoc" runat="server" Text="" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_errorSuma" Enabled="false" runat="server" CssClass="lbl_mensaje"> </asp:Label>
</td>
</tr>
<tr>
<td colspan="2">
<asp:GridView ID="grd_porcentaje" runat="server" AutoGenerateColumns="False">
<Columns>
<asp:TemplateField HeaderText="id" HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
<ItemTemplate>
<asp:Label ID="lbl_id_item" runat="server" Text='<%# eval("id") %>' CssClass="invisible"></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_itemdocumento_itemdocumento %>'>
<ItemTemplate>
<asp:Label ID="lbl_id_itemPadre" runat="server" Text='<%# eval("itemPadre") %>' CssClass="invisible"></asp:Label>
<asp:Label ID="lbl_espacios" runat="server" Text='<%# eval("item_espacio") %>' CssClass="lbl_grilla"></asp:Label>
<asp:CheckBox ID="chb_habilitar" runat="server" />
<asp:Label ID="lbl_item" runat="server" Text='<%# eval("item") %>' CssClass="lbl_grilla"></asp:Label>
<asp:HiddenField ID="hdd_disabled" runat="server" />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_itemdocumento_porcentajecliente %>'>
<ItemTemplate>
<asp:TextBox ID='txt_cliente' runat='server' Text='<%# eval("cliente") %>' CssClass='txt_numeroGrilla'></asp:TextBox>
%
<asp:RequiredFieldValidator ID='rfv_cliente' runat='server' ControlToValidate='txt_cliente'
ValidationGroup="porcentaje" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
<asp:RangeValidator ID="rgv_cliente" runat="server" ControlToValidate="txt_cliente"
MaximumValue="100" MinimumValue="0" Type="Double" CssClass='lbl_mensaje' ValidationGroup="porcentaje"
ForeColor="" Text="*" ErrorMessage="<%$ Resources: res_mensajes,rangoInvalido %>">
</asp:RangeValidator>
$<asp:TextBox ID='txt_clienteValor' Enabled='False' runat='server' Text='<%# eval("clientevalor") %>'
CssClass='txt_numeroGrilla' Width="100"></asp:TextBox>
<asp:RequiredFieldValidator ID='rfv_clienteValor' runat='server' ControlToValidate='txt_clienteValor'
ValidationGroup="valor" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
SM<asp:TextBox ID='txt_clienteSalariominimo' Enabled='False' runat='server' CssClass='txt_numeroGrilla'></asp:TextBox>
<act:FilteredTextBoxExtender ID='ftb_clienteSM' runat='server' TargetControlID='txt_clienteSalariominimo'
FilterType='Numbers,Custom' />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_itemdocumento_porcentajedistribuidor %>'>
<ItemTemplate>
<asp:TextBox ID='txt_proveedor' runat='server' Text='<%# eval("proveedor") %>' CssClass='txt_numeroGrilla'></asp:TextBox>
%<asp:RequiredFieldValidator ID='rfv_proveedor' runat='server' ControlToValidate='txt_proveedor'
ValidationGroup="porcentaje" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
<asp:RangeValidator ID="rgv_proveedor" runat="server" ControlToValidate="txt_proveedor"
MaximumValue="100" MinimumValue="0" Type="Double" CssClass='lbl_mensaje' ValidationGroup="porcentaje"
ForeColor="" Text="*" ErrorMessage="<%$ Resources: res_mensajes,rangoInvalido %>">
</asp:RangeValidator>
$<asp:TextBox ID='txt_proveedorValor' Enabled='False' runat='server' Text='<%# eval("proveedorvalor") %>'
CssClass='txt_numeroGrilla' Width="100"></asp:TextBox>
<asp:RequiredFieldValidator ID='rfv_proveedorValor' runat='server' ControlToValidate='txt_proveedorValor'
ValidationGroup="valor" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
SM<asp:TextBox ID='txt_proveedorSalariominimo' Enabled='False' runat='server' CssClass='txt_numeroGrilla'></asp:TextBox>
<act:FilteredTextBoxExtender ID='ftb_proveedorSM' runat='server' TargetControlID='txt_proveedorSalariominimo'
FilterType='Numbers,Custom' />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_itemdocumento_porcentajefabricante %>'>
<ItemTemplate>
<asp:TextBox ID='txt_otro' runat='server' Text='<%# eval("fabricante") %>' CssClass='txt_numeroGrilla'></asp:TextBox>%
<asp:RequiredFieldValidator ID='rfv_otro' runat='server' ControlToValidate='txt_otro'
ValidationGroup="porcentaje" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
<asp:RangeValidator ID="rgv_otro" runat="server" ControlToValidate="txt_otro" MaximumValue="100"
MinimumValue="0" Type="Double" CssClass='lbl_mensaje' ValidationGroup="porcentaje"
ForeColor="" Text="*" ErrorMessage="<%$ Resources: res_mensajes,rangoInvalido %>">
</asp:RangeValidator>
$<asp:TextBox ID='txt_otroValor' Enabled='False' runat='server' Text='<%# eval("fabricantevalor") %>'
CssClass='txt_numeroGrilla' Width="100"></asp:TextBox>
<asp:RequiredFieldValidator ID='rfv_otroValor' runat='server' ControlToValidate='txt_otroValor'
ValidationGroup="valor" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
SM<asp:TextBox ID='txt_otroSalariominimo' Enabled='False' runat='server' CssClass='txt_numeroGrilla'></asp:TextBox>
<act:FilteredTextBoxExtender ID='ftb_otroSM' runat='server' TargetControlID='txt_otroSalariominimo'
FilterType='Numbers,Custom' />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField>
<ItemTemplate>
<asp:Label ID="lbl_diferencia" Text='<%# eval("Diferencia") %>' runat="server" CssClass="lbl_grilla"></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField>
<ItemTemplate>
<asp:TextBox ID='txt_total' Enabled='False' runat='server' Text='<%# eval("Total") %>'
CssClass='txt_numeroGrilla' Width="100"></asp:TextBox>
</ItemTemplate>
</asp:TemplateField>
</Columns>
<RowStyle CssClass="gri_item" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
</asp:GridView>
</td>
</tr>
<tr>
<td align="center" colspan="2">
<bti:BotonImagen ID="bti_guardarPorcentaje" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
ValidationGroup="porcentaje" />
<asp:ValidationSummary ID='vls_porcentaje' runat='server' ValidationGroup='porcentaje'
CssClass='lbl_mensaje' ForeColor='' HeaderText='<%$Resources:res_mensajes,camposObligatorios %>'>
</asp:ValidationSummary>
</td>
</tr>
</table>
</td>
</tr>
</table>
</asp:Content>
