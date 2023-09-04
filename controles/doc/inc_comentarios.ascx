<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_comentarios.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_inc_comentarios" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/adjuntos.ascx" TagName="adjuntos"
TagPrefix="uc4" %>
<table>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_nuevo" runat="server" ImageUrl="../../images/botones/agregar.gif"
                OnClientClick="return false;" CausesValidation="false" />
<%--            <bti:BotonImagen ID="bti_nuevaConver" runat="server" ImageUrl="../../images/botones/nuevoHilo.gif"
               ToolTip="Nueva conversación" OnClientClick="return false;" CausesValidation="false" />--%>
              <bti:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif" CausesValidation ="false" />
                <bti:BotonImagen ID="bti_eliminar" runat="server" ImageUrl="../../images/botones/quitar.gif" CausesValidation ="false" Visible =  "false"  />
<%--                <bti:BotonImagen ID="bti_eliminarConver" runat="server" ImageUrl="../../images/botones/quitar.gif" CausesValidation ="false" Visible =  "false" />
--%>       
                <bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.gif" />
 </td>
    </tr>
    <tr>
        <td colspan="2">
           <asp:GridView ID="gri_motivos" runat ="server"  AllowPaging="false" AutoGenerateColumns="false" ShowHeader='true'   >
           <Columns >
           <asp:TemplateField Visible="false"    >
           <ItemTemplate>
           <asp:Label ID="lbl_cerrada" runat="server" Text='<%# eval("cerrada") %>' Visible="false" ></asp:Label>
           <asp:Label ID="lbl_idDocumentoComentarios" runat="server" Text='<%# eval("id_documentosComentarios") %>' Visible="false" ></asp:Label>
           <asp:Label ID="lbl_respuesta" runat="server" Text='<%# eval("conRespuesta") %>' Visible="false" > </asp:Label>
           <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="false" > </asp:Label>
           <asp:Label ID="lbl_idUsuarioOriginal" runat="server" Text='<%# eval("id_usuarioOriginal") %>' Visible="false" > </asp:Label>
           <asp:Label ID="lbl_idUsuarioRecordatorio" runat="server" Text='<%# eval("id_usuario") %>' Visible="false" > </asp:Label>
           <asp:Label ID="lbl_relevante" runat="server" Text='<%# eval("relevante") %>' Visible="false" > </asp:Label>
           <asp:Label ID="lbl_fechaRecordar" runat="server" Text='<%# eval("fechaRecordar_fh") %>' Visible="false"></asp:Label>
            </ItemTemplate>
           </asp:TemplateField>  
           
            <asp:TemplateField HeaderText="res_campogrilla,doc_documentocomentario_documentocomentario" >
           <ItemTemplate>
           <asp:Label ID="lbl_documentoComentario" runat="server" Text='<%# bind("doc_documentocomentario_documentocomentario") %>' 
           CssClass = "lbl_etiquetaInformacion"  Visible='<%# IIF(eval("id_documentosComentarios")=0 ,true,false) %>'> </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
           
            <asp:TemplateField HeaderText="res_campogrilla,doc_documentocomentario_comentario">
           <ItemTemplate>
           <asp:Label ID="lbl_comentario" runat="server" Text='<%# bind("doc_documentocomentario_comentario") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
           
            <asp:TemplateField HeaderText="res_campogrilla,doc_documento_fecha_fh">
           <ItemTemplate>
           <asp:Label ID="lbl_fecha" runat="server" Text='<%# bind("doc_documento_fecha_fh") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
           
            <asp:TemplateField HeaderText="res_campogrilla,seg_usuario_nombre">
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
                 <asp:ImageButton ID="imb_detallehistorico" ToolTip="Historico" runat ="server" ImageUrl ="../../images/iconos/doc_verHistorial.jpg" Visible="false" CommandName ='<%# eval("id")%>'  CommandArgument ='<%# eval("id_documentoComentario")%>' />
           </ItemTemplate>
           </asp:TemplateField>
           
           <asp:TemplateField>
           <ItemTemplate>
           <asp:Panel runat="server" ID="pnl_campanas">
               <asp:ImageButton ID="imb_detalleComentarioNoVencido"  runat ="server" ImageUrl ="../../images/iconos/campanaNaranja.gif" Visible="false"  />
               <asp:ImageButton ID="imb_detalleComentarioVencido" runat ="server" ImageUrl ="../../images/iconos/campanaRoja.gif" Visible="false"  />  
               <asp:ImageButton ID="imb_detalleComentarioOtroNoVencido"  runat ="server" ImageUrl ="../../images/iconos/campanaNaranjaCirculo.png" Visible="false"  /> 
               <asp:ImageButton ID="imb_detalleComentarioOtroVencido"  runat ="server" ImageUrl ="../../images/iconos/campanaRojaCirculo.png" Visible="false"  />   
               <asp:ImageButton ID="imb_detalleComentarioDifNoVencido"  runat ="server" ImageUrl ="../../images/iconos/campanaNaranja.png" Visible="false"  /> 
               <asp:ImageButton ID="imb_detalleComentarioDifVencido"  runat ="server" ImageUrl ="../../images/iconos/campanaRoja.png" Visible="false"  />   
               <asp:ImageButton ID="imb_detalleComentarioRespondido"  runat ="server" ImageUrl ="../../images/iconos/campanaGris.png" Visible="false"  />  
               <asp:ImageButton ID="imb_detalleComentariosVenRecordatorioOTRP"  runat ="server" ImageUrl ="../../images/iconos/redCircle.gif" Visible="false" Height="20px" Width="20px"/>   
               <asp:ImageButton ID="imb_detalleComentariosNoVenRecordatorioOTRP"  runat ="server" ImageUrl ="../../images/iconos/orangeCircle.gif" Visible="false" Height="20px" Width="20px" /> 
           </asp:Panel>
           </ItemTemplate>
           </asp:TemplateField>
           
           <asp:TemplateField>
           <ItemTemplate>
           <asp:ImageButton ID="imb_detalleContacto" ToolTip="Contacto" runat ="server" ImageUrl ="../../images/iconos/contacto.png" Visible="false"  />
           </ItemTemplate>
           </asp:TemplateField>
                  
           <asp:TemplateField>
           <ItemTemplate>
           <asp:ImageButton ID="imb_Responder" ToolTip="Responder" runat ="server" ImageUrl ="../../images/iconos/report.gif" Visible="false" 
           CommandName = "responder" CommandArgument = '<% # eval("id") %>' />
           </ItemTemplate>
           </asp:TemplateField>
           
           <asp:TemplateField>
           <ItemTemplate>
<%--           <asp:ImageButton ID="imb_Archivos" ToolTip="Archivos" runat ="server" ImageUrl ="../../images/iconos/adjuntos.png"  
           CommandName = "responder" Visible="false"  CommandArgument = '<% # eval("id") %>' />--%>
            <uc4:adjuntos
        ID="adjuntos" runat="server" />
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
          <tr>
        <td colspan='3' align='center'>
        <asp:Label ID="lbl_mensajeComentario" runat="server" CssClass="lbl_mensaje"></asp:Label>
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
           <asp:Label ID="lbl_idDocumentoComentarios" runat="server" Text='<%# eval("id_documentosComentarios") %>' Visible="false" ></asp:Label>
           <asp:Label ID="lbl_idPadre" runat="server" Text='<%# eval("id") %>' Visible="false" > </asp:Label>
           <asp:Label ID="lbl_respuesta" runat="server" Text='<%# eval("conRespuesta") %>' Visible="false" > </asp:Label>
         <asp:Label ID="lbl_cerrada" runat="server" Text='<%# eval("cerrada") %>' Visible="false" ></asp:Label>
           <asp:Label ID="Label1" runat="server" Text='<%# eval("id_documentosComentarios") %>' Visible="false" ></asp:Label>
           <asp:Label ID="Label2" runat="server" Text='<%# eval("conRespuesta") %>' Visible="false" > </asp:Label>
           <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="false" > </asp:Label>
           <asp:Label ID="lbl_idUsuarioOriginal" runat="server" Text='<%# eval("id_usuarioOriginal") %>' Visible="false" > </asp:Label>
           <asp:Label ID="lbl_idUsuarioRecordatorio" runat="server" Text='<%# eval("id_usuario") %>' Visible="false" > </asp:Label>
           <asp:Label ID="lbl_relevante" runat="server" Text='<%# eval("relevante") %>' Visible="false" > </asp:Label>
           <asp:Label ID="lbl_fechaRecordar" runat="server" Text='<%# eval("fechaRecordar_fh") %>' Visible="false"></asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="res_campogrilla,doc_documentocomentario_documentocomentario">
           <ItemTemplate>
           <asp:Label ID="lbl_documentoComentarioPadre" runat="server" Text='<%# bind("doc_documentocomentario_documentocomentario") %>'
           Visible='<%# IIF(eval("id_documentosComentarios")=0 ,true,false) %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="res_campogrilla,doc_documentocomentario_comentario">
           <ItemTemplate>
           <asp:Label ID="lbl_comentarioPadre" runat="server" Text='<%# bind("doc_documentocomentario_comentario") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="res_campogrilla,doc_documento_fecha_fh">
           <ItemTemplate>
           <asp:Label ID="lbl_fechaPadre" runat="server" Text='<%# bind("doc_documento_fecha_fh") %>'  > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="res_campogrilla,seg_usuario_nombre">
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
           <asp:ImageButton ID="imb_detalleComentarioNoVencidoPadre"  runat ="server" ImageUrl ="../../images/iconos/campanaNaranja.gif" Visible="false"  />
           <asp:ImageButton ID="imb_detalleComentarioVencidoPadre" runat ="server" ImageUrl ="../../images/iconos/campanaRoja.gif" Visible="false"  />  
           <asp:ImageButton ID="imb_detalleComentarioOtroNoVencidoPadre"  runat ="server" ImageUrl ="../../images/iconos/campanaNaranjaCirculo.png" Visible="false"  /> 
           <asp:ImageButton ID="imb_detalleComentarioOtroVencidoPadre"  runat ="server" ImageUrl ="../../images/iconos/campanaRojaCirculo.png" Visible="false"  />   
           <asp:ImageButton ID="imb_detalleComentarioDifNoVencidoPadre"  runat ="server" ImageUrl ="../../images/iconos/campanaNaranja.png" Visible="false"  /> 
           <asp:ImageButton ID="imb_detalleComentarioDifVencidoPadre"  runat ="server" ImageUrl ="../../images/iconos/campanaRoja.png" Visible="false"  />   
           <asp:ImageButton ID="imb_detalleComentarioRespondidoPadre"  runat ="server" ImageUrl ="../../images/iconos/campanaGris.png" Visible="false"  />  
           <asp:ImageButton ID="imb_detalleComentariosVenRecordatorioOTRPadre"  runat ="server" ImageUrl ="../../images/iconos/redCircle.gif" Visible="false" Height="20px" Width="20px" />   
           <asp:ImageButton ID="imb_detalleComentariosNoVenRecordatorioOTRPadre"  runat ="server" ImageUrl ="../../images/iconos/orangeCircle.gif" Visible="false" Height="20px" Width="20px"  /> 
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField>
           <ItemTemplate>
           <asp:ImageButton ID="imb_detalleContactoPadre" runat ="server" ImageUrl ="../../images/iconos/contacto.png" Visible="false"  />
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField>
           <ItemTemplate>
           <asp:ImageButton ID="imb_Responder" ToolTip="Responder" runat ="server" ImageUrl ="../../images/iconos/report.gif" Visible="false" 
           CommandName = "responder" CommandArgument = '<% # eval("id") %>' />
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField>
           <ItemTemplate>
            <uc4:adjuntos
            ID="adjuntos" runat="server" />
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

<%--<table>
 <tr>
        <td colspan="2">
           <asp:GridView ID="gri_conversacion" runat ="server"  AllowPaging="false" AutoGenerateColumns="false" ShowHeader='true'  >
           <Columns >
           <asp:TemplateField Visible="false"    >
           <ItemTemplate>
           <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="false" > </asp:Label>
           <asp:Label ID="lbl_respuesta" runat="server" Text='<%# eval("conRespuesta") %>' Visible="false" > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
                   
           <asp:TemplateField HeaderText="res_etiquetas,doc_documentocomentario_documentocomentario">
           <ItemTemplate>
           <asp:Label ID="lbl_documentoTema" runat="server" Text='<%# eval("doc_documentocomentario_documentocomentario") %>'  
          CssClass = "lbl_mensaje"  Visible='<%# IIF(eval("id_documentosComentarios")=0 ,true,false) %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
           
            <asp:TemplateField  HeaderText="res_etiquetas,doc_documentocomentario_comentario">
           <ItemTemplate>
           <asp:Label ID="lbl_conversacion" runat="server" Text='<%# eval("doc_documentocomentario_comentario") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
           
            <asp:TemplateField HeaderText="res_etiquetas,doc_documento_fecha_fh">
           <ItemTemplate>
           <asp:Label ID="lbl_fecha" runat="server" Text='<%# eval("doc_documento_fecha_fh") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
           
            <asp:TemplateField HeaderText="res_etiquetas,seg_usuario_nombre">
           <ItemTemplate>
           <asp:Label ID="lbl_usuario" runat="server" Text='<%# eval("seg_usuario_nombre") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
           
            <asp:TemplateField Visible="false" >
           <ItemTemplate>
           <asp:Label ID="lbl_idComentario" runat="server" Text='<%# eval("id_documentoComentario") %>' Visible="false"  > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
           
           <asp:TemplateField Visible="false" >
           <ItemTemplate>
           <asp:Label ID="lbl_idUsuario" runat="server" Text='<%# eval("id_usuario") %>' Visible="false"  > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
           
           
           <asp:TemplateField>
           <ItemTemplate>
           <asp:ImageButton ID="imb_detalleConversacion" runat ="server" ImageUrl ="../../images/iconos/campanasRecordatorio.png" Visible="false"  />
           </ItemTemplate>
           </asp:TemplateField>
           
           <asp:TemplateField>
           <ItemTemplate>
           <asp:ImageButton ID="imb_detalleResponder" ToolTip="Responder" runat ="server" ImageUrl ="../../images/iconos/report.gif" Visible="false" 
           CommandName = "responder" CommandArgument = '<% # eval("id") %>' />
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
    
        <tr>
        <td colspan='3' align='center'>
        <asp:Label ID="lbl_mensajeConversacion" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
        </tr>

</table>
--%>