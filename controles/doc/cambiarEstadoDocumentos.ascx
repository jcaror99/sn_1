<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="cambiarEstadoDocumentos.ascx.vb" Inherits="website.samm_componentes.controles_doc_cambiarEstadoDocumentos" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
<tr>
<td>
<table>
<tr>
<td align='left'>
<bti:BotonImagen ID="bti_atras" runat="server" ImageUrl="../../images/botones/atras.png" />
<bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.png" />
</td>
</tr>
<tr>
<td style="text-align :left" ><asp:Label ID="lbl_numeroREG" runat="server" CssClass ="lbl" visible="false"></asp:Label></td>
</tr>
<tr>
<td>
<asp:GridView ID="grd_documentos" runat="server" AllowPaging="False" Width="600px" AutoGenerateColumns="False">
<Columns>
<asp:TemplateField ItemStyle-HorizontalAlign='Left'>
<ItemTemplate>
<asp:Label ID="lbl_id" runat="server" Text='<%# Eval("id") %>' Visible="false"></asp:Label>
<asp:Label ID="lbl_campo" runat="server" Visible="false"></asp:Label>
<%--<asp:Image ID="imbCerrar" runat="server" CausesValidation="False" ImageUrl="~/images/iconos/noEliminable.gif" />--%>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField ItemStyle-HorizontalAlign='Left' HeaderText="<%$ Resources:res_campoGrilla,doc_documento_documento %>">
<ItemTemplate>
<asp:Label ID="lbl_doc" runat="server" Text='<%# eval("prefijo") & " - " & eval("documento_numero") %>' Visible=false></asp:Label>
<asp:HyperLink ID="hyp_documento" CssClass='hyp' runat="server" Visible='true' Text='<%# eval("prefijo") & " - " & eval("documento_numero") %>'></asp:HyperLink></ItemTemplate>
</asp:TemplateField>
<asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="fecha_fh" HeaderText="<%$ Resources:res_campoGrilla,doc_documento_fecha_fh %>"
ReadOnly="True" SortExpression="fecha_fh" />
<%--<asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="tipoServicio" HeaderText="<%$ Resources:res_campoGrilla,gen_tiposervicio_tiposervicio %>"
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
ReadOnly="True" SortExpression="contrato" />--%>
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
<td style="text-align :left" ><asp:Label ID="lbl_numeroREG2" runat="server" CssClass ="lbl" visible="false"></asp:Label></td>
</tr>
</table>
<tr>
<td colspan="3">
<asp:Label ID='lblMensajeNoCierra' runat='server' CssClass='lblobligatorio' Visible="false"></asp:Label>
</td>
</tr>

</td>
</tr>
<tr>
<table>
<%--<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_codigo" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID="txt_codigo" runat="server" CssClass="txt"></asp:TextBox>
</td>
<td class='td_controlesFormulario'>
<asp:CheckBox ID="chb_cambiarCodigo" runat="server" CssClass="chb" />
</td>
</tr>--%>
<tr>

<td class='td_lblFormulario'>
<asp:Label ID="lbl_notas" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,doc_documento_estadotipodocumento_notas%>'></asp:Label>
</td>
<td class='td_controlesFormulario'  colspan="3">
<asp:TextBox ID="txt_notas" runat="server" CssClass="txt_multilinea" TextMode="MultiLine"></asp:TextBox>
</td>
</tr>
<%--Aqui es donde se crea el nuevo control--%>
<tr>
<td colspan='4' class='td_lblFormulario'> 
<asp:CheckBox ID="chk_comentario" runat="server" CssClass="lbl" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="Label1" runat="server" CssClass="lbl" Text="Nuevo estado"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:DropDownList ID="drp_estados" runat="server" CssClass="drp" >
</asp:DropDownList>
</td>
</tr>
<%--Aqui es donde se crea el nuevo control--%>
<tr>
<td colspan='4'>
<bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
ValidationGroup='form' />
</td>
</tr>
<tr>
<td colspan='2'>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
</table>
</tr>
</table>
