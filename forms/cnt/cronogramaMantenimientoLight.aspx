<%@ Page Language="VB" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master"
AutoEventWireup="false" CodeBehind="cronogramaMantenimientoLight.aspx.vb" Inherits="website.samm_web.forms_cnt_cronogramaMantenimientoLight" %>

<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="uc6" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada"
TagPrefix="fec" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc4" %>
<%@ Register Src="~/controles/general/calendario4meses.ascx" TagName="calendario4meses"
TagPrefix="uc5" %>
<%@ Register Src='~/controles/general/tabs.ascx' TagName='tabs' TagPrefix='tab' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada'
TagPrefix='bus' %>
<%@ Register Src='~/controles/general/busquedaAvanzadaMultiple.ascx' TagName='busquedaAvanzadaMultiple'
TagPrefix='busmul' %>
<%@ Register Src="~/controles/general/slider.ascx" TagName="slider" TagPrefix="sld" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<asp:Content ID='content5' runat='server' ContentPlaceHolderID='cph_tituloPagina'>
    <asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo' Text="<%$ Resources:res_tituloPagina, forms_cnt_cronogramaMantenimiento%>"></asp:Label>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_general" runat="Server">
   <script type="text/javascript" src="../../js/slider/controlslider.js"></script>
   <script type="text/javascript" src="../../js/Contrato/Cronograma.js" async="async"></script>
    <link href="../../css/samm/calendario.css" rel="stylesheet" />
<table>
<tr>
<td align="center" valign="top">
<uc5:calendario4meses ID="Calendario4meses1" runat="server" a_bol_mostrarFestivos="true"
Visible="True" />
</td>
<td valign="top">
<uc4:popup ID="popInterno" runat="server" a_bol_mostrarSAMM="true" />
<table style="width: 100%">
<tr>
<td>
<asp:Panel ID="Panel2" runat="server" CssClass="pnl" GroupingText="<%$Resources:res_etiquetas,buscar %>">
<%--class="td_controlesFormulario"
class="td_lblFormulario"
--%>
<table style="border-collapse:separate" >

<tr>
<td class="td_lblFormulario" >
<asp:Label ID="lbl_contrato0" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,cnt_tipocontrato_tipocontrato %>"></asp:Label>
</td>
<td class="td_controlesFormulario">
<bus:busquedaAvanzada ID="bus_tipocontrato" runat="server" a_str_tabla="cnt_tipoContrato" />
</td>
<td class="td_lblFormulario" >
<asp:Label ID="lbl_tempario" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,cat_catalogo_tempario_catalogo_tempario %>"></asp:Label>
</td>
<td >
<busmul:busquedaAvanzadaMultiple  ID="bus_tempario" runat="server" a_str_tabla="cat_catalogo.tempario" />
</td>
</tr>
<tr>
<td  class="td_lblFormulario" >
<asp:Label ID="lbl_contrato" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,cnt_contrato_contrato %>"></asp:Label>
</td>
<td class="td_controlesFormulario">
<busmul:busquedaAvanzadaMultiple ID="bus_contrato" runat="server" a_str_tabla="cnt_contrato" />
</td>
<td  class="td_lblFormulario" >
<asp:Label ID="lbl_zona" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,gen_zona_zona %>"></asp:Label>
</td>
<td >
<busmul:busquedaAvanzadaMultiple  ID="bus_zona" runat="server" a_str_tabla="gen_zona" />
</td></tr>
<tr>
<td  class="td_lblFormulario" >
<asp:Label ID="lbl_cliente" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,ter_tercero_tercero %>"></asp:Label>
</td>
<td>
<busmul:busquedaAvanzadaMultiple ID="bus_tercero" runat="server" a_bol_postBack="true" a_str_tabla="ter_tercero" />
</td>

<td  class="td_lblFormulario" >
<asp:Label ID="lbl_familia" runat="server" CssClass="lbl" Text="<%$Resources:res_campoGrilla,cat_catalogo_id_familia %>"></asp:Label>
</td>
<td  style="margin:0;padding:0;top:0;">
<busmul:busquedaAvanzadaMultiple  ID="bus_familia" runat="server" a_str_tabla="gen_familia" />
</td>
</tr>

<tr>
<td  class="td_lblFormulario" >
<asp:Label ID="lbl_sucursal" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,ter_sucursal_sucursal %>"></asp:Label>
</td>
<td  style="margin:0;padding:0;top:0;">
<busmul:busquedaAvanzadaMultiple  ID="bus_sucursal" runat="server" a_str_tabla="ter_sucursal" />
</td>

<td  class="td_lblFormulario" >
<asp:Label ID="lbl_tercero_equipo" runat="server" CssClass="lbl"></asp:Label>
</td>
<td  style="margin:0;padding:0;top:0;">
<busmul:busquedaAvanzadaMultiple  ID="bus_tercero_equipo" runat="server" a_str_tabla="ter_tercero" />
</td>

</tr>


<tr>
<td  class="td_lblFormulario" >
<asp:Label ID="lbl_modelo" runat="server" CssClass="lbl" Text="<%$Resources:res_campoGrilla,cat_catalogo_equipo_pruebachecklist_id_catalogo_equipo %>"></asp:Label>
</td>
<td>
<busmul:busquedaAvanzadaMultiple  ID="bus_modelo" runat="server" a_str_tabla="cat_catalogo.equipo" />
</td>

<td  class="td_lblFormulario" >
<asp:Label ID="lbl_terceroComprador" runat="server" CssClass="lbl"></asp:Label>
</td>
<td > 
<busmul:busquedaAvanzadaMultiple  ID="bus_terceroComprador" runat="server" a_str_tabla="ter_tercero" />
</td>


</tr>

<tr>
<td  class="td_lblFormulario" >
<asp:Label ID="lbl_equipo" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,equ_equipo_equipo %>"></asp:Label>
</td>
<td >
<busmul:busquedaAvanzadaMultiple  ID="bus_equipo" runat="server" a_str_tabla="equ_equipo"  />
</td>

<td  class="td_lblFormulario" >
<asp:Label ID="lbl_terceroProveedor" runat="server" CssClass="lbl"></asp:Label>
</td>
<td >
<busmul:busquedaAvanzadaMultiple  ID="bus_terceroProveedor" runat="server" a_str_tabla="ter_tercero" />
</td>


</tr>

<tr>
<td  class="td_lblFormulario" >
</td>
<td></td>
<td  class="td_lblFormulario" >
</td>
<td>
<bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="~/images/botones/aceptar.jpg" />
</td>

</tr>

</table>
</asp:Panel>
</td>
<td><div>
<bti:BotonImagen ID="bti_imprimir" runat="server" ImageUrl="~/images/botones/print.gif" /><br />
<bti:BotonImagen ID="bti_ajustarcronograma" runat="server" ImageUrl="~/images/botones/equ_calcularTotales.gif"
CausesValidation="false"/>
</div></td>
<td valign="top">

<asp:Panel ID="Panel3" runat="server" CssClass="pnl" GroupingText="<%$Resources:res_etiquetas,convenciones %>" Style="width:250px">
<asp:Literal ID="Literal1" runat="server" Text='<%$Resources:res_etiquetas,htmlconvenciones %>'></asp:Literal>
</asp:Panel>
</td>
<td style="width:70%"></td>
</tr>
<tr>
<td colspan="4">
<table class="tbl_marcoFormulario">
<tr>
<td colspan="2">
<asp:Label ID="lbl_fechaSel" runat="server" CssClass="lbl"></asp:Label>
</td>
</tr>
<tr>
<td>
<table id="tbl_nuevaOT" runat="server">
<tr>
<td>
<asp:Label ID="lbl_generarOT" runat="server" CssClass='lbl' Text='<%$ Resources:res_etiquetas_cnt,generarOt %>'
Visible="False"></asp:Label>
</td>
</tr>
<tr>
<td>
<img src="../../images/botones/ort_verOt.gif" alt="Crear OT" onclick="crearOT();" style="cursor:pointer; cursor: hand;" title="Crear OTs">
</td>

<td style="white-space:nowrap;">
<asp:CheckBox ID="chb_otrosEquipos" runat="server" Text='<%$Resources:res_etiquetas_cnt,unificar %>' />
</td>
<td>

</td>
</tr>
</table>
</td>
<td>
<table id="tbl_filtroFechas" runat="server">
<tr>
<td style="vertical-align:top;padding-top:10px;">
<asp:label ID="lbl_fecha_filtroDesde" runat="server" CssClass="lbl"></asp:label>
</td>
<td style="vertical-align:top;padding-top:5px;">
<fec:fechaAvanzada ID="ff_fechaFiltroDesde" runat="server" a_str_prefijo='ff'/>
</td>
<td style="vertical-align:top;padding-top:10px;">
<asp:label ID="lbl_fecha_filtroHasta" runat="server" CssClass="lbl"></asp:label>
</td>
<td style="vertical-align:top;padding-top:5px;">
<fec:fechaAvanzada ID="ff_fechaFiltroHasta" runat="server" a_str_prefijo='ff'/>
</td>
<td style="vertical-align:top;padding-top:5px;">
<asp:ImageButton  ID='imbGuardarFiltro' runat='server' ToolTip="Filtrar" ImageUrl='../../images/botones/buscarBA.gif'
ValidationGroup='form' CssClass='imb' />
</td>
</tr>
</table>
</td>

<td style="width:80%"></td>
</tr>
<tr>
<td colspan="3">
<asp:Label ID="lbl_mensajeCrearOT" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
<tr>
<td colspan="3">
<asp:GridView ID="grd_visitas" runat="server" AutoGenerateColumns="False" BorderColor="Silver"
BorderStyle="Solid" BorderWidth="1px" CellPadding="4">
<RowStyle CssClass="gri_item" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" ForeColor="White" />
</asp:GridView>

<asp:GridView ID="grd_visitas_dia" runat="server" AutoGenerateColumns="False">
<Columns>
<asp:TemplateField HeaderText="id">
<ItemStyle CssClass="invisible"></ItemStyle>
<HeaderStyle CssClass="invisible"></HeaderStyle>
<ItemTemplate>
<asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="false"></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="ch">
<HeaderTemplate>
<asp:CheckBox ID="chb_seleccionar" runat="server"/>
</HeaderTemplate>
<ItemTemplate>
<%--<asp:CheckBox runat="server" id="chb"></asp:CheckBox>--%>
<asp:CheckBox ID="chb_seleccionar" runat="server" />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField>
<ItemTemplate>
<table cellpadding="0" cellspacing="0">
<tr>
<td>
<asp:Image ID="img_estilo" runat="server" CssClass='<%# "cronoDia_" & eval("estilo") %>' ImageUrl="~/images/iconos/cdia.png">
</asp:Image>
</td>
<td>
<asp:Image ID="img_catalogo" runat="server" ImageUrl="~/images/iconos/alta.gif" Visible='<%# eval("catalogo") %>'>
</asp:Image>
<asp:HiddenField ID="hddIdVisita" runat="server" Value='<%# eval("id") %>' />
</td>
</tr>
</table>
</ItemTemplate>
</asp:TemplateField>
<%--<asp:BoundField DataField="fecha_ff" HeaderText="<%$ Resources:res_campoGrilla,cnt_visitafija_fecha_ff %>"></asp:BoundField>--%>
<asp:BoundField DataField="fecha" HeaderText="<%$ Resources:res_campoGrilla,cnt_visitafija_fecha_ff %>">
</asp:BoundField >
<asp:BoundField DataField="equipo" HeaderText="<%$ Resources:res_campoGrilla,equ_equipo_equipo %>">
</asp:BoundField>
<asp:BoundField DataField="equipo_serial" HeaderText="<%$ Resources:res_campoGrilla,equ_equipo_equipo_serial %>">
</asp:BoundField>
<asp:BoundField DataField="tercero_nombrecorto" HeaderText="<%$ Resources:res_campoGrilla,ter_tercero_tercero %>">
</asp:BoundField>
<asp:BoundField DataField="sucursal" HeaderText="<%$ Resources:res_campoGrilla,ter_sucursal_sucursal %>">
</asp:BoundField>
<asp:BoundField DataField="tempario" HeaderText="<%$ Resources:res_campoGrilla,cat_catalogo_tempario_catalogo_tempario %>">
</asp:BoundField>
<asp:BoundField DataField="duracionEstimada" HeaderText="<%$ Resources:res_campoGrilla,cat_soporteactividad_duracion %>">
</asp:BoundField>

<asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_documento_ot_documento_ot %>">
<ItemTemplate>
<asp:HyperLink ID="hyp_ot"
runat="server" Text='<%# IIF(eval("id_documento_ot")>0, eval("prefijo") & " - " & eval("numero"), "")  %>' name='<%# "lnk_" & eval("id") %>' CssClass="lnk"
NavigateUrl='<%# "../../forms/doc/doc_documento_ot.aspx?id=" & eval("id_documento_ot") %>'
Target="_blank"></asp:HyperLink>
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="contrato" HeaderText="<%$ Resources:res_campoGrilla,cnt_contrato_contrato %>">
</asp:BoundField>

<asp:TemplateField>
 <HeaderTemplate>
                <asp:Label ID="lbl_headerProveedor" runat="server" Text="<%# GetHeaderText() %>"></asp:Label>
            </HeaderTemplate>
<ItemTemplate >
<asp:Label ID="lbl_proveedor" runat="server" CssClass ="lbl"><%#IIf(Eval("ProveedorConfigContrato") = "", Eval("ProveedorContrato"), Eval("ProveedorConfigContrato"))%></asp:Label>
</ItemTemplate>
</asp:TemplateField>

</Columns>
<RowStyle CssClass="gri_item" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
</asp:GridView>

<asp:LinkButton ID="lnkSeleccionarVisita" runat="server" CausesValidation="False"
CommandArgument="1" CommandName="prueba">
</asp:LinkButton>
<asp:HiddenField ID="hddIdVisita" runat="server"></asp:HiddenField>
<asp:Panel ID="tbl_fechaOT" runat="server" GroupingText="<%$ Resources:res_etiquetas_cnt,ejecutarCorrimiento %>"
class="pnl">
<table id="tbl_fechaOT">
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_fechaOT" runat="server" Text='<%$Resources:res_metadata,cnt_visitafija_fecha_ff %>'
CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<fec:fechaAvanzada ID="fec_fechaOT" runat="server" a_str_prefijo="ff" a_bln_obligatorio="true"
a_str_grupoValidacion="cor" />
</td>
</tr>
<tr>
<td colspan="2" class="td_lblFormulario">
<asp:CheckBox ID="chb_corrimientoSiguientesVisitas" runat="server" Checked="false" />
</td>
</tr>
<tr>
<td colspan="2" align="center">
<bti:BotonImagen ID="bti_corrimiento" runat="server" ValidationGroup="cor" ImageUrl="~/images/botones/aceptar.jpg" />
</td>
</tr>
<tr>
<td colspan="2" align="center">
<asp:Label ID="lbl_mensajeError" runat="server" CssClass="lbl_mensaje" Visible ="false"></asp:Label>
</td>         
</tr>
</table>
</asp:Panel>

<asp:Panel ID="pnl_programarUsuario" runat="server" CssClass="pnl" >
<table>
    <tr>
        <td>
            <asp:Label cssclass="lbl" ID="lbl_tecnicosUsuarios" runat="server" ></asp:Label></td>
        <td colspan="3">
 <%--           <busmul:busquedaAvanzadaMultiple ID="busTecnicosUsuarios" runat="server" a_str_campo="nombre,id_grupo"
            a_str_filtroTemporal =" id_cargo in( select id from seg_cargo where esTecnico=1 ) " 
                a_str_tabla="seg_usuario" a_bln_obligatorio="true" a_str_grupoValidacion="pro2" />--%>
              <bus:busquedaAvanzada ID="busTecnicosUsuarios" runat="server" a_str_tabla="seg_usuario" a_bln_obligatorio="true"
              a_str_campo="nombre,id_grupo" a_str_grupoValidacion="pro2" />
        </td>
        
    </tr>
    <tr>
        <td>
        </td>
        <td colspan="3">
            <bti:botonimagen id="imb_AceptarUsua" runat="server" cssclass="imb" imageurl="../../images/botones/aceptar.png" ValidationGroup="pro2"></bti:botonimagen>&nbsp;
         </td>
    </tr>
    <tr>
        <td>
        </td>
        <td colspan="3">
            <asp:Label ID="lbl_mensajeProgramacionUsuario" runat="server" CssClass="lbl_mensaje"></asp:Label></td>
            
    </tr>
</table>
</asp:Panel>


<asp:Panel ID="pnl_programar" runat="server" CssClass="pnl" >
<table>
   
    <tr>
        <td>
            <asp:Label cssclass="lbl" ID="lbl_inicio" runat="server" ></asp:Label></td>
        <td>
            <fec:fechaAvanzada ID="fecFechaIni" runat="server" a_str_prefijo="ff" a_bln_obligatorio="true" a_str_grupoValidacion="pro"  />
        </td>
        <td>
            <asp:Label cssclass="lbl" ID="lbl_final" runat="server" ></asp:Label></td>
        
        <td>
            <fec:fechaAvanzada ID="fecFechaFin" runat="server" a_str_prefijo="ff" a_bln_obligatorio="true" a_str_grupoValidacion="pro"  />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label cssclass="lbl" ID="lbl_hinicio" runat="server" ></asp:Label></td>
        <td>
            <fec:fechaAvanzada ID="fecHoraIni" runat="server" a_str_prefijo="hh" a_bln_obligatorio="true" a_str_grupoValidacion="pro" />
        </td>
        <td style="white-space:nowrap;">
            <asp:Label cssclass="lbl" ID="lbl_hfin" runat="server" ></asp:Label></td>
        
        <td>
            <fec:fechaAvanzada ID="fecHoraFin" runat="server" a_str_prefijo="hh" a_bln_obligatorio="true" a_str_grupoValidacion="pro"  />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label cssclass="lbl" ID="lbl_dia" runat="server" ></asp:Label></td>
        <td colspan="3">
            <asp:CheckBoxList ID="cblDiasSemana" runat="server" CssClass="cbl" RepeatColumns="4"
                RepeatDirection="Horizontal">
            </asp:CheckBoxList></td>
        
    </tr>
     <tr>
        <td>
            <asp:Label cssclass="lbl" ID="lbl_comentario" runat="server" ></asp:Label></td>
        <td colspan="3">
            <asp:TextBox ID="txt_comentario" runat="server" CssClass="txt_multilinea" TextMode="MultiLine"></asp:TextBox>
            </td>
    </tr>
    <tr>
        <td>
            <asp:Label cssclass="lbl" ID="lbl_tecnicos" runat="server" ></asp:Label></td>
        <td colspan="3">
            <busmul:busquedaAvanzadaMultiple ID="busTecnicos" runat="server" a_str_campo="nombre,id_grupo"
            a_str_filtroTemporal =" id_cargo in( select id from seg_cargo where esTecnico=1 ) " 
                a_str_tabla="seg_usuario" a_bln_obligatorio="true" a_str_grupoValidacion="pro" />
        </td>
        
    </tr>
    <tr>
        <td> </td>
        <td colspan="3">
            <asp:CheckBox ID="chk_parciales" runat="server" CssClass="chb"  />
            </td>
    </tr>
    <tr>
        <td> </td>
        <td colspan="3">
            <asp:CheckBox ID="chk_otsParaTodos" runat="server" CssClass="chb"  />
            </td>
    </tr>
    <tr>
        <td>
        </td>
        <td colspan="3">
            <bti:botonimagen id="imb_AceptarPro" runat="server" cssclass="imb" imageurl="../../images/botones/aceptar.png" ValidationGroup="pro"></bti:botonimagen>&nbsp;
         </td>
    </tr>
    <tr>
        <td>
        </td>
        <td colspan="3">
            <asp:Label ID="lbl_mensajeProgramacion" runat="server" CssClass="lbl_mensaje"></asp:Label></td>
            
    </tr>
</table>



</asp:Panel>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
<fec:fechaAvanzada ID="fec_fechaOT_as" runat="server" a_str_prefijo="ff" Visible="false" />
</asp:Content>
