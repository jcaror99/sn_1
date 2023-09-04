<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="apariencia.ascx.vb" Inherits="website.samm_componentes.controles_paginaInicio_apariencia" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<style type="text/css">
    .style1
    {
        height: 23px;
    }
</style>
<table align="center">
<tr>
<td style="height: 26px; text-align:left;" colspan="2">
<hr />
</td>

</tr>
<tr>
<td style="text-align: center;">
<asp:Label ID="lbl_calendario0" runat="server" Text="<%$Resources: res_etiquetas,homeRegshorizontal %>"></asp:Label>
<br />
<asp:TextBox ID="txt_vertical" runat="server" CssClass="txt_numero txt_vertical" AutoPostBack="true"></asp:TextBox>
</td>
<td style="text-align: center;">
<asp:Label ID="lbl_calendario1" runat="server" Text="<%$Resources: res_etiquetas,homeRegsvertical %>"></asp:Label>
<br />
<asp:TextBox ID="txt_horizontal" runat="server" CssClass="txt_numero txt_horizontal" AutoPostBack="true"></asp:TextBox>
</td>
<asp:Label ID="Label1" runat="server" CssClass="txt_msgVH" style="display:none; color: red; text-align:center; font-weight:bold;"></asp:Label>
</tr>

<tr>
<td style="height: 26px; text-align: center;" colspan="2">
<hr />
<asp:Label ID="lbl_calendario" runat="server" Text="<%$Resources: res_etiquetas,homeCalendario %>"></asp:Label>
</td>
</tr>
<tr style="text-align:left;">
<td style="height: 26px" colspan="2">
<asp:CheckBoxList ID="chbOpcionescalendario" runat="server" RepeatColumns="3">
</asp:CheckBoxList>
&nbsp;<asp:Label ID="lbl_calendario2" runat="server" Text="<%$Resources: res_etiquetas,homeAnchocalendario %>"></asp:Label>
<asp:TextBox ID="txt_ancho" runat="server" CssClass="txt_numero"></asp:TextBox>
&nbsp;<asp:Label ID="lbl_calendario3" runat="server"></asp:Label>
<asp:DropDownList style="width: 100px; height: 22px" ID="drp_calendOrg" runat="server" CssClass="drp"></asp:DropDownList>
<br /><br />
<asp:CheckBox ID="chb_mostrarResumenHoras" runat="server"/>
</td>
</tr>
<tr style="text-align:center;" >
<td class="style1"  colspan="2" >
<asp:Label ID="lbl_programacion" runat="server" ></asp:Label>
</td>
</tr>
<tr style="text-align:center;" >
<td colspan="2">
<asp:CheckBoxList ID="chb_programacion" runat="server" CssClass="" RepeatLayout="Table" RepeatColumns="5">
</asp:CheckBoxList>
</td>
</tr>

<tr>
<td style="height: 26px; text-align: center;" colspan="2">
<hr />
<asp:Label ID="lbl_cronograma" runat="server" Text=""></asp:Label>
</td>
</tr>
<tr>
<td style="height: 26px" colspan="2">
<asp:CheckBoxList ID="chb_cronograma" runat="server" RepeatColumns="4" CellSpacing="4" RepeatLayout="Table">
</asp:CheckBoxList>
&nbsp;
</td>
</tr>
<tr>
<td style="height: 26px" colspan="2">
<hr />
<table>
<tr><td colspan="4" align="center">
<asp:Label ID="lbl_subtiposDEfecto" runat="server" ></asp:Label> 
</td></tr>
<tr>
<td>
<asp:Label ID="lbl_ot" runat="server" ></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_ot" runat="server" a_str_tabla="doc_subtipoDocumento" />
</td>
<td>
<asp:Label ID="lbl_sol" runat="server" ></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_sol" runat="server" a_str_tabla="doc_subtipoDocumento" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_oc" runat="server" ></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_oc" runat="server" a_str_tabla="doc_subtipoDocumento" />
</td>
<td>
<asp:Label ID="lbl_requisicion" runat="server" ></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_requisicion" runat="server" a_str_tabla="doc_subtipoDocumento" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_entrada" runat="server" ></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_entrada" runat="server" a_str_tabla="doc_subtipoDocumento" />
</td>
<td>
<asp:Label ID="lbl_salida" runat="server" ></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_salida" runat="server" a_str_tabla="doc_subtipoDocumento" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_traslado" runat="server" ></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_traslado" runat="server" a_str_tabla="doc_subtipoDocumento" />
</td>
<td>
<asp:Label ID="lbl_cotizacion" runat="server" ></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_cotizacion" runat="server" a_str_tabla="doc_subtipoDocumento" />
</td>
</tr>



<tr>
<td>
<asp:Label ID="lbl_alquiler" runat="server" ></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_alquiler" runat="server" a_str_tabla="doc_subtipoDocumento" />
</td>
<td>

</td>
<td>

</td>
</tr>


</table>
</td>
</tr>
<tr>
<td style="height: 26px" colspan="2">
<hr />
</td>
</tr>
<tr>
<td>
<asp:CheckBox ID="chbAutoFoco" runat="server" Text="<%$Resources: res_etiquetas,homeAutofoco %>" />
</td>
<td>
<asp:CheckBox ID="chbEdicion" runat="server" Checked ="false" /> 
</td>
</tr>
<tr>
<td style="height: 26px; text-align: center;" colspan="2">
<hr/>
<asp:Label ID ="lbl_tituloReporte" runat="server"></asp:Label> 
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_reporteTecnico" runat="server"></asp:Label>
</td>
<td>
<asp:DropDownList ID="drd_Reportetecnico" runat ="server" CssClass="drp" />
</td>
</tr> 
<tr>
<td>
<asp:CheckBox ID="chbIngresarNuevoReporte" runat="server" Checked ="false" Visible ="true"  /> 
</td >
</tr> 

<tr>
<td >
<asp:Label ID="lbl_cambiarUrlReporte" runat="server" ></asp:Label>
</td>
<td>
<asp:RadioButtonList ID="rbl_urlReporte" runat="server" RepeatDirection="Horizontal">
</asp:RadioButtonList>
</td>
</tr>


<tr>
<td style="height: 26px; text-align: center;" colspan="2">
<hr/>
<asp:Label ID ="lbl_tituloContrato" runat="server"></asp:Label> 
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_documentoOt" runat="server"></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_documentoOt" runat="server" a_str_tabla="doc_subtipoDocumento" a_str_filtros="id_tipoDocumento=2" />
</td>
</tr> 


<tr>
<td >
<asp:Label ID="lbl_consultaVisita" runat="server" ></asp:Label>
</td>
<td>
<asp:RadioButtonList ID="rbl_consultaVisita" runat="server" RepeatDirection="Horizontal">
</asp:RadioButtonList>
</td>
</tr>

<tr>
<td style="height: 26px; text-align: center;" colspan="2">
<hr/>
<asp:Label ID ="lbl_tituloItemdocumento" runat="server"></asp:Label> 
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_codigoItem" runat="server"></asp:Label>
</td>
<td style="white-space:nowrap;">
<asp:RadioButtonList ID="rbl_codigoItem" runat="server" RepeatDirection="Horizontal">
</asp:RadioButtonList>
</td>
</tr>
<tr>
<td colspan="2">
<table id="tbl_tecnico" runat="server" >
<tr>
<td style="height: 26px; text-align: center;" colspan="2">
<hr />
<asp:Label ID ="lbl_homeTecnico" runat ="server" ></asp:Label>
</td>
</tr>
 <tr>
<td class="td_lblFormulario">
<asp:Label ID="lbl_canOtHome" runat="server" ></asp:Label>
</td>
<td style="width: 224px; white-space:nowrap;">
 <asp:TextBox ID="txt_canOtHome" runat="server" ></asp:TextBox>
</td>
<td></td>
</tr>
<tr style="text-align:center;" >
<td class="style1"  colspan="2" >
<asp:Label ID="lbl_campoTecnico" runat="server" ></asp:Label>
</td>
</tr>
<tr style="text-align:center;" >
<td colspan="2">
<asp:CheckBoxList ID="cbl_campoTecnico" runat="server" CssClass="" RepeatLayout="Table" RepeatColumns="5">
</asp:CheckBoxList>
</td>
</tr>


</table>
</td>
</tr>



<tr>
<td style="height: 26px; text-align: center;" colspan="2">
<hr/>
<asp:Label ID="lbl_graficar" runat="server" ></asp:Label>
</td>
</tr>

<tr>
<td>
<asp:Label ID="lbl_estiloGrafico" runat="server"></asp:Label>
</td>
</tr> 

<tr>
<td >
<asp:Label ID="lbl_grafica" runat="server" ></asp:Label>
</td>
<td>
<asp:DropDownList ID="drp_estiloGrafico" runat="server"  CssClass ="drp" AutoPostBack="true" ></asp:DropDownList>
</td>
</tr>
<tr>

<tr>
<td style="height: 26px; text-align: center;" colspan="2">
<hr/>
<asp:Label ID="lbl_inicio" runat="server" ></asp:Label>
</td>
</tr>

<tr>
<td>
<asp:Label ID="lbl_inicio2" runat="server"></asp:Label>
</td>
</tr>
<td >
<asp:Label ID="lbl_grafica2" runat="server" ></asp:Label>
</td>
<td>
<asp:DropDownList ID="dpr_inicio" runat="server"  CssClass ="drp" AutoPostBack="true" ></asp:DropDownList>
</td>
</tr>





<tr>
<td style="height: 26px; text-align: center;" colspan="2">
<hr/>
<asp:Label ID="lbl_documento" runat="server" ></asp:Label>
</td>
</tr>
<tr>
<td >
<asp:Label ID="lbl_vercerrados" runat="server" ></asp:Label></td>
<td><asp:RadioButtonList ID="rbl_vercerrados" runat="server" RepeatDirection="Horizontal">
</asp:RadioButtonList></td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_exportarpdf" runat="server" Text="exportarPdf"></asp:Label>
</td>
<td>
<asp:RadioButtonList ID="rbl_descargarpdf" runat="server" RepeatDirection="Horizontal">
</asp:RadioButtonList>
</td>

</tr>

<tr>
<td style="height: 26px; text-align: center;vertical-align:top; "  colspan="2">
<cc1:BotonImagen ID="imbAceptarIniciar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
CausesValidation="false" />
<cc1:BotonImagen ID="btn_eliminar" runat="server" ImageUrl="../../images/botones/quitar.gif" CausesValidation="false" />

</td>
</tr>

</table>
