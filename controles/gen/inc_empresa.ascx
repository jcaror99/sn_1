<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_empresa.ascx.vb"
Inherits="website.samm_componentes.controles_gen_inc_empresa" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td valign="top">
<bti:BotonImagen ID="btn_agregar" runat="server" CssClass='imb' ImageUrl="~/images/botones/nuevo.gif"
CausesValidation="false" /><br />
<bti:BotonImagen ID="btn_eliminar" runat="server" CssClass='imb' ImageUrl="~/images/botones/eliminar.gif"
CausesValidation="false" />
</td>
<td rowspan="4" style="padding-right: 10px; padding-left: 10px; padding-top: 10px;
background-color: white">
<asp:Label ID="lbl_numEmpresas" runat="server" CssClass="lbl_mensaje"></asp:Label><br />
<asp:TreeView ID="trv" runat="server" CssClass='trv' LineImagesFolder="../../images/treelineimages"
ShowLines="True" SkipLinkText="a">
<SelectedNodeStyle CssClass="tre_seleccionado" />
<RootNodeStyle CssClass="tre_raiz" />
<NodeStyle CssClass="tre_nodo" />
</asp:TreeView>
</td>
<td class="tbl_marcoFormulario" style="padding-left: 10px; padding-top: 10px" valign="top">
<asp:Panel ID='pan_formulario' runat='server' DefaultButton='btn_aceptar'>
<table>
<tr>
<td>
</td>
<td colspan="3" style="background-color: white">
<asp:Label ID="lblEstado" runat="server" CssClass="lbl_estadoFormulario"></asp:Label>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_empresa" runat="server" CssClass='lbl'></asp:Label>
</td>
<td>
<asp:TextBox ID="txt_empresa" runat="server" CssClass='txt'></asp:TextBox>
<asp:RequiredFieldValidator ID="rfv_empresa" runat="server" ControlToValidate='txt_empresa'
ValidationGroup="empresa" ErrorMessage="<%$ Resources:res_mensajes , camposObligatorios %>"
ForeColor="" CssClass="lbl_mensaje">*</asp:RequiredFieldValidator>
</td>
<td>
<bti:BotonImagen ID="btn_aceptar" runat="server" CssClass='imb' ImageUrl="~/images/botones/aceptar.png"
ValidationGroup="empresa" />
</td>
<td>
&nbsp;
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_empresa_codigo" runat="server" CssClass='lbl'></asp:Label>
</td>
<td>
<asp:TextBox ID="txt_empresa_codigo" runat="server" CssClass='txt'></asp:TextBox>
</td>
<td>
</td>
<td>
&nbsp;
</td>
</tr>
<tr>
<td>
</td>
<td colspan="2">
<asp:ValidationSummary ID="vls_empresa" runat="server" ValidationGroup="empresa"
ForeColor="" CssClass="lbl_mensaje" />
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
<td>
</td>
</tr>
<tr runat='server' id='tr_hermano_1'>
<td colspan="3">
<asp:Label ID="lbl_seleccioneHermano" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
&nbsp;
</td>
</tr>
<tr runat='server' id='tr_hermano'>
<td>
&nbsp;
</td>
<td colspan="2">
<uc1:busquedaAvanzada ID="bus_hermano" runat="server" a_bol_postBack="False" a_str_tabla="gen_empresa"
a_bln_obligatorio="True" a_str_grupoValidacion="empresa" />
</td>
<td>
</td>
</tr>
</table>
</asp:Panel>
</td>
</tr>
</table>
