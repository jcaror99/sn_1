<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_opcionesRespuesta.ascx.vb"
Inherits="website.samm_componentes.controles_doc_inc_opcionesRespuesta" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table class="tbl_marcoFormulario" cellpadding="3" cellspacing="3">
<tr><td></td>
<td class="lbl_titulo1">
<asp:Label ID="lblt_titulo" runat="server" CssClass="lbl_titulo1" Text="<%$Resources:res_tituloPagina, forms_doc_opcionRespuesta %>"></asp:Label>
</td><td></td></tr><tr><td></td><td>
<bti:BotonImagen ID="btiNuevo" runat="server" CausesValidation="false" ImageUrl="../../images/botones/agregar.gif" /><br />
</td><td></td></tr><tr><td></td><td>
<asp:GridView ID="grvOpciones" runat="server" AutoGenerateColumns="False">
<Columns>
<asp:TemplateField HeaderText="<%$Resources:res_campogrilla, doc_opcionrespuesta_opcionrespuesta %>">
<ItemTemplate>
<asp:TextBox ID="txtOpcion" runat="server" CssClass="txt" Text='<%# eval("opcionrespuesta") %>'></asp:TextBox></ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="<%$Resources:res_campogrilla, doc_opcionrespuesta_valor %>">
<ItemTemplate>
<asp:TextBox ID="txtValor" runat="server" CssClass="txt_entero" Text='<%# eval("valor") %>'></asp:TextBox></ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="<%$Resources:res_campogrilla, doc_opcionrespuesta_orden %>">
<ItemTemplate>
<asp:TextBox ID="txtOrden" runat="server" CssClass="txt_entero" Text='<%# eval("orden") %>'></asp:TextBox></ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="<%$Resources:res_campogrilla, doc_opcionrespuesta_activa %>">
<ItemTemplate>
<asp:CheckBox ID="chkActiva" runat="server" CssClass="chk" Checked='<%# eval("activa") %>' /><asp:Label
ID="lblId" runat="server" Text='<%# eval("id") %>' Visible="False"></asp:Label></ItemTemplate>
</asp:TemplateField>
<asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/iconos/eliminar.gif"
ShowDeleteButton="True" />
</Columns>
<RowStyle CssClass="gri_item" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
</asp:GridView>
</td><td></td></tr><tr><td></td>
<td style="text-align: center">
<asp:Label ID="lblMensaje" runat="server" CssClass="lbl_mensaje"></asp:Label><br />
<bti:BotonImagen ID="btiAceptar" runat="server" CausesValidation="false" ImageUrl="../../images/botones/aceptar.jpg">
</bti:BotonImagen>
</td><td></td></tr></table>