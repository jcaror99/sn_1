<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_comentariosAnt.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_inc_comentariosAnt" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_nuevo" runat="server" ImageUrl="../../images/botones/agregar.gif"
                OnClientClick="return false;" CausesValidation="false" />
                <bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.gif" />
              <bti:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif" CausesValidation ="false" />
                <bti:BotonImagen ID="bti_eliminar" runat="server" ImageUrl="../../images/botones/quitar.gif" CausesValidation ="false"  />
        </td>
    </tr>
    <tr>
        <td colspan="2">
           <asp:GridView ID="gri_motivos" runat ="server"  AllowPaging="true" AutoGenerateColumns="false" ShowHeader='true'   >
           <Columns >
           <asp:TemplateField Visible="false"    >
           <ItemTemplate>
           <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="false" > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField >
           <ItemTemplate>
           <asp:Label ID="lbl_documentoComentario" runat="server" Text='<%# bind("doc_documentocomentario_documentocomentario") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField>
           <ItemTemplate>
           <asp:Label ID="lbl_comentario" runat="server" Text='<%# bind("doc_documentocomentario_comentario") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField>
           <ItemTemplate>
           <asp:Label ID="lbl_fecha" runat="server" Text='<%# bind("doc_documento_fecha_fh") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField>
           <ItemTemplate>
           <asp:Label ID="lbl_usuario" runat="server" Text='<%# bind("seg_usuario_nombre") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField Visible="false" >
           <ItemTemplate>
           <asp:Label ID="lbl_idComentario" runat="server" Text='<%# bind("id_documentoComentario") %>' Visible="false"  > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField Visible="false" >
           <ItemTemplate>
           <asp:Label ID="lbl_idUsuario" runat="server" Text='<%# bind("id_usuario") %>' Visible="false"  > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField>
           <ItemTemplate>
                 <asp:ImageButton ID="imb_detallehistorico" runat ="server" ImageUrl ="../../images/iconos/doc_verHistorial.jpg" Visible="false" CommandName ='<%# eval("id")%>'  CommandArgument ='<%# eval("id_documentoComentario")%>' />
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField>
           <ItemTemplate>
           <asp:ImageButton ID="imb_detalleComentario" runat ="server" ImageUrl ="../../images/iconos/campanasRecordatorio.png" Visible="false"  />
           </ItemTemplate>
           </asp:TemplateField>
                <asp:TemplateField>
           <ItemTemplate>
           <asp:ImageButton ID="imb_detalleContacto" runat ="server" ImageUrl ="../../images/iconos/contacto.png" Visible="false"  />
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
<asp:LinkButton ID="lnk_comentarioPadre" runat="server" CssClass="lnk" ></asp:LinkButton>
<table>
<tr><td>
</td></tr> 
    <tr>
        <td>
        <asp:GridView ID="grd_padreComentario" runat ="server"  AutoGenerateColumns="false"  ShowHeader="false"  >
        <Columns>
        <asp:TemplateField >
        <ItemTemplate>
        <table>
        <tr>
        <td>
        <asp:LinkButton ID="lnk_comentarioAbuelo" runat="server" CssClass="lnk" CommandName ='<%# eval("id") %>' CommandArgument ='<%# eval("padre") %>'  Text ='<%# eval("item") %>' ></asp:LinkButton>
        <asp:Label id="lbl_indexG" runat="server" Visible=false ></asp:Label>
        </td>
        </tr>
        <tr>
         <td>
        <asp:GridView ID="gri_motivospadre" runat="server" UseAccessibleHeader ="true" AllowSorting="true" AllowPaging="true"  AutoGenerateColumns="false"  OnRowCommand ="gri_motivospadre_RowCommand"  OnPageIndexChanging="s_gri_motivospadre_PageIndexChanging"  >
            <Columns>
           <asp:TemplateField Visible="false"     >
           <ItemTemplate>
           <asp:Label ID="lbl_idPadre" runat="server" Text='<%# eval("id") %>' Visible="false" > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField>
           <ItemTemplate>
           <asp:Label ID="lbl_documentoComentarioPadre" runat="server" Text='<%# bind("doc_documentocomentario_documentocomentario") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField>
           <ItemTemplate>
           <asp:Label ID="lbl_comentarioPadre" runat="server" Text='<%# bind("doc_documentocomentario_comentario") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField>
           <ItemTemplate>
           <asp:Label ID="lbl_fechaPadre" runat="server" Text='<%# bind("doc_documento_fecha_fh") %>'  > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField>
           <ItemTemplate>
           <asp:Label ID="lbl_usuarioPadre" runat="server" Text='<%# bind("seg_usuario_nombre") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField Visible="false" >
           <ItemTemplate>
           <asp:Label ID="lbl_idComentarioPadre" runat="server" Text='<%# bind("id_documentoComentario") %>' Visible="false"  > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
              <asp:TemplateField Visible="false" >
           <ItemTemplate>
           <asp:Label ID="lbl_idUsuarioPadre" runat="server" Text='<%# bind("id_usuario") %>' Visible="false"  > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField>
           <ItemTemplate>
           <asp:ImageButton ID="imb_detallehistoricoPadre" runat ="server" ImageUrl ="../../images/iconos/doc_verHistorial.jpg" Visible="false"  CommandName ='<%# eval("id")%>'  CommandArgument ='<%# eval("id_documentoComentario")%>'  />
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField>
           <ItemTemplate>
           <asp:ImageButton ID="imb_detalleComentarioPadre" runat ="server" ImageUrl ="../../images/iconos/campanasRecordatorio.png" Visible="false"   />
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField>
           <ItemTemplate>
           <asp:ImageButton ID="imb_detalleContactoPadre" runat ="server" ImageUrl ="../../images/iconos/contacto.png" Visible="false"  />
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
<asp:LinkButton ID="lnk_cotsHermanas" runat="server" CssClass="lnk" ></asp:LinkButton>
<table>
<tr><td>
</td></tr> 
    <tr>
        <td>
        <asp:GridView ID="grd_cotsHermanas" runat ="server"  AutoGenerateColumns="false"  ShowHeader="false"  >
        <Columns>
        <asp:TemplateField >
        <ItemTemplate>
        <table>
        <tr>
        <td>
        <asp:LinkButton ID="lnk_comentarioAbuelo" runat="server" CssClass="lnk" CommandName ='<%# eval("id") %>' CommandArgument ='<%# eval("padre") %>'  Text ='<%# eval("item") %>'  OnClientClick='return false;' ></asp:LinkButton>
        <asp:Label id="lbl_indexG" runat="server" Visible=false ></asp:Label>
        </td>
        </tr>
        <tr>
         <td>
        <asp:GridView ID="gri_motivosCOT" runat="server" UseAccessibleHeader ="true" AllowSorting="true" AllowPaging="true"  AutoGenerateColumns="false" OnPageIndexChanging="s_gri_motivosCOT_PageIndexChanging"  >
            <Columns>
           <asp:TemplateField Visible="false"     >
           <ItemTemplate>
           <asp:Label ID="lbl_idPadre" runat="server" Text='<%# eval("id") %>' Visible="false" > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField>
           <ItemTemplate>
           <asp:Label ID="lbl_documentoComentarioPadre" runat="server" Text='<%# bind("doc_documentocomentario_documentocomentario") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField>
           <ItemTemplate>
           <asp:Label ID="lbl_comentarioPadre" runat="server" Text='<%# bind("comentario") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField>
           <ItemTemplate>
           <asp:Label ID="lbl_fechaPadre" runat="server" Text='<%# bind("doc_documento_fecha_fh") %>'  > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField>
           <ItemTemplate>
           <asp:Label ID="lbl_usuarioPadre" runat="server" Text='<%# bind("seg_usuario_nombre") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField Visible="false" >
           <ItemTemplate>
           <asp:Label ID="lbl_idComentarioPadre" runat="server" Text='<%# bind("id_documentoComentario") %>' Visible="false"  > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
              <asp:TemplateField Visible="false" >
           <ItemTemplate>
           <asp:Label ID="lbl_idUsuarioPadre" runat="server" Text='<%# bind("id_usuario") %>' Visible="false"  > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField>
           <ItemTemplate>
           <asp:ImageButton ID="imb_detallehistoricoPadre" runat ="server" ImageUrl ="../../images/iconos/doc_verHistorial.jpg" Visible="false"  CommandName ='<%# eval("id")%>'  CommandArgument ='<%# eval("id_documentoComentario")%>'  />
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField>
           <ItemTemplate>
           <asp:ImageButton ID="imb_detalleComentarioPadre" runat ="server" ImageUrl ="../../images/iconos/campanasRecordatorio.png" Visible="false"   />
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField>
           <ItemTemplate>
           <asp:ImageButton ID="imb_detalleContactoPadre" runat ="server" ImageUrl ="../../images/iconos/contacto.png" Visible="false"  />
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