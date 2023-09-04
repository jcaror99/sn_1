<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_historicoComentario.ascx.vb" Inherits="website.samm_componentes.controles_doc_pop_historicoComentario" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<table >
<tr>
<td>
<asp:Label ID="lbl_titulo" runat="server"></asp:Label>
</td>
</tr>
<tr>
<td>
<asp:GridView ID="grd_historico" runat="server" AutoGenerateColumns="false" >
<Columns>
<asp:BoundField DataField ="doc_documentocomentario_documentocomentario" HeaderText="res_metadata,doc_documentocomentario_documentocomentario" />
<asp:TemplateField  HeaderText="res_metadata,doc_documentocomentario_documentocomentario" >
<ItemTemplate>
<asp:Label ID="lbl_comentario" runat="server"  Text='<%# bind("comentario") %>' ></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField ="doc_documento_fecha_fh"  HeaderText="res_metadata,doc_documento_fecha_fh" />
<asp:BoundField DataField ="seg_usuario_nombre"  HeaderText="res_metadata,seg_usuario_nombre" />
<asp:BoundField DataField ="doc_documentocomentario_fecharecordar_fh"  HeaderText="res_metadata,doc_documentocomentario_fecharecordar_fh" />
<asp:BoundField DataField ="doc_documentocomentario_id_usuario"  HeaderText="res_metadata,doc_documentocomentario_id_usuario" />
<asp:TemplateField>
<ItemTemplate>
<asp:ImageButton  ID="img_relevante" runat="server" ImageUrl= "~/images/iconos/relevante.jpg" CommandName="relevante" CommandArgument='<%#eval("id") %>'  />
</ItemTemplate>
</asp:TemplateField>
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
</table>
