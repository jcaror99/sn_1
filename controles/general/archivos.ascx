<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="archivos.ascx.vb" Inherits="website.samm_controles.controles_general_archivos" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<table cellpadding="0" cellspacing="0" class="tbl_marcoFormulario">
<tr runat="server" class="lbl_titulo1">
<td colspan="2">
<asp:Label ID="lbl_titulo" runat="server" CssClass="lbl_titulo1"></asp:Label></td>
</tr>
<tr>
<td colspan="2">
<asp:Label ID="lbl_tamanioArchivo" runat="server" CssClass="lbl_mensaje"></asp:Label>
<asp:Label ID="valFile" runat="server" CssClass="lbl_mensaje"></asp:Label>
<asp:Label ID="tipoTamano" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
<tr id="trCargar" runat="server">
<td>
<asp:FileUpload ID="fulNuevoArchivo" runat="server" Onchange="f_CarArch(this)" CssClass="ful" Multiple="Multiple" />
</td>
<td style="padding:2px;">
<cc1:BotonImagen ID="ibtAceptar" runat="server" ImageUrl="../../images/botones/aceptar.png">
</cc1:BotonImagen><br />
<asp:Label ID="lbl_duplicado" runat="server" CssClass="lbl_mensaje" Visible=true></asp:Label>
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
<asp:GridView ID="grvArchivos" runat="server" AutoGenerateColumns="False" ShowHeader="True" EmptyDataText="<%$Resources:res_mensajes,grillaVacia %>">
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<Columns>

<%--<asp:HyperLinkField DataNavigateUrlFields="link"  DataTextField="archivo" />--%>

<asp:TemplateField>
<HeaderTemplate>
<asp:CheckBox ID="chb_habilitar"  runat="server" CssClass="lbl" Visible="true"/>

</HeaderTemplate>
<ItemTemplate>
<asp:CheckBox ID="chb_habilitar"  runat="server" CssClass="lbl" Visible="true"/>

</ItemTemplate>
</asp:TemplateField>

<asp:TemplateField>
<ItemTemplate>
<asp:HyperLink ID="archivo_link" runat="server" Text= '<%#eval("archivo") %>'  target="_blank" NavigateUrl='<%# eval("link") %>' Visible="true" ></asp:HyperLink>
</ItemTemplate>
</asp:TemplateField>



<asp:TemplateField>
<ItemTemplate>
<asp:TextBox ID="txt_editar_archivo" Text='<%#eval("nom_archivo") %>'  CssClass="txt" runat="server"  visible="true"  ></asp:TextBox>
</ItemTemplate> 
</asp:TemplateField> 

<asp:TemplateField>
<ItemTemplate>
<asp:TextBox ID="txt_editar"   CssClass="txt" runat="server"  visible="true"  ></asp:TextBox>
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
<asp:Label ID="lbl_id_db" runat="server" ></asp:Label>
</ItemTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
<ItemTemplate>
<asp:Label ID="lbl_id" runat="server" Text='<%#eval("archivo") %>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<%--<asp:TemplateField ShowHeader="False">
<ItemTemplate>--%>
<%--<asp:ImageButton ID="imbEditar" title="Editar" runat="server" CausesValidation="False" CommandName="Edit"   
ImageUrl="~/images/botones_dis/nuevoTAB.gif" Visible="true" />--%> 
<%--<asp:ImageButton ID="imbCancelar" title="Cancelar" runat="server" CausesValidation="False" CommandName="Cancel"   
ImageUrl="~/images/botones_dis/cancelar_edicion.jpg" Visible="false"  />--%> 
<%--</ItemTemplate>
</asp:TemplateField>--%>
<%--<asp:TemplateField>
<ItemTemplate>
<asp:ImageButton ID="imbGuardar" title="Guardar" runat="server" CausesValidation="False" CommandName="Save"   
ImageUrl="~/images/botones_dis/ort_aprobar_opt.jpg" Visible="true"/>  <!-- guardar -->
</ItemTemplate> 
</asp:TemplateField> --%>
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
<asp:ImageButton ID="imbEliminar" title="Eliminar" runat="server" CausesValidation="False" CommandName="Delete"
ImageUrl="~/images/iconos/eliminar.gif" Visible="true" />   <!-- eliminar -->
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
</td>
</tr>
<tr>
<td>
<asp:ImageButton ID="imbGuardar" title="Guardar" runat="server"
ImageUrl="~/images//botones/aceptar.png" />
<asp:ImageButton ID="imbDescargar" title="Descargar" runat="server"
ImageUrl="~/images//botones/descargar.png" />
</td>
</tr>
</table>
&nbsp;
<script type="text/javascript" src="../../js/documento/validArchivos.js"></script>
