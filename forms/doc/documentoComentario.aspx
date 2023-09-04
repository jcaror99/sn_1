<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master"
    CodeBehind="documentoComentario.aspx.vb" Inherits="website.forms_doc_documentoComentario" %>

<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/taxonomia.ascx" TagName="taxonomia" TagPrefix="tax" %>

<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="uc6" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc4" %>
<%@ Register Src="~/controles/general/calendario4meses.ascx" TagName="calendario4meses"
    TagPrefix="uc5" %>
<%@ Register Src='~/controles/general/tabs.ascx' TagName='tabs' TagPrefix='tab' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzadaMultiple.ascx' TagName='busquedaAvanzadaMultiple'
    TagPrefix='busmul' %>
<%@ Register Src="~/controles/general/slider.ascx" TagName="slider" TagPrefix="sld" %>
<%@ Register Src="~/controles/general/adjuntos.ascx" TagName="adjuntos"
TagPrefix="uc4" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<asp:Content ID='content5' runat='server' ContentPlaceHolderID='cph_tituloPagina'>
    <asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo'></asp:Label>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_general" runat="Server">
<script type="text/javascript" src="../../js/slider/controlslider.js"></script>
<script type="text/javascript" src="../../js/Interfaz/comentarios.js"></script>
    <table>
        <tr>
           <td align="center" valign="top">
                <uc5:calendario4meses ID="Calendario4meses1" runat="server" a_bol_mostrarFestivos="true"
                    Visible="True" />
            </td>
            <td valign="top">
                <uc4:popup ID="popInterno" runat="server" a_bol_mostrarSAMM="true" />
                <table style="width: 100%; z-index: 0;">
                <tr>
               
                </tr>
                    <tr id="tr_contenidoBusqueda">
                        
                        <td><div ID="contenidoBusqueda" class="contenidoBusqueda" runat="server">
                            <asp:Panel ID="Panel2" runat="server" CssClass="pnl" GroupingText="<%$Resources:res_etiquetas,buscar %>" >
                                   <table id="tbl_busqueda" runat="server">
                                    <tr>
                                        <td>
                                            <table>
                                              <tr>
                                                    <td class='td_lblFormulario'>
                                                        <table cellpadding='0' cellspacing='0' align="right">
                                                            <tr>
                                                                <td rowspan="3">
                                                                <asp:TextBox ID='txt_prefijo' runat='server' MaxLength='10' CssClass='txt_formulario'
                                                                BorderWidth="0px" BackColor="transparent" Font-Bold="true" Width="50px"></asp:TextBox><asp:Label
                                                                ID="lbl_separador" runat="server" Text="-"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                <asp:Label ID='lbl_documento_numero_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align='right'>
                                                                <asp:Label ID='lbl_documento_numero_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td class='td_controlesFormulario'>
                                                        <table cellpadding='0' cellspacing='0'>
                                                            <tr>
                                                                <td align='left'>
                                                                    <asp:TextBox ID='txt_documento_numero' runat='server' CssClass='txt_entero_bus'></asp:TextBox><act:filteredtextboxextender
                                                                    id='ftb_documento_numero' runat='server' targetcontrolid='txt_documento_numero'
                                                                    filtertype='Numbers' />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align='left'>
                                                                    <asp:TextBox ID='txt_documento_numero_bus' runat='server' CssClass='txt_entero_bus'></asp:TextBox><act:filteredtextboxextender
                                                                    id='ftb_documento_numero_bus' runat='server' targetcontrolid='txt_documento_numero_bus'
                                                                    filtertype='Numbers' />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                 </tr>
                                               <tr>
                                                    <td class="td_lblFormulario">
                                                        <asp:Label ID="lbl_tipoDocumento" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,doc_tipodocumento_tipodocumento %>"></asp:Label>
                                                    </td>
                                                    <td class="td_controlesFormulario">
                                                        <bus:busquedaAvanzada ID="bus_tipodocumento" runat="server" a_str_tabla="doc_tipoDocumento"
                                                            a_bol_postBack="true" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="td_lblFormulario">
                                                        <asp:Label ID="Label3" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,doc_subtipodocumento_subtipodocumentos %>"></asp:Label>
                                                    </td>
                                                    <td class="td_controlesFormulario">
                                                        <bus:busquedaAvanzada ID="bus_subtipoDocumento" runat="server" a_str_tabla="doc_subtipoDocumento" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="td_lblFormulario">
                                                        <asp:Label ID="Label2" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,doc_estadotipodocumento_estadotipodocumento %>"></asp:Label>
                                                    </td>
                                                    <td class="td_controlesFormulario">
                                                        <bus:busquedaAvanzada ID="bus_estadoTipoDocumento" runat="server" a_str_tabla="doc_estadoTipoDocumento" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="td_lblFormulario">
                                                        <asp:Label ID="Label1" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,ter_tercero_tercero %>"></asp:Label>
                                                    </td>
                                                    <td class="td_controlesFormulario">
                                                        <bus:busquedaAvanzada ID="bus_tercero" runat="server" a_str_tabla="ter_tercero" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class='td_lblFormulario'>
                                                        <asp:Label ID="lbl_reporte" runat="server" Text='<%$Resources:res_metadata,doc_documentocomentario_cerrada %>'
                                                            CssClass="lbl"></asp:Label>
                                                    </td>
                                                    <td class='td_controlesFormulario'>
                                                        <asp:RadioButtonList ID="rbl_cerradas" runat="server" AutoPostBack="false" CssClass="rbl_bus"
                                                            RepeatLayout="Flow" RepeatDirection="Horizontal">
                                                            <asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
                                                            <asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
                                                            <asp:ListItem Value='2' Text='<%$ Resources:res_controles,todos %>'></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td class='td_lblFormulario'>
                                                        <asp:Label ID="lbl_respuesta" runat="server" Text='<%$Resources:res_metadata,doc_documentocomentario_conrespuesta %>'
                                                            CssClass="lbl"></asp:Label>
                                                    </td>
                                                    <td class='td_controlesFormulario'>
                                                        <asp:RadioButtonList ID="rbl_conrespuesta" runat="server" AutoPostBack="false" CssClass="rbl_bus"
                                                            RepeatLayout="Flow" RepeatDirection="Horizontal">
                                                            <asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
                                                            <asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class='td_lblFormulario'>
                                                        <asp:Label ID="lbl_relevante" runat="server" CssClass="lbl" Visible = "false"></asp:Label>
                                                    </td>
                                                    <td class='td_controlesFormulario'>
                                                        <asp:RadioButtonList ID="rbl_relevante" runat="server" AutoPostBack="false" CssClass="rbl_bus"
                                                            RepeatLayout="Flow" RepeatDirection="Horizontal" Visible = "false">
                                                            <asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
                                                            <asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td>
                                            <table>
                                                 <tr>
                                                    <td class="td_lblFormulario">
                                                        <asp:Label ID="Label6" runat="server" CssClass="lbl" Text="<%$Resources:res_etiquetas_doc,usuarioCreo %>"></asp:Label>
                                                    </td>
                                                    <td class="td_controlesFormulario">
                                                        <bus:busquedaAvanzada  ID="BusquedaAvanzada1" runat="server" a_str_tabla="seg_usuario"
                                                            a_str_filtros="" />
                                                            
                                                         
                                                </td>

                                                   

                                                </tr>
                                                <tr>
                                                    <td class="td_lblFormulario">
                                                        <asp:Label ID="lbl_usuario" runat="server" CssClass="lbl" Text="<%$Resources:res_campoGrilla,doc_documentocomentario_id_usuario %>"></asp:Label>
                                                    </td>
                                                    <td  >
                                                        <bus:busquedaAvanzada ID="bus_usuario" runat="server" a_str_tabla="seg_usuario" a_str_filtros="" />

                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td class="td_lblFormulario">
                                                        <asp:Label ID="Label5" runat="server" CssClass="lbl" Text="<%$Resources:res_nombrecolumna,fechacreacion %>"></asp:Label>
                                                    </td>
                                                    <td class="td_controlesFormulario">
                                                        <table>
                                                            <tr>
                                                                <td>
                                                                    <fec:fechaAvanzada ID="fec_creacionIni" runat="server" a_str_prefijo="fh" a_bln_obligatorio="false"
                                                                        a_str_grupoValidacion="filtro" />
                                                                </td>
                                                                <td>
                                                                    -
                                                                </td>
                                                                <td>
                                                                    <fec:fechaAvanzada ID="fec_creacionFin" runat="server" a_str_prefijo="fh" a_bln_obligatorio="false"
                                                                        a_str_grupoValidacion="filtro" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="td_lblFormulario">
                                                        <asp:Label ID="Label4" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,doc_documentocomentario_fecharecordar_fh %>"></asp:Label>
                                                    </td>
                                                    <td class="td_controlesFormulario">
                                                        <table>
                                                            <tr>
                                                                <td>
                                                                    <fec:fechaAvanzada ID="fec_fechaInicial" runat="server" a_str_prefijo="fh" a_bln_obligatorio="false"
                                                                        a_str_grupoValidacion="filtro" />
                                                                </td>
                                                                <td>
                                                                    -
                                                                </td>
                                                                <td>
                                                                    <fec:fechaAvanzada ID="fec_fechaFinal" runat="server" a_str_prefijo="fh" a_bln_obligatorio="false"
                                                                        a_str_grupoValidacion="filtro" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="td_lblFormulario">
                                                    </td>
                                                    <td class="td_controlesFormulario">
                                                        <bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="~/images/botones/aceptar.jpg"
                                                            ValidationGroup="filtro" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </div>
                        </td>
                        
                    </tr>
                        <tr>
                 <td>
                 
                 <asp:Label ID="lbl_CantidadTotalC" CssClass="lbl" Font-Bold="True" Font-Underline="True" runat="server"></asp:Label>
                 <asp:Label ID="lbl_CantidadTotalC2" CssClass="lbl" runat="server"></asp:Label>
                 <asp:Label ID="lbl_CantidadTotalC3" CssClass="lbl" runat="server" Font-Bold="True" Font-Underline="True"></asp:Label>
                 <asp:Label ID="lbl_CantidadTotalC4" CssClass="lbl" runat="server"></asp:Label>
<%--                <bti:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif" CausesValidation ="false" />
                <bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.gif" />
                <bti:BotonImagen ID="bti_eliminar" runat="server" ImageUrl="../../images/botones/quitar.gif" CausesValidation ="false"  />--%>
                 </td>
            </tr>
            
            
                    <tr>
                        <td>
                            <table class="tbl_marcoFormulario responsive">
                                <tr>
                                    <td>
                                        <asp:Label ID="lbl_fechaSel" runat="server" CssClass="lbl"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td >
 <asp:GridView ID="grd_seguimientos" runat ="server"  AllowPaging="false" AutoGenerateColumns="false" ShowHeader='false' CssClass="gridview" >
                               <Columns>
                                                     
                                                     
                       <asp:TemplateField Visible="false"    >
                       <ItemTemplate>
                       <asp:Label ID="lbl_cerrada" runat="server" Text='<%# eval("cerrada") %>' Visible="false" ></asp:Label>
                       <asp:Label ID="lbl_idDocumentoComentarioV" runat="server" Text='<%# eval("id_documentoComentario") %>' Visible="false" ></asp:Label>
                       <asp:Label ID="lbl_idDocumentoComentarios" runat="server" Text='<%# eval("id_documentosComentarios") %>' Visible="false" ></asp:Label>
                       <asp:Label ID="lbl_respuesta" runat="server" Text='<%# eval("conRespuesta") %>' Visible="false" > </asp:Label>
                       <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="false" > </asp:Label>
                       <asp:Label ID="lbl_idUsuarioOriginal" runat="server" Text='<%# eval("id_usuarioOriginal") %>' Visible="false" > </asp:Label>
                       <asp:Label ID="lbl_idUsuarioRecordatorio" runat="server" Text='<%# eval("id_usuario") %>' Visible="false" > </asp:Label>
                       <asp:Label ID="lbl_relevante" runat="server" Text='<%# eval("relevante") %>' Visible="false" > </asp:Label>
                       <asp:Label ID="lbl_seg_usuario_nombre" runat="server" Text='<%# Eval ("seg_usuario_nombre")%>' Visible="false"></asp:Label>
                       <asp:Label ID="lbl_fechaCreacion" runat="server" Text='<%# Eval ("doc_documento_fecha_fh")%>' Visible="false"></asp:Label>
                       <asp:Label ID="lbl_fechaRecordar" runat="server" Text='<%# eval("fecha") %>' Visible="false"></asp:Label>
                       <asp:Label ID="lbl_finalizados" runat="server" Text='<%# eval("finalizado") %>' Visible="false"></asp:Label>
                       </ItemTemplate>
                       </asp:TemplateField>  
                          
                       
                       <asp:TemplateField>
                       <ItemTemplate>        
                       <div runat="server"  id ="div_principalTitulo" class="titulo_principal" Visible='<%# IIF(eval("id_documentoComentario")=0 ,true,false) %>'>
                       <div class="navbar">
             <%--          <div class="button">
                       <i class="fa fa-comments"></i>
                       <span id = "spn_cantidad" class="button__badge" runat="server" > <%# eval("cantidadComentarios") %> </span>
                       </div>--%>
                       <div id="div_masYmenos" runat="server" class="right">
                       <bti:BotonImagen ID="bti_mas" runat="server"   style='height:20px; width:20px' ImageUrl="../../images/iconos/mas.png" CausesValidation ="false" CommandArgument ='<%# eval("id")%>'  CommandName  ='masComentario' />
                       
                       <bti:BotonImagen ID="bti_menos" runat="server" style='height:20px; width:20px' ImageUrl="../../images/iconos/menos.png" Visible = "false" CausesValidation ="false" CommandArgument ='<%# eval("id")%>'  CommandName  ='menosComentario'/>
                       </div>
                       <asp:HyperLink ID="hpr_doc" runat="server" style='color:#f5f5dc' NavigateUrl='<%# "../../forms/doc/doc_documento.aspx?id=" & Eval ("id_doc")%>'
                       Text='<%# Eval ("doc")%>' Target="_blank" cssClass="lbl_titulo"></asp:HyperLink> 
                                               
                       <asp:HyperLink ID="hpr_cliente" runat="server" style='color:#f5f5dc' NavigateUrl='<%# "../../forms/ter/ter_tercero.aspx?id=" & Eval ("id_cliente")%>'
                       Text='<%# Eval ("cliente")%>' Target="_blank" cssClass="lbl_titulo" ></asp:HyperLink>  
                       
                       <div runat="server"  id ="div_contenido" class="lbl"  >
                      
                       <asp:Image ID="img_esq" runat="server" ImageUrl="../../images/TreeLineImages/l.gif" Visible='<%# (Eval ("docPadre")<>"") %>' />
                       <asp:HyperLink ID="hpr_padre" runat="server" NavigateUrl='<%# "../../forms/doc/doc_documento.aspx?id=" & Eval ("id_docPadre")%>'
                       Text='<%# Eval ("docPadre")%>' Target="_blank" style="vertical-align:top; color:White"></asp:HyperLink>
                     
                       </div>
                       
                       <asp:Label ID="lbl_documentoComentario" runat="server" Text='<%# bind("doc_documentocomentario_documentocomentario") %>' 
                       cssClass="lbl_titulo" > </asp:Label>       

                       </div>     
                       </div>
                       <div id="div_contenidoGeneral" runat="server" >
                       <div id="div_botones" runat="server" class="right">
                           <asp:ImageButton ID="imb_detalleComentarioRespondido"  runat ="server" style='height:20px; width:20px' ImageUrl ="../../images/iconos/campanaGris.png" Visible="false"  />
                       <asp:ImageButton ID="imb_detalleComentarioNoVencido"  runat ="server" style='height:20px; width:20px' ImageUrl ="../../images/iconos/campanaNaranja.gif" Visible="false"  />
                       <asp:ImageButton ID="imb_detalleComentarioVencido" runat ="server" style='height:20px; width:20px' ImageUrl ="../../images/iconos/campanaRoja.gif" Visible="false"  />  
                       <asp:ImageButton ID="imb_detalleComentarioOtroNoVencido"  runat ="server" style='height:20px; width:20px' ImageUrl ="../../images/iconos/campanaNaranjaCirculo.png" Visible="false"  /> 
                       <asp:ImageButton ID="imb_detalleComentarioOtroVencido"  runat ="server" style='height:20px; width:20px' ImageUrl ="../../images/iconos/campanaRojaCirculo.png" Visible="false"  />   
                       <asp:ImageButton ID="imb_detalleComentarioDifNoVencido"  runat ="server" style='height:20px; width:20px' ImageUrl ="../../images/iconos/campanaNaranja.png" Visible="false"  /> 
                       <asp:ImageButton ID="imb_detalleComentarioDifVencido"  runat ="server" style='height:20px; width:20px' ImageUrl ="../../images/iconos/campanaRoja.png" Visible="false"  /> 
                       <%--<asp:ImageButton ID="imb_detalleUsuarioyFecha" visible ="false" runat ="server" style='height:16px; width:16px'  ImageUrl ="../../images/botones/info-contacto.png" />--%>
                      
                            <asp:ImageButton ID="imb_detallehistoricos" ToolTip="Historico" runat ="server" style='height:16px; width:16px' ImageUrl ="../../images/iconos/historico.png" Visible="false" CommandName ='<%# eval("id")%>'  CommandArgument ='<%# eval("id_documentosComentarios")%>' />
                            <asp:ImageButton ID="imb_detalleContacto"  ToolTip="Contacto" runat ="server" style='height:16px; width:16px' ImageUrl ="../../images/iconos/contacto_2.png" Visible="false"  />
                            <asp:ImageButton ID="imb_Responder" ToolTip="Responder" runat ="server" style='height:16px; width:16px' ImageUrl ="../../images/iconos/responder.png" Visible="false" 
                            CommandName = "responder" CommandArgument = '<% # eval("id") %>' />
                            <uc4:adjuntos ID="adjuntos" runat="server" visible ="false"/>
                            <%--<bti:BotonImagen ID="bti_editar" runat="server" visible ="false" style='height:16px; width:16px' ImageUrl="../../images/botones/editar.png" CausesValidation ="false" />--%>
                            <asp:ImageButton ID="imb_editar" ToolTip="Editar" runat ="server" style='height:16px; width:16px' ImageUrl ="../../images/botones/editar.png" Visible="false" />
                            
                            <bti:BotonImagen ID="bti_eliminar" runat="server" visible ="false"  style='height:16px; width:16px' ImageUrl="../../images/botones/quitar.png" CausesValidation ="false" CommandArgument ='<%# eval("id")%>'  CommandName  ='eliminarComentario' />
                            
                       </div>  
                       <div >
                       <span><i  class='fa fa-commenting ' style="font-size:16px"></i></span>
                       <asp:Label ID="lbl_contactoNombre" CssClass="lbl2" runat="server"></asp:Label>
                       <asp:Label ID="lbl_contactoFechaF" CssClass="lbl2" runat="server"></asp:Label>
                        <asp:Label ID="lbl_detalle" cssClass="lbl_detalle2" style="text-align:justify" runat="server" visible ="false" Text='<%# Eval ("detalle")%>'></asp:Label>
                   <asp:TextBox ID='txt_rapido' TextMode="multiline" cssClass="txt_input" runat="server" Visible="false"></asp:TextBox>
                   
                        <asp:CheckBox ID='chb_finalizar' runat='server' AutoPostBack='True' CssClass='chb' Visible ="false" />
                        <asp:Label ID='lbl_chbFinalizar' runat='server' CssClass='lbl' Visible ="false"></asp:Label>
                        <asp:ImageButton ID="imb_respuestaRapida" cssClass="imb_respuestaRapida" runat ="server"  ImageUrl="../../images/botones/aceptar.png" Visible ="false" CausesValidation ="false" CommandArgument ='<%# eval("id")%>'  CommandName  ='respuestaRapida' />
                      </div>
                       </div>
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
                                                 
            </Columns>
                    <FooterStyle CssClass="gri_pie" />
                    <RowStyle CssClass="gri_item_list" />
                    <PagerStyle CssClass="gri_paginacion" />
                    <HeaderStyle CssClass="gri_titulo" />
                    <AlternatingRowStyle CssClass="gri_itemAlterno" />
                    <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                                        </asp:GridView>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
