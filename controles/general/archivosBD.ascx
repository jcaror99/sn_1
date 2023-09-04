<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="archivosBD.ascx.vb" Inherits="website.samm_controles.controles_general_archivosBD" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>

<script src="../../js/documento/code_query.js"></script>
<table cellpadding="0" cellspacing="0" class="tbl_marcoFormulario">
<tr runat="server" class="lbl_titulo1">
<td colspan="2">
<asp:Label ID="lbl_titulo" runat="server" CssClass="lbl_titulo1"></asp:Label></td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_tamanioArchivo" runat="server" CssClass="lbl_mensaje"></asp:Label>
<asp:Label ID="valFile" runat="server" CssClass="lbl_mensaje"></asp:Label>
<asp:Label ID="tipoTamano" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
<tr id="trCargar" runat="server">
<td>
<asp:FileUpload ID="fulNuevoArchivo" runat="server" Onchange="f_CarArch(this)" CssClass="ful" Multiple="multiple"/>
</td>
<td style="padding:2px;">
<cc1:BotonImagen ID="ibtAceptar" runat="server" ImageUrl="../../images/botones/aceptar.png">
</cc1:BotonImagen><br />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_tamanoArchivos" runat="server" CssClass="lbl_mensaje"></asp:Label>
<asp:Label ID="lbl_doc" runat="server"></asp:Label>
</td>
</tr>
<tr>
<td colspan="2">
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
<tr>
<td colspan="2">
<asp:GridView ID="grvArchivos" runat="server" AutoGenerateColumns="False" ShowHeader="false" EmptyDataText="<%$Resources:res_mensajes,grillaVacia %>">
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<Columns>
<asp:BoundField DataField="usuario_creo" />
<asp:BoundField DataField="fechaCreacion" />
<asp:HyperLinkField   DataNavigateUrlFields="link" DataTextField="archivo" Target="_blank" />
<asp:TemplateField ShowHeader="False">
<ItemTemplate>
<asp:TextBox ID="txt_descripcion" runat="server" CssClass="txt" Text='<%#eval("descripcion") %>'></asp:TextBox>
</ItemTemplate>
</asp:TemplateField>

<asp:TemplateField ShowHeader="False">
<ItemTemplate>
    <asp:DropDownList ID="drp_id_tipoArchivo" runat="server" CssClass="drp" >
    </asp:DropDownList>
</ItemTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
<ItemTemplate>
<asp:Label ID="lbl_id" runat="server" Text='<%#eval("id") %>'></asp:Label>
<asp:Label ID="lbl_codigo" runat="server" CssClass="invisible" Text='<%#eval("archivo_codigo") %>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField ShowHeader="False">
<ItemTemplate>
<asp:ImageButton ID="imbPrincipalLogo" title="Imagen de cabecera" runat="server" CausesValidation="False" CommandName="Edit"
ImageUrl="~/images/iconos/cabeceras.png" Visible="false" />
<asp:Image ID="imbPrincipalCheckLogo" runat="server" ImageUrl="~/images/iconos/archivoPrincipal.jpg"
Visible="false" />
</ItemTemplate>
</asp:TemplateField>
<asp:CommandField ButtonType="Image" ShowSelectButton="True" SelectImageUrl="~/images/botones/seleccionarGrilla.gif" />
<asp:TemplateField ShowHeader="False">
<ItemTemplate>
<asp:Image ID="imbPrincipal" runat="server" ImageUrl="~/images/iconos/archivoPrincipal.jpg"
Visible="false" />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField ShowHeader="False">
<ItemTemplate>
<asp:ImageButton ID="imbEliminar" runat="server" CausesValidation="False" CommandName="Delete"
ImageUrl="~/images/iconos/eliminar.gif" />
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
</td>
</tr>
<tr>
<td>
<cc1:BotonImagen ID="bti_guardarDescripcion" runat="server" ImageUrl="../../images/botones/aceptar.png">
</cc1:BotonImagen>
<asp:Label ID="lbl_duplicado" runat="server" CssClass="lbl_mensaje" Visible=true></asp:Label>
</td>
</tr>
</table>
&nbsp;
<script type="text/javascript" src="../../js/documento/validArchivos.js"></script>
