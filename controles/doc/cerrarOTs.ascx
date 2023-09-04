<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="cerrarOTs.ascx.vb" Inherits="website.samm_componentes.controles_doc_cerrarOTs" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<asp:RadioButtonList ID="rdb_tipoOperacion" runat="server" RepeatDirection="Horizontal"
AutoPostBack="true">
</asp:RadioButtonList>
<table>
<tr>
<td>
<table>
<tr>
<td align='left'>
<bti:BotonImagen ID="bti_atras" runat="server" ImageUrl="../../images/botones/atras.png" /><bti:BotonImagen
ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.png" />
</td>
</tr>
<tr>
<td style="text-align :left" ><asp:Label ID="lbl_numeroREG" runat="server" CssClass ="lbl" ></asp:Label></td>
</tr>
<tr>
<td>
<asp:GridView ID="grd_ot" runat="server" Width="600px" AutoGenerateColumns="False">
<Columns>
<asp:TemplateField ItemStyle-HorizontalAlign='Left'>
<ItemTemplate>
<asp:Label ID="lbl_id" runat="server" Text='<%# Eval("id") %>' Visible="false"></asp:Label><asp:Label
ID="lbl_campo" runat="server" Visible="false"></asp:Label>
<asp:Image ID="imbCerrar" runat="server" CausesValidation="False" ImageUrl="~/images/iconos/noEliminable.gif" />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField ItemStyle-HorizontalAlign='Left' HeaderText="<%$ Resources:res_campoGrilla,doc_documento_documento %>">
<ItemTemplate>
<asp:Label ID="lbl_doc" runat="server" Text='<%# eval("prefijo") & " - " & eval("numero") %>'></asp:Label><asp:HyperLink
ID="hyp_OT" CssClass='hyp' runat="server" Visible='true' Text='<%# eval("prefijo") & " - " & eval("numero") %>'
NavigateUrl='<%# "../../forms/doc/doc_documento_ot.aspx?id=" & Eval("id") %>'></asp:HyperLink></ItemTemplate>
</asp:TemplateField>
<asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="fecha_fh" HeaderText="<%$ Resources:res_campoGrilla,doc_documento_fecha_fh %>"
ReadOnly="True" SortExpression="fecha_fh" />
<asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="tipoServicio" HeaderText="<%$ Resources:res_campoGrilla,gen_tiposervicio_tiposervicio %>"
ReadOnly="True" SortExpression="tipoServicio" />
<asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="estadoTipoDocumento"
HeaderText="<%$ Resources:res_campoGrilla,doc_estadotipodocumento_estadotipodocumento %>"
ReadOnly="True" SortExpression="estadoTipoDocumento" />
<asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="zona" HeaderText="<%$ Resources:res_campoGrilla,gen_zona_zona %>"
ReadOnly="True" SortExpression="zona" />
<asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="tercero_cliente" HeaderText="<%$ Resources:res_campoGrilla,doc_documento_id_tercero_cliente %>"
ReadOnly="True" SortExpression="tercero_cliente" />
<asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="sucursal" HeaderText="<%$ Resources:res_campoGrilla,ter_sucursal_sucursal %>"
ReadOnly="True" SortExpression="sucursal" />
<asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="contrato" HeaderText="<%$ Resources:res_campoGrilla,cnt_contrato_contrato %>"
ReadOnly="True" SortExpression="contrato" />
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
<td style="text-align :left" ><asp:Label ID="lbl_numeroREG2" runat="server" CssClass ="lbl" ></asp:Label></td>
</tr>
</table>
</td>
</tr>
<td><table>
<tr>
<td colspan="3">
<asp:Label ID='lblMensajeNoCierra' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table></td>

<tr>
<td>
<table>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_subtipoDocumento' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_subtipoDocumento' runat='server' a_str_tabla='doc_subtipoDocumento'
a_bln_obligatorio='True' a_str_grupoValidacion='form' a_NObol_guardarNoExiste="true" />
</td>
</tr>
<tr id="tr_cliente" runat="server">
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_tercero_cliente' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tercero_cliente' runat='server' a_str_tabla='ter_tercero'
a_bln_obligatorio='True' a_str_grupoValidacion='form' a_bol_postBack="true" />
</td>
</tr>
<tr id="tr_sucursal" runat="server">
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_sucursal' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_sucursal' runat='server' a_str_tabla='ter_sucursal'
a_bln_obligatorio='True' a_str_grupoValidacion='form' />
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_notas" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,doc_documento_estadotipodocumento_notas%>'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID="txt_notas" runat="server" CssClass="txt_multilinea" TextMode="MultiLine"></asp:TextBox>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_factura" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:CheckBox ID="chb_factura" runat="server" AutoPostBack="true" />
</td>
</tr>
<tr id="tr_fechaFactura" runat="server" visible="false">
<td class='td_lblFormulario'>
<asp:Label ID="lbl_fechaFactura" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<fec:fechaAvanzada ID="fec_fechaFactura" runat="server" a_str_prefijo="ff" a_bln_obligatorio="true"
a_str_grupoValidacion="form" />
</td>
</tr>
<tr id="tr_montoFactura" runat="server" visible="false">
<td class='td_lblFormulario'>
<asp:Label ID="lbl_montoFactura" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID="txt_montoFactura" runat="server" CssClass="txt_numero"></asp:TextBox><asp:RequiredFieldValidator
ID="rfv_montoFactura" runat="server" ControlToValidate="txt_montoFactura" ErrorMessage=""
ValidationGroup="form" ForeColor="" CssClass="lbl_mensaje">*</asp:RequiredFieldValidator><act:filteredtextboxextender
id='ftb_montoFactura' runat='server' targetcontrolid='txt_montoFactura' filtertype='Numbers,Custom' />
</td>
</tr>
<tr id="tr_codigoFactura" runat="server" visible="false">
<td class='td_lblFormulario'>
<asp:Label ID="lbl_codigoFactura" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID="txt_codigoFactura" runat="server" CssClass="txt"></asp:TextBox><asp:RequiredFieldValidator
ID="rfv_codigoFactura" runat="server" ControlToValidate="txt_codigoFactura" ErrorMessage=""
ValidationGroup="form" ForeColor="" CssClass="lbl_mensaje">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td colspan='2'>
<bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
ValidationGroup='form' />
</td>
</tr>
<tr>
<td colspan='2'>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
<tr>
<td colspan='2'>
<asp:Label ID='txt_documento_numero' runat='server' CssClass='lbl'></asp:Label>
<asp:Label ID='lbl_linkDoc' runat='server' CssClass='lnk'></asp:Label>
</td>
</tr>
</table>
</td>
</tr>
</table>
