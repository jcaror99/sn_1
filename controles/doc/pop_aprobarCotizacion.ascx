<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_aprobarCotizacion.ascx.vb"
Inherits="website.samm_componentes.controles_doc_pop_aprobarCotizacion" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<table><tr>
<td align='right' style="white-space: nowrap; text-align: left;">
<asp:Label ID="lbl_estadoTercero" runat="server" CssClass="lbl" Text=""></asp:Label><asp:Label
ID="lbl_estado_tercero" runat="server" CssClass="lbl"></asp:Label>
</td></tr>
<tr>
    <td>
        <asp:Panel ID="PanelTRM" runat="server" GroupingText="">
            <table>
    <tr>
        <td>
            <asp:Label ID="lbl_trm" runat="server" CssClass="lbl" 
                Text="<%$ resources:res_metadata,doc_documento_trm %>"></asp:Label>
        </td><td>
        <asp:TextBox ID="txt_trm" runat="server" CssClass="txt_numero"></asp:TextBox>
        </td><td>
            <act:FilteredTextBoxExtender ID='ftb_trm' runat='server' TargetControlID='txt_trm'
FilterType='Numbers,Custom' /></td>
    </tr>       
            </table>
        </asp:Panel>
    </td>
</tr>

<tr>
<td style="white-space: nowrap;" colspan="2">
<asp:CheckBox ID="chb_otPadre" runat="server" CssClass="lbl"  Text='<%$Resources:res_controles,CheckOtPadre %>' AutoPostBack="true" Visible="false" />
</td>
</tr>

<tr><td style="white-space: nowrap;">
<asp:Panel ID="Panel1" runat="server" GroupingText="" Visible="false">
<table>

<!-- <tr>
<td style="white-space: nowrap;" colspan="2">
<asp:RadioButtonList ID="rbl_crearOT" runat="server" CssClass="rbl" AutoPostBack="true">
<asp:ListItem Selected="True" Value="0" Text="noCargarItems"></asp:ListItem>
<asp:ListItem Value="1" Text="cargarAot"></asp:ListItem>
<asp:ListItem Value="2" Text="generarOT"></asp:ListItem>
</asp:RadioButtonList>
</td>
</tr> -->

<!-- <tr>
<td>
<asp:Label ID="lbl_tipoOt1" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<uc1:busquedaAvanzada ID="bus_subtipodocumentoOT" runat="server" a_bln_obligatorio="False" a_bol_postBack ="true" 
a_str_filtros="id_tipodocumento=2" a_str_tabla="doc_subtipoDocumento" a_bln_mostrarNuevoConDrop="False" />
</td>
</tr> -->

<tr>
<td>
<asp:Label ID="lbl_tipoOt" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<asp:DropDownList ID="drp_subtipodocumentoOT" runat="server"  CssClass ="drp" AutoPostBack="true" >
    </asp:DropDownList>
</td>
</tr>



<tr>
<td>
<asp:Label ID="lbl_tipoServicio" runat="server" CssClass="lbl"></asp:Label>
</td><td><uc1:busquedaAvanzada ID="bus_tipoServicio" runat="server" a_bln_obligatorio="False"
a_str_tabla="gen_tipoServicio" a_bln_mostrarNuevoConDrop="False" />
</td>
</tr>

<tr>
<td>
<asp:Label ID="Label1" runat="server" CssClass="lbl" Text="<%$resources:res_metadata,doc_documento_ot_entaller %>"></asp:Label>
</td>
<td>
<asp:RadioButtonList ID="rbl_entaller" runat="server" RepeatDirection="Horizontal">
<asp:ListItem Value="0" Text="<%$resources:res_etiquetas,no %>" />
<asp:ListItem Value="1" Text="<%$resources:res_etiquetas,si %>" />
</asp:RadioButtonList>
</td>
</tr>

<tr>
<td>
<asp:Label ID="Label2" runat="server" CssClass="lbl" Text="<%$resources:res_metadata,doc_documento_ot_id_departamentosolicitud %>"></asp:Label>
</td>
<td>
<uc1:busquedaAvanzada ID="bus_departamento" runat="server" a_bln_obligatorio="False"
a_str_tabla="ort_departamentoSolicitud" a_bln_mostrarNuevoConDrop="False" />
</td>
</tr>

 <tr>
<td style="white-space: nowrap;" colspan="2" Visible="false">
<asp:CheckBox ID="chb_requisicion2" runat="server" AutoPostBack="true"  CssClass="chk"  Text='<%$Resources:res_controles,generarRequisicion %>' Visible="false" />
</td>
</tr>

<tr>
<td>
<asp:Label ID="lbl_tipoRequisicion2" runat="server" CssClass="lbl"  Visible="false"></asp:Label>
</td>
<td>
<uc1:busquedaAvanzada ID="bus_subtipodocumentoRQ2" runat="server" a_bln_obligatorio="False"
a_str_tabla="doc_flujoDocumento" a_str_campo ="doc_subtipoDocumento_destino_subtipoDocumento" a_bln_mostrarNuevoConDrop="false" Visible="false" />
</td>
</tr> 

  </table>
</asp:Panel></td>
</tr>

<tr>
<td style="white-space: nowrap;">
<asp:Panel  ID="Panel4" runat="server" GroupingText=" " Visible="false">
<table>

<tr>
<td>
<asp:Label ID="lbl_tipoAlquiler" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<asp:DropDownList ID="drp_subtipodocumentoALQ" runat="server"  CssClass ="drp" AutoPostBack="true" >
    </asp:DropDownList>
</td>
</tr>

<tr>
<td>
<asp:Label ID="lbl_fechaCompromiso" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<fec:fechaAvanzada ID='fec_fecha_compro' runat='server' a_str_prefijo='ff' a_bln_obligatorio='True'
a_str_grupoValidacion='form'></fec:fechaAvanzada>
</td>
</tr>

<tr>
<td>
<asp:Label ID="lbl_tipoFacturacion" runat="server" CssClass="lbl"></asp:Label>
</td>
<!--<td>
<uc1:busquedaAvanzada ID="bus_tipodefacturazion" runat="server" a_bln_obligatorio="False"
a_str_filtros="id_tipodocumento=3" a_str_tabla="doc_subtipoDocumento" a_bln_mostrarNuevoConDrop="false" />
</td> -->
<td class='td_controlesFormulario'>
    <asp:DropDownList ID="drp_mesVencido" runat="server"  CssClass ="drp" AutoPostBack="true" >
    </asp:DropDownList>
</td>
</tr>


<tr>
<td style="white-space: nowrap;" colspan="2">
<asp:CheckBox ID="chb_preliquidacion" runat="server" AutoPostBack="true" CssClass="chk"  Text='<%$Resources:res_controles,generarPreliquidacion %>' Visible="false" />
</td>
</tr>

<tr>
<td>
<asp:Label ID="lbl_preliquidacion" runat="server" CssClass="lbl" Visible="false" ></asp:Label>
</td>
<td >
<uc1:busquedaAvanzada ID="bus_subtipodocumentoPRE" runat="server" a_bln_obligatorio="False"  a_bol_postBack ="true" 
 a_str_tabla="doc_flujoDocumento" a_str_campo ="doc_subtipoDocumento_destino_subtipoDocumento" a_bln_mostrarNuevoConDrop="false" Visible="false" />
</td>
</tr>

<tr>
<td align='center' td style="white-space: nowrap;" colspan="2">
<asp:Label ID="lbl_validarTarifas" runat="server" CssClass="lbl_mensaje" Visible="false" ></asp:Label>
</td>
</tr>

</table>
</asp:Panel>
</td>
</tr>







<tr><td style="white-space: nowrap;">
<asp:Panel ID="Panel2" runat="server" GroupingText=" ">
<table><tr>
<td style="white-space: nowrap;" colspan="2">
<asp:CheckBox ID="chb_requisicion" runat="server"  AutoPostBack="true"  CssClass="chk" Text='<%$Resources:res_controles,generarRequisicion %>' />
</td></tr>
<tr><td>
<asp:Label ID="lbl_tipoRequisicion" runat="server" CssClass="lbl"></asp:Label>
</td><td>
<uc1:busquedaAvanzada ID="bus_subtipodocumentoRQ" runat="server"  a_bol_postBack ="true" 
 a_str_tabla="doc_flujoDocumento" a_str_campo ="doc_subtipoDocumento_destino_subtipoDocumento" a_bln_mostrarNuevoConDrop="false" />
</td></tr></table></asp:Panel></td></tr>

<tr>
<td style="white-space: nowrap;">

<table ID="Panel3" runat="server" ><tr><td>
<asp:Label ID="lbl_notas" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,doc_documento_estadotipodocumento_notas%>'></asp:Label>
</td><td>
<asp:TextBox ID="txt_notas" runat="server" CssClass="txt_multilinea" TextMode="MultiLine"></asp:TextBox>
</td></tr>
<tr>
<td></td>
<td> 
<asp:CheckBox ID="chk_comentario" runat="server" CssClass="lbl" />
</td>
</tr>
</table></td></tr><tr>
<td align='center'>
<cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="~/images/botones/aceptar.jpg"
ValidationGroup="cot" />
</td></tr><tr>
<td align='center'>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
<br/>
<asp:LinkButton CausesValidation="false" ID="lnk_tercero" runat="server" CssClass="lbl_titulovalor" ></asp:LinkButton>
</td>
</tr>
</table>
