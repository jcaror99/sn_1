<%@ Page Language="VB" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master" AutoEventWireup="false" EnableEventValidation="false"
CodeBehind="~/forms/equ/hojavida.aspx.vb" Inherits="website.samm_web.forms_equ_hojavida" %>


<%--<%@ Register Src="~/controles/ort/inc_tecnicos.ascx" TagName="inc_tecnicos" TagPrefix="uc10" %>
<%@ Register Src="~/controles/ort/ort_actividades.ascx" TagName="ort_actividades"
TagPrefix="uc9" %>--%>
<%@ register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc7" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="act" %>
<%@ Register Src="~/controles/general/informacion.ascx" TagName="informacion"
TagPrefix="uc6" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
TagPrefix="uc3" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="BusquedaAvanzada" TagPrefix="bus" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada"
TagPrefix="uc4" %>
<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="textoAvanzado"
TagPrefix="uc5" %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName="tabs" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName="tabsPersonalizados"
TagPrefix="uc1" %>
<%@ Register src="~/controles/general/slider.ascx" tagname="slider" tagprefix="uc11" %>
<%@ Register Src="~/controles/equ/equ_documentosCurso.ascx" TagName="equ_documentosCurso" TagPrefix="uc9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" runat="Server">
<asp:Label ID="titulo" runat="server" CssClass='lbl_titulo' Text="<%$Resources:res_tituloPagina, forms_equ_hojavida %>"></asp:Label>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" runat="server" >

<table cellpadding="0" cellspacing="0" border="0">

<tr>
<td>
<uc6:informacion ID="infEncabezadoReporte" runat="server" Visible="False" />


</td>
<td class='td_controlesFormulario'>

<%-- <uc9:equ_documentosCurso ID="ctr_info" runat="server" Visible="false" EnableViewState="true"/>   --%>      
</td>
</tr>

<tr>
<td>
<br />
<uc2:tabs ID="tabs" runat="server" />
<uc7:popup ID="popupinterno" runat="server" />
</td>
</tr>
<tr>
<td class="tbl_marcoFormulario" runat="server">


<table class="tbl_marcoFormulario" id="tbl_Documentos" runat="server">

<%--Seccion filtro--%>

<tr>
<td>
<asp:Label ID="lbl_tipodoc" runat="server" Text="<%$Resources:res_metadata,doc_tipodocumento_tipodocumento %>"
CssClass="lbl"></asp:Label>&nbsp;
</td>
<td>
<table>
<tr>
<td>

<bus:BusquedaAvanzada ID="bus_TipoDoc" runat="server" a_str_tabla="doc_tipoDocumento" a_bol_postBack="true" />

</td>
</tr>
</table>
</td>
</tr >

<tr id="tr_subtipoDoc" runat="server" visible="false">
<td>
<asp:Label ID="Label28" runat="server" Text="<%$Resources:res_metadata,doc_subtipodocumento_subtipodocumento %>"
CssClass="lbl"></asp:Label>&nbsp;
</td>
<td>
<table>
<tr>
<td>

<bus:BusquedaAvanzada ID="bus_subtipoDoc" runat="server" a_str_tabla="doc_subtipoDocumento"  a_bol_postBack="true" />

</td>
</tr>
</table>
</td>
</tr>

<tr>
<td>
<asp:Label ID="lblFecha" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaInicial%>"
CssClass="lbl"></asp:Label>
</td>
<td>

<uc4:fechaAvanzada ID="fec_FechaIni" runat="server" a_str_prefijo="fh" OnClientHidden="mostrar" OnClientShown="ocultar" />

</td>
</tr>

<tr>
<td>
<asp:Label ID="lblfechaFin" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaFinal %>"
CssClass="lbl"></asp:Label>
</td>
<td>

<uc4:fechaAvanzada ID="fec_FechaFin" runat="server" a_str_prefijo="fh" OnClientHidden="mostrar" OnClientShown="ocultar" />

</td>
</tr>

<tr>
<td>
<asp:Label ID="Label3" runat="server" Text="<%$Resources:res_metadata,doc_motivoestado_id_estadotipodocumento %>"
CssClass="lbl"></asp:Label>
</td>
<td>
<asp:RadioButtonList ID="rdb_estadoTipoServicio" runat="server" RepeatDirection="Horizontal">

</asp:RadioButtonList>

</td>
</tr>   

<tr ID="tr_SOL" visible ="false" runat="server">
<td>
<asp:Label ID="Label2" runat="server" Text="Telefonica"
CssClass="lbl"></asp:Label>
</td>
<td>
<asp:RadioButtonList ID="rdb_listaTelef" runat="server" RepeatDirection="Horizontal">

</asp:RadioButtonList>

</td>
</tr>

<tr ID="tr_OTs" visible ="false" runat="server">
<td>
<asp:Label ID="Label4" runat="server" Text="<%$Resources:res_metadata,gen_tiposervicio_tiposervicio%>"
CssClass="lbl"></asp:Label>
</td>
<td>
<uc3:busquedaAvanzadaMultiple ID="busm_tipoServicio" a_str_tabla="gen_tipoServicio" runat="server" a_str_grupoValidacion="fals" a_bln_obligatorio="false"/>                             
</td>
</tr>

<tr>

<td>
<bti:BotonImagen ID="bti_aceptarDoc" runat="server" CausesValidation="false" CssClass="imb" ImageUrl="../../images/botones/aceptar.png" />

</td>  

</tr>

</table>

<%--Seccion Resultados--%>

<table >
<tr>
<td rowspan="30">
<asp:Label ID="lbl_doc_res" runat="server" Text="<%$Resources:res_controles,resultados%>" CssClass="lbl_docResaltado" Visible="false">
</asp:Label>
<%-- <gri:grilla ID="gri_resulBusquedaDoc" runat="server" Visible="false" ></gri:grilla>--%>

<asp:GridView ID="gri_resultados_documentos" runat="server" AutoGenerateColumns="false" >
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />

<Columns>
<asp:CommandField ButtonType="Button" ShowSelectButton="True" HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible" ControlStyle-CssClass="invisible" />
<asp:BoundField HeaderText='id' DataField="id" Visible="false"/>
<asp:TemplateField HeaderText="<%$Resources:res_campoGrilla,doc_documento_prefijo%>" >
<ItemTemplate>
<asp:HyperLink ID="link_eve" runat="server" Target="_blank" CssClass="lnk" NavigateUrl='<%# eval("link") %>'
Text='<%# eval("prefijo_txt") %>' ToolTip='2,5' Visible='true'></asp:HyperLink>
<asp:Label ID="lbl_id" runat="server" CssClass="invisible" Text='<%# eval("id") %>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_documento_fecha_fh%>" DataField="Fecha" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_documento_id_estadotipodocumento%>" DataField="Estado" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_documento_id_prioridaddocumento%>" DataField="Prioridad" />

<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_documento_total%>" DataField="Total" />
<asp:BoundField HeaderText='Multiempresa' DataField="multiempresa" />

<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,ort_departamentosolicitud_departamentosolicitud%>" DataField="ort_departamentoSolicitud_departamentoSolicitud" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_documento_ot_id_tiposervicio%>" DataField="id_tipoServicio" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_documento_requisicion_documento_requisicion%>" DataField="requisiscion" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_documento_cotizacion_documento_cotizacion%>" DataField="documento.cotizacion" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_documento_cotizacion_id_usuario_asesor%>" DataField="seg_usuario_asesor_usuario" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_documento_total%>" DataField="doc_documento_cotizacion_totalPlaneado" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_documento_ordencompra_documento_ordencompra%>" DataField="documento.ordencompra" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_documento_total%>" DataField="doc_documento_ordencompra_total" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_documento_id_subtipodocumento%>" DataField="subtipo" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_documento_entrada_documento_entrada%>" DataField="documento.entrada" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_documento_salida_documento_salida%>" DataField="documento.salida" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_documento_ot_trabajos%>" HtmlEncode="false" DataField="Trabajos" Visible="true"/>

</Columns>
</asp:GridView>  


</td>  



<td id="td_detalle_doc" visible="false" runat="server" valign="top" >

<asp:Label ID="lbl_doc_detRes" runat="server" Text="<%$Resources:res_controles,detalleResultados%>" CssClass="lbl_docResaltado" Visible="true" >
</asp:Label>

<table>

<tr>
<td>
<asp:Label ID="lbl_infDet" runat="server" Text="Motivo Servicio:" CssClass="lbl" ></asp:Label>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_detalleSolicitud" runat="server" Visible="false"></asp:Label>
</td>
</tr>
<tr>
<td>               
<gri:grilla ID="gri_detalleDocumento" runat="server" Visible="false" a_bln_tamañoMedio="true" > </gri:grilla>

<gri:grilla ID="gri_detalleDocumento2" runat="server" Visible="false" a_bln_tamañoMedio="true" > </gri:grilla>

<gri:grilla ID="gri_detalleDocumento4" runat="server" Visible="false" a_bln_tamañoMedio="true" > </gri:grilla>
</td>
</tr>                            
</table>



</td>


</tr>
</table>

<table class="tbl_marcoFormulario" id="tbl_repuestos" runat="server" visible="false">

<%--Seccion filtro--%>


<tr>
<td>
<asp:Label ID="Label5" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaInicial%>"
CssClass="lbl"></asp:Label>
</td>
<td>

<uc4:fechaAvanzada ID="fec_fechaInicioRep" runat="server" a_str_prefijo="fh" OnClientHidden="mostrar" OnClientShown="ocultar" />

</td>
</tr>


<tr>
<td>
<asp:Label ID="Label6" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaFinal%>"
CssClass="lbl"></asp:Label>
</td>
<td>

<uc4:fechaAvanzada ID="fec_fechaFinRep" runat="server" a_str_prefijo="fh" OnClientHidden="mostrar" OnClientShown="ocultar" />

</td>
</tr>


<tr>
<td>
<asp:Label ID="Label7" runat="server" Text="<%$Resources:res_metadata,doc_motivoestado_id_estadotipodocumento %>"
CssClass="lbl"></asp:Label>
</td>
<td>
<asp:RadioButtonList ID="rdb_estadoTipoDocRep" runat="server" RepeatDirection="Horizontal">

</asp:RadioButtonList>

</td>
</tr>   


<tr >
<td>
<asp:Label ID="Label9" runat="server" Text="<%$Resources:res_metadata,gen_tiposervicio_tiposervicio%>"
CssClass="lbl"></asp:Label>
</td>
<td>
<uc3:busquedaAvanzadaMultiple ID="busm_tipoServicioRep" a_str_tabla="gen_tipoServicio" runat="server" />                             
</td>
</tr>

<tr>

<td>
<bti:BotonImagen ID="bti_aceptarRep" runat="server" CausesValidation="false" CssClass="imb" ImageUrl="../../images/botones/aceptar.png" />

</td>  

</tr>

</table>    
<%--Seccion Resultados--%>
<table>         
<tr>
<td runat="server" valign=top>

<asp:Label ID="lbl_rep_res" runat="server" Text="<%$Resources:res_controles,resultados%>" CssClass="lbl_docResaltado" Visible="false">
</asp:Label>
<gri:grilla ID="gri_resultados_rep" runat="server" Visible="false" a_bln_tamañoMedio="true"></gri:grilla>
</td>  

<td  id="td_det_rep" runat="server" Visible="false" valign=top>

<asp:Label ID="lbl_res_detRes" runat="server" Text="<%$Resources:res_controles,detalleResultados%>" CssClass="lbl_docResaltado" Visible="false" >
</asp:Label>

<asp:GridView ID="grd_trabajos" runat="server" AutoGenerateColumns="False">
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<Columns>
<asp:TemplateField HeaderText="<%$Resources:res_campoGrilla,doc_documento_prefijo%>">
<ItemTemplate>

<asp:HyperLink ID="lnk_falla" runat="server" Target="_blank" CssClass="lnk" NavigateUrl='<%# eval("link_ot") %>'
Text='<%# eval("link_name") %>' ToolTip='2,5' Visible='true'></asp:HyperLink>
</ItemTemplate>
</asp:TemplateField>
<asp:CommandField ButtonType="Button" ShowSelectButton="True" HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible" ControlStyle-CssClass="invisible" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_documento_fecha_fh%>" DataField="fecha" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_itemdocumento_cantidadplaneado%>" DataField="cantidadPlaneado" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_itemdocumento_cantidadejecutado%>" DataField="cantidadejecutado" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_documento_total%>" DataField="total" />

</Columns>
</asp:GridView>
                 

</td>  

</tr>

</table>  



<table class="tbl_marcoFormulario" id="tbl_trabajos" runat="server" visible="false">


<%--Seccion filtro--%>


<tr>
<td>
<asp:Label ID="Label1" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaInicial%>"
CssClass="lbl"></asp:Label>
</td>
<td>

<uc4:fechaAvanzada ID="fec_fechaIni_Trab" runat="server" a_str_prefijo="fh" OnClientHidden="mostrar" OnClientShown="ocultar" />

</td>
</tr>


<tr>
<td>
<asp:Label ID="Label8" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaFinal%>"
CssClass="lbl"></asp:Label>
</td>
<td>

<uc4:fechaAvanzada ID="fec_fechaFin_Trab" runat="server" a_str_prefijo="fh" OnClientHidden="mostrar" OnClientShown="ocultar" />

</td>
</tr>


<tr>
<td>
<asp:Label ID="Label10" runat="server" Text="<%$Resources:res_metadata,doc_motivoestado_id_estadotipodocumento %>"
CssClass="lbl"></asp:Label>
</td>
<td>
<asp:RadioButtonList ID="rdb_estadoTipo_trab" runat="server" RepeatDirection="Horizontal">

</asp:RadioButtonList>

</td>
</tr>   


<tr >
<td>
<asp:Label ID="Label11" runat="server" Text="<%$Resources:res_metadata,gen_tiposervicio_tiposervicio%>"
CssClass="lbl"></asp:Label>
</td>
<td>
<uc3:busquedaAvanzadaMultiple ID="busm_tipoServicio_trab" a_str_tabla="gen_tipoServicio" runat="server" />                             
</td>
</tr>
<tr>
<td>
<asp:Label ID="Label12" runat="server" Text="Palabra Clave" CssClass="lbl"></asp:Label>

</td>
<td>
<asp:TextBox ID="txb_palabraclave" runat="server" CssClass="txt"></asp:TextBox>

</td>
</tr>                                   
<tr>

<td>
<bti:BotonImagen ID="bti_aceptar_Trab" runat="server" CausesValidation="false" CssClass="imb" ImageUrl="../../images/botones/aceptar.png" />

</td>  

</tr>

</table> 
<%--Seccion Resultados--%>
<table>      

<tr>

<td rowspan="15">
<asp:Label ID="Label30" runat="server" Text="<%$Resources:res_controles,Resultados%>" CssClass="lbl_docResaltado" Visible="false" >
</asp:Label>
<gri:grilla ID="gri_resultados_trab" runat="server" Visible="false" a_bln_tamañoMedio="true"></gri:grilla>


</td>  




<%--Seccion Detalles--%>
<td id="td_detalle_trab" visible="false" runat="server" valign=top colspan="4">
<asp:Label ID="Label27" runat="server" Text="<%$Resources:res_controles,detalleResultados%>" CssClass="lbl_docResaltado" >
</asp:Label>



<table>
<tr>
<td>
<asp:Label ID="Label26" runat="server" Text="<%$Resources:res_campoGrilla,doc_documento_ot_trabajos%>" CssClass="lbl"></asp:Label>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_det_tra_trabajo" runat="server" ></asp:Label>
</td>
</tr>               
<tr><td><br /> </td></tr>
<tr>
<td>
<asp:Label ID="Label29" runat="server" Text="<%$Resources:res_campoGrilla,doc_documento_ot_recomendaciones%>" CssClass="lbl"></asp:Label>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_det_tra_recomendacion" runat="server" ></asp:Label>
</td>
</tr>               
<tr><td><br /> </td></tr>
<tr>
<td>
<asp:Label ID="Label31" runat="server" Text="<%$Resources:res_campoGrilla,doc_documento_ot_compromisos%>" CssClass="lbl"></asp:Label>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_det_tra_compromiso" runat="server" ></asp:Label>                            

</td>
</tr>           


</table>



</td>    

</tr>

</table>

<table class="tbl_marcoFormulario" id="tbl_movimientos" runat="server" visible="false">


<%--Seccion filtro--%>


<tr>
<td>
<asp:Label ID="Label13" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaInicial%>"
CssClass="lbl"></asp:Label>
</td>
<td>

<uc4:fechaAvanzada ID="fec_fechaIni_mov" runat="server" a_str_prefijo="fh" OnClientHidden="mostrar" OnClientShown="ocultar" />

</td>
</tr>


<tr>
<td>
<asp:Label ID="Label14" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaFinal%>"
CssClass="lbl"></asp:Label>
</td>
<td>

<uc4:fechaAvanzada ID="fec_fechaFin_mov" runat="server" a_str_prefijo="fh" OnClientHidden="mostrar" OnClientShown="ocultar" />

</td>
</tr>


<tr>

<td>
<bti:BotonImagen ID="bti_aceptar_mov" runat="server" CausesValidation="false" CssClass="imb" ImageUrl="../../images/botones/aceptar.png" />

</td>  

</tr>



<%--Seccion Resultados--%>

</table>       


<table cellspacing="15" cellpadding="10">

<tr id="tr_mov_horometro" visible="false" runat="server">
<td>
<asp:Label ID="lbl_mov_horo" runat="server" Text="Cambio en el Horometro"
CssClass="lbl_docResaltado"></asp:Label>

<gri:grilla ID="Grilla1" runat="server" Visible="false" a_bln_tamañoMedio="true" a_bln_paginacionNormal="true"></gri:grilla>

<asp:GridView ID="grid_resultado_mov_horometro" runat="server" AutoGenerateColumns="True" >
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />

</asp:GridView>  
</td>

</tr>



<tr id="tr_mov_padre" visible="false" runat="server" >
<td >
<asp:Label ID="lbl_mov_padr" runat="server" Text="Cambio de Equipo Padre"
CssClass="lbl_docResaltado"></asp:Label>

<gri:grilla ID="gri_resultado_mov_padre" runat="server" Visible="false" a_bln_tamañoMedio="true" a_bln_paginacionNormal="true"></gri:grilla>

<asp:GridView ID="grid_resultado_mov_padre" runat="server" AutoGenerateColumns="True" >
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
  
</asp:GridView>  



</td>
</tr>  



<tr id="tr_mov_terSuc" visible="false" runat="server">
<td >
<asp:Label ID="lbl_mov_terSuc" runat="server" Text="Cambio de Tercero"
CssClass="lbl_docResaltado"></asp:Label>

<gri:grilla ID="gri_resultado_mov_terSec" runat="server" Visible="false" a_bln_tamañoMedio="true" a_bln_paginacionNormal="true"></gri:grilla>

<asp:GridView ID="grid_resultado_mov_terSec" runat="server" AutoGenerateColumns="True" >
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
  
</asp:GridView>  



</td>

</tr>

<tr id="tr_mov_evento" visible="false" runat="server">
<td >
<asp:Label ID="lbl_mov_evento" runat="server" Text="Evento"
CssClass="lbl_docResaltado"></asp:Label>

<asp:GridView ID="gri_resultado_mov_evento" runat="server" AutoGenerateColumns="False" >
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />

<Columns>
<asp:CommandField ButtonType="Button" ShowSelectButton="True" HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible" ControlStyle-CssClass="invisible" />
<asp:BoundField HeaderText='id' DataField="id" Visible="false"/>
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,dis_evento_evento%>" DataField="evento" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,dis_evento_fechahorainicio_ff%>" DataField="fechaHoraInicio_ff" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,dis_evento_duracion_hh%>" DataField="duracion_hh" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,dis_motivoevento_motivoevento%>" DataField="dis_motivoEvento_motivoEvento" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,seg_usuario_catalogo_equipo_id_usuario%>" DataField="seg_usuario_usuario" />
<asp:TemplateField HeaderText='Ver'>
<ItemTemplate>
<asp:HyperLink ID="link_eve" runat="server" Target="_blank" CssClass="lnk" NavigateUrl='<%# eval("link") %>'
Text='Ir' ToolTip='2,5' Visible='true'></asp:HyperLink>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>           

</td>  
</tr>  

<tr id="tr_mov_prest" visible="false" runat="server">
<td >
<asp:Label ID="lbl_mov_prest" runat="server" Text="Evento"
CssClass="lbl_docResaltado"></asp:Label>


<asp:GridView ID="gri_resultados_mov_prest" runat="server" AutoGenerateColumns="False" >
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />

<Columns>
<asp:CommandField ButtonType="Button" ShowSelectButton="True" HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible" ControlStyle-CssClass="invisible" />
<asp:BoundField HeaderText='id' DataField="id" Visible="false"/>
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,equ_prestamo_prestamo%>" DataField="prestamo" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,equ_prestamo_fechaprestamo_ff%>" DataField="fechaPrestamo_ff" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,equ_prestamo_fechacompromiso_ff%>" DataField="fechaCompromiso_ff" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,equ_prestamo_id_estadoprestamo%>" DataField="equ_estadoPrestamo_estadoPrestamo" />
<%--  <asp:BoundField HeaderText="<%$Resources:res_campoGrilla,equ_amo%>" DataField="estadoPrestamo" />--%>
<asp:TemplateField HeaderText='Ver'>
<ItemTemplate>
<asp:HyperLink ID="link_eve" runat="server" Target="_blank" CssClass="lnk" NavigateUrl='<%# eval("link") %>'
Text='Ir' ToolTip='2,5' Visible='true'></asp:HyperLink>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>           

</td>  
</tr>  

<tr id="tr_mov_alquiler" visible="false" runat="server">
<td >
<asp:Label ID="lbl_mov_alquiler" runat="server" Text="Evento"
CssClass="lbl_docResaltado"></asp:Label>

<asp:GridView ID="gri_resultados_mov_alquiler" runat="server" AutoGenerateColumns="False" >
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />

<Columns>
<asp:CommandField ButtonType="Button" ShowSelectButton="True" HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible" ControlStyle-CssClass="invisible" />
<asp:BoundField HeaderText='id' DataField="id" Visible="false"/>
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,equ_alquiler_alquiler%>" DataField="alquiler" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,equ_alquiler_fechacompromiso_ff%>" DataField="fechaCompromiso_ff" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,ter_tercero_tercero%>" DataField="ter_tercero_tercero" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,ter_tercero_tercero_nit%>" DataField="ter_tercero_tercero_nit" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,ter_sucursal_sucursal%>" DataField="ter_sucursal_sucursal" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,ter_sucursal_contacto%>" DataField="ter_sucursal_contacto" />
<asp:TemplateField HeaderText='Ver'>
<ItemTemplate>
<asp:HyperLink ID="link_eve" runat="server" Target="_blank" CssClass="lnk" NavigateUrl='<%# eval("link") %>'
Text='Ir' ToolTip='2,5' Visible='true'></asp:HyperLink>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>           

</td>  
</tr>  

<tr id="tr_mov_soporte" visible="false" runat="server">
<td>
<asp:Label ID="lbl_mov_soporte" runat="server" Text="Cambio en Soporte"
CssClass="lbl_docResaltado"></asp:Label>

<gri:grilla ID="gri_resultados_mov_soporte" runat="server" Visible="false" a_bln_tamañoMedio="true" a_bln_paginacionNormal="true"></gri:grilla>

<asp:GridView ID="grid_resultados_mov_soporte" runat="server" AutoGenerateColumns="True" >
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

<table class="tbl_marcoFormulario" id="tbl_visitas" runat="server" visible="false">



<tr>
<td>
<asp:Label ID="Label15" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaInicial%>"
CssClass="lbl"></asp:Label>
</td>
<td>

<uc4:fechaAvanzada ID="fec_fechaIni_Vis" runat="server" a_str_prefijo="fh" OnClientHidden="mostrar" OnClientShown="ocultar" />

</td>
</tr>


<tr>
<td>
<asp:Label ID="Label16" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaFinal%>"
CssClass="lbl"></asp:Label>
</td>
<td>

<uc4:fechaAvanzada ID="fec_fechaFin_Vis" runat="server" a_str_prefijo="fh" OnClientHidden="mostrar" OnClientShown="ocultar" />

</td>
</tr>


<tr>

<td>
<bti:BotonImagen ID="bti_aceptar_vis" runat="server" CausesValidation="false" CssClass="imb" ImageUrl="../../images/botones/aceptar.png" />

</td>  

</tr>

</table>               
<%--Seccion Resultados--%>
<table>
<tr >

<td runat="server" valign="top">

<asp:Label ID="Label32" runat="server" Text="<%$Resources:res_controles,Resultados%>" CssClass="lbl_docResaltado" Visible="false" >
</asp:Label>

<asp:DataList ID="dtl_contr" runat="server" ShowHeader="False" colspan="100"  >
<ItemTemplate>


<asp:HyperLink ID="lnk_falla" runat="server" Target="_blank" CssClass="lnk" text='<%# eval("cnt_contrato_contrato") %>'
NavigateUrl='<%# eval("link_contrato") %>' ToolTip='2,5' Visible='true'></asp:HyperLink>

<gri:grilla ID="gri_resultados_vis" runat="server" Visible="true" OnSeleccionar="gri_detalles_vis_seleccionar" />
     
</ItemTemplate>

</asp:DataList>


</td>


<%--Seccion Detalles--%>

<td id="tr_detalles_vis" visible="false" runat="server" valign="top" >

<asp:Label ID="Label33" runat="server" Text="<%$Resources:res_controles,detalleResultados%>" CssClass="lbl_docResaltado">
</asp:Label>

<table>
<tr>
<td>
<asp:Label ID="Label21" runat="server" Text="<%$Resources:res_campoGrilla,doc_documento_ot_trabajos%>" CssClass="lbl"></asp:Label>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_det_vis_trabajo" runat="server" ></asp:Label>
</td>
</tr>               
<tr><td><br /> </td></tr>
<tr>
<td>
<asp:Label ID="Label22" runat="server" Text="<%$Resources:res_campoGrilla,doc_documento_ot_recomendaciones%>" CssClass="lbl"></asp:Label>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_det_vis_recomendacion" runat="server" ></asp:Label>
</td>
</tr>               
<tr><td><br /> </td></tr>
<tr>
<td>
<asp:Label ID="Label23" runat="server" Text="<%$Resources:res_campoGrilla,doc_documento_ot_compromisos%>" CssClass="lbl"></asp:Label>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_det_vis_compromiso" runat="server" ></asp:Label>                            

</td>
</tr>           


</table>






</td>

</tr>       


</table>

<table class="tbl_marcoFormulario" id="tbl_componentes" runat="server" visible="false">


<%--Seccion filtro--%>

<tr>
<td>
<asp:Label ID="Label19" runat="server" Text="<%$Resources:res_campoGrilla,cat_sistema_sistema %>"
CssClass="lbl"></asp:Label>&nbsp;
</td>
<td>
<table>
<tr>
<td>

<bus:BusquedaAvanzada ID="bus_sistema" runat="server" a_str_tabla="cat_sistema" a_bol_postBack="true" />

</td>
</tr>
</table>
</td>
</tr>    

<tr>
<td>
<asp:Label ID="Label17" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaInicial%>"
CssClass="lbl"></asp:Label>
</td>
<td>

<uc4:fechaAvanzada ID="fec_fechaIni_comp" runat="server" a_str_prefijo="fh" a_bln_obligatorio="false" OnClientHidden="mostrar" OnClientShown="ocultar" />

</td>
</tr>


<tr>
<td>
<asp:Label ID="Label18" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaFinal%>"
CssClass="lbl"></asp:Label>
</td>
<td>

<uc4:fechaAvanzada ID="fec_fechaFin_comp" runat="server" a_str_prefijo="fh" a_bln_obligatorio="false"  OnClientHidden="mostrar" OnClientShown="ocultar" />

</td>
</tr>



<tr >
<td>
<asp:Label ID="Label20" runat="server" Text="<%$Resources:res_metadata,cat_catalogo_catalogo%>"
CssClass="lbl"></asp:Label>
</td>
<td>
<uc3:busquedaAvanzadaMultiple ID="busm_catalogo" a_str_tabla="cat_catalogo" runat="server" />                             
</td>
</tr>

<tr>

<td>
<bti:BotonImagen ID="bti_acpetar_comp" runat="server" CausesValidation="false" CssClass="imb" ImageUrl="../../images/botones/aceptar.png" />

</td>  

</tr>



<%--Seccion resultados--%>

</table>

<%--Seccion Resultados--%>
<table>                  
<tr>  


<td colspan="30">

<asp:Label ID="Label34" runat="server" Text="<%$Resources:res_controles,Resultados%>" CssClass="lbl_docResaltado" Visible="false">
</asp:Label>

<asp:GridView ID="gri_resultados_comp" runat="server" AutoGenerateColumns="False" Visible="false">
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<Columns>
<asp:CommandField ButtonType="Button" ShowSelectButton="True" HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible" ControlStyle-CssClass="invisible" />

<asp:TemplateField HeaderText="<%$Resources:res_campoGrilla,equ_equipo_equipo%>">
<ItemTemplate>

<asp:HyperLink ID="lnk_equipo" runat="server" Target="_blank" CssClass="lnk" NavigateUrl='<%# eval("link_equipo") %>'
Text='<%# eval("equipo") %>' ToolTip='2,5' Visible='true'></asp:HyperLink>
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,equ_equipo_equipo_serial%>" DataField="equipo_serial" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,equ_equipo_fechapuestamarcha_fh%>" DataField="fechaPuestaMarcha_fh" />

<asp:TemplateField HeaderText='Hoja de vida'>
<ItemTemplate>

<asp:HyperLink ID="lnk_falla" runat="server" Target="_blank" CssClass="lnk" NavigateUrl='<%# eval("link_hoja") %>'
Text='Ver' ToolTip='2,5' Visible='true'></asp:HyperLink>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>

</td>  


</tr>  


</table>



<table class="tbl_marcoFormulario" id="tbl_fallas" runat="server" visible="false">


<%--Seccion filtro--%>


<tr>
<td>
<asp:Label ID="Label24" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaInicial%>"
CssClass="lbl"></asp:Label>
</td>
<td>

<uc4:fechaAvanzada ID="fec_fechaini_falla" runat="server" a_str_prefijo="fh" a_bln_obligatorio="false" OnClientHidden="mostrar" OnClientShown="ocultar" />

</td>
</tr>


<tr>
<td>
<asp:Label ID="Label25" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaFinal%>"
CssClass="lbl"></asp:Label>
</td>
<td>

<uc4:fechaAvanzada ID="fec_fechafin_falla" runat="server" a_str_prefijo="fh" a_bln_obligatorio="false" OnClientHidden="mostrar" OnClientShown="ocultar" />

</td>
</tr>

<tr>

<td>
<bti:BotonImagen ID="bti_aceptar_falla" runat="server" CssClass="imb" ImageUrl="../../images/botones/aceptar.png" />

</td>  

</tr>

</table>               
<%--Seccion Resultados--%>
<table>             
<tr>

<td >
<asp:Label ID="Label35" runat="server" Text="<%$Resources:res_controles,Resultados%>" CssClass="lbl_docResaltado" Visible="false">
</asp:Label>
<%-- <gri:grilla ID="gri_resultados_falla" runat="server" Visible="false" a_bln_tamañoMedio="true"></gri:grilla>
--%>
<asp:GridView ID="gri_resultados_falla" runat="server" AutoGenerateColumns="False">
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />

<Columns>
<asp:BoundField HeaderText='id' DataField="id" Visible="false"/>
<asp:TemplateField HeaderText="<%$Resources:res_campoGrilla,doc_documento_prefijo%>">
<ItemTemplate>
<asp:HyperLink ID="lnk_docOT" runat="server" Target="_blank" CssClass="lnk" NavigateUrl='<%# eval("link_ot") %>'
Text='<%# eval("link_name") %>' ToolTip='2,5' Visible='true'></asp:HyperLink>
<asp:Label ID="lbl_id" runat="server" CssClass="invisible" Text='<%# eval("id") %>'></asp:Label>

</ItemTemplate>
</asp:TemplateField>
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_documento_ot_documento_ot%>" DataField="doc_documento_ot_documento_ot" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_documento_fecha_fh%>" DataField="fecha" />
<asp:BoundField HeaderText="<%$Resources:res_campoGrilla,equ_falla_falla%>" DataField="equ_falla_falla" />

<asp:CommandField ButtonType="Button" ShowSelectButton="True" HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible" ControlStyle-CssClass="invisible" />

</Columns>
</asp:GridView>


</td>  

<%--Seccion Detalles--%>


<td  id="td_detalle_falla" visible="false" runat="server" valign="top">
<asp:Label ID="Label36" runat="server" Text="<%$Resources:res_controles,detalleResultados%>" CssClass="lbl_docResaltado">
</asp:Label>
<gri:grilla ID="gri_detalle_falla" runat="server" Visible="false"  > </gri:grilla>

</td> 


</tr>

</table>

<%--Seccion Resultados--%>

<table class="tbl_marcoFormulario" id="tbl_archivos" runat="server" visible="false">
    
<tr>
<td>
<asp:Label ID="lbl_archivos_tipoDocumento" runat="server" Text="<%$Resources:res_metadata,doc_tipodocumento_tipodocumento %>"
CssClass="lbl"></asp:Label>&nbsp;
</td>
<td>
<table>
<tr>
<td>
<bus:BusquedaAvanzada ID="bus_archivos_tipoDocumento" runat="server" a_str_tabla="doc_tipoDocumento" a_bol_postBack="true" />
</td>
</tr>
</table>
</td>
</tr >

<tr>
<td>
<asp:Label ID="lbl_archivos_fechaDesde" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaInicial%>"
CssClass="lbl"></asp:Label>
</td>
<td>
<uc4:fechaAvanzada ID="fec_archivos_fechaDesde" runat="server" a_str_prefijo="fh" OnClientHidden="mostrar" OnClientShown="ocultar"  a_bln_obligatorio="false"/>
</td>
</tr>

<tr>
<td>
<asp:Label ID="lbl_archivos_fechaHasta" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaFinal %>"
CssClass="lbl"></asp:Label>
</td>
<td>
<uc4:fechaAvanzada ID="fec_archivos_fechaHasta" runat="server" a_str_prefijo="fh" OnClientHidden="mostrar" OnClientShown="ocultar" />
</td>
</tr>

<tr>
<td>
<asp:Label ID="lbl_archivos_estado" runat="server" Text="<%$Resources:res_metadata,doc_motivoestado_id_estadotipodocumento %>"
CssClass="lbl"></asp:Label>
</td>
<td>
<asp:RadioButtonList ID="rdb_archivos_estado" runat="server" RepeatDirection="Horizontal">

</asp:RadioButtonList>
</td>
</tr> 

<tr>
<td>
<bti:BotonImagen ID="btn_archivos_aceptar" runat="server" CausesValidation="false" CssClass="imb" ImageUrl="../../images/botones/aceptar.png" />
</td>  
</tr>

</table>

<table>
<asp:GridView ID="grd_archivos" runat="server" AllowPaging="true" AutoGenerateColumns="false" ShowHeader="true" >

<Columns>

<asp:TemplateField Visible="false">
<ItemTemplate>
<asp:Label ID="lbl_id" runat="server" Visible="false" > </asp:Label>
</ItemTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText ="res_etiquetas_equ,doc_prefijo_numero">
<ItemTemplate>
<asp:Label ID="lbl_archivos_documento" runat="server" Text='<%# eval("documento") %>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText ="res_etiquetas_equ,doc_fechaArchivo">
<ItemTemplate>
<asp:Label ID="lbl_fecha"  runat="server"  Text='<%# eval("fecha") %>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText ="res_etiquetas_equ,doc_documentoArchivo">
<ItemTemplate>
<asp:Label ID="lbl_archivo" runat="server" Text='<%# eval("archivo") %>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>

</Columns>

<%-- Estilos --%>
 
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />

</asp:GridView>
</table>

</td>
</tr>
</table>

</asp:Content>

