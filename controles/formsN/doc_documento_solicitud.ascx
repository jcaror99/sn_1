<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='doc_documento_solicitud.ascx.vb'
Inherits='website.samm_componentes.controles_seg_doc_documento_solicitud_N' %>
<%@ Register Src="../equ/equ_documentosCurso.ascx" TagName="equ_documentosCurso"
TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
TagPrefix="uc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/taxonomia.ascx" TagName="taxonomia" TagPrefix="tax" %>
<table class='tbl_marcoFormulario'>
<tr>
<td>
<asp:Panel ID='pan_formulario' runat='server' DefaultButton='imbGuardar'>
<table class='tbl_formulario' border='0' id="tbl_formulario" runat='server' cellpadding='0' cellspacing='0'>
<tr>
<td align='right' colspan='1' class='td_formEspacioH'>
<img alt="" src="../../images/interfaz/spacer.gif" style="width: 17px; height: 1px" /><img
alt="" src="../../images/interfaz/spacer.gif" style="width: 17px; height: 1px" />
</td>
<td align='right' colspan='3' class='td_formEspacioV'>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td align='right' valign='top'>
<act:togglebuttonextender id='ToggleButtonExtender1' runat='server' checkedimagealternatetext='<%$ Resources:res_controles,ayuda_especificano %>'
checkedimageurl='../../images/iconos/ojo1.png' imageheight='26' imagewidth='30'
targetcontrolid='chb_ayudaCampo' uncheckedimagealternatetext='<%$ Resources:res_controles,ayuda_especifica %>'
uncheckedimageurl='../../images/iconos/ojo2.png'></act:togglebuttonextender>
<table border='0' cellpadding='0' cellspacing='0' id='tbl_estadoformulario'>
<tr>
<td>
<asp:Label ID='lbl_estadoFormulario' runat='server' CssClass='lbl_estadoFormulario'></asp:Label>
</td>
<td>
<asp:CheckBox ID='chb_ayudaCampo' runat='server' AutoPostBack='True' CssClass='chb' />
</td>
</tr>
</table>
<table id="tbl" runat='server'>
<tr>
<td></td>
<td colspan="3">
<asp:Label ID="lbl_mensajeNoCrear" runat="server" CssClass="lbl_mensaje" Visible="false"></asp:Label>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td rowspan="3">
<asp:TextBox ID='txt_prefijo' runat='server' MaxLength='10' CssClass='txt_formulario'
BorderWidth="0px" BackColor="transparent" Font-Bold="true"></asp:TextBox><asp:Label
ID="lbl_separador" runat="server" Text="-"></asp:Label>
</td>
</tr>
<tr>
<td>
<asp:Label ID='lbl_documento_numero_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td align='right'>
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
<asp:TextBox ID='txt_documento_numero' runat='server' CssClass='txt_entero' ReadOnly="True"></asp:TextBox><act:filteredtextboxextender
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
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_subtipoDocumento' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_subtipoDocumento' runat='server' a_str_tabla='doc_subtipoDocumento'
a_bln_obligatorio='True' a_str_grupoValidacion='form' a_str_filtros="id_tipoDocumento=1"
a_NObol_guardarNoExiste="true" />
</td>
<td>
</td>
</tr>
<tr id="Codigo" runat='server'>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_documento_codigo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_documento_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr align='right'  id="Fecha" runat="server">
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_fecha_fh' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_fecha_fh_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_fecha_fh_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fecha_fh' runat='server' a_str_prefijo='fh' a_bln_obligatorio='True'
a_str_grupoValidacion='form' a_bol_deshabilitar="false"></fec:fechaAvanzada>
</td>
</tr>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fecha_fh_bus' runat='server' CssClass='txt_fecha_bus'
CssClassHora='txt_hora_bus' a_str_prefijo='fh' a_bln_obligatorio="true"></fec:fechaAvanzada>
</td>
</tr>
</table>
</td>
<td>
</td>
</tr>
<tr id="Prioridad" runat='server'>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_prioridadDocumento' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_prioridadDocumento' runat='server' a_str_tabla='doc_prioridadDocumento'
a_bln_obligatorio='True' a_str_grupoValidacion='form' a_str_filtros="id_tipoDocumento=1" />
</td>
<td>
</td>
</tr>
<tr align='right' id="FLimite" runat="server">
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr >
<td align='right'>
<asp:Label ID='lbl_fechaLimite_fh' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_fechaLimite_fh_bus' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_fechaLimite_fh_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaLimite_fh' runat='server' a_str_prefijo='fh' a_bln_obligatorio='false'
a_bol_deshabilitar="false"></fec:fechaAvanzada>
</td>
</tr>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaLimite_fh_bus' runat='server' CssClass='txt_fecha_bus'
CssClassHora='txt_hora_bus' a_str_prefijo='fh' a_bln_obligatorio="true"></fec:fechaAvanzada>
</td>
</tr>
</table>
</td>
<td>
</td>
</tr>
<tr align='right' id="Fsugerida" runat="server">
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr >
<td align='right'>
<asp:Label ID='lbl_fechasugerida_ff' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_fechasugerida_ff_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_fechasugerida_ff_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechasugerida_ff' runat='server' a_str_prefijo='fh' a_bln_obligatorio='True'
a_str_grupoValidacion='form'></fec:fechaAvanzada>
</td>
</tr>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechasugerida_ff_bus' runat='server' CssClass='txt_fecha_bus'
CssClassHora='txt_hora_bus' a_str_prefijo='fh'></fec:fechaAvanzada>
</td>
</tr>
</table>
</td>
<td>
</td>
</tr>
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_fechaCierre_ff' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_fechaCierre_ff_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_fechaCierre_ff_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaCierre_ff' runat='server' a_str_prefijo='ff'></fec:fechaAvanzada>
</td>
</tr>
<tr>
<td>
<fec:fechaAvanzada ID='fec_fechaCierre_ff_bus' runat='server' CssClass='txt_fecha_bus'
CssClassHora='txt_hora_bus' a_str_prefijo='ff'></fec:fechaAvanzada>
</td>
</tr>
</table>
</td>
<td>
</td>
</tr>
<tr id="cliente" runat="server">
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_tercero_cliente' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tercero_cliente' runat='server' a_str_tabla='ter_tercero'
a_bln_obligatorio='True' a_str_grupoValidacion='form' a_bol_postBack="true" a_str_filtros="esCliente=1"
a_bln_mostrarNuevoConDrop="true" />
</td>
<td>
</td>
</tr>
<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
</td>
<td class="td_controlesFormulario">
<asp:Label ID="lbl_clienteBloqueado" runat="server" CssClass="lbl_mensaje" Visible="False"></asp:Label>
</td>
<td>
</td>
</tr>
<tr id="Sucursal" runat='server'>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_sucursal' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_sucursal' runat='server' a_str_tabla='ter_sucursal'
a_bln_obligatorio='True' a_str_grupoValidacion='form' a_bol_postBack="true" a_bln_mostrarNuevoConDrop="true" />
</td>
<td>
</td>
</tr>


<tr>
<td>
</td>
<td>
</td>
<td>

<asp:Label ID='lbl_patch' runat='server' CssClass='lbl' Visible="true"></asp:Label>
</td>
</tr>




<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
</td>
<td class="td_controlesFormulario">
<asp:Label ID="lbl_sucursalBloqueado" runat="server" CssClass="lbl_mensaje" Visible="False"></asp:Label>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_equipo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_equipo' runat='server' a_str_tabla='equ_equipo' a_bln_obligatorio='False'
a_str_grupoValidacion="form" a_bol_postBack="true" a_str_campo="equipo,equipo_serial,equipo_codigo"
a_str_camposGrilla="equipo,equipo_serial,equipo_codigo,ter_tercero_tercero,ter_sucursal_sucursal,gen_zona_zona,vencimientoGarantiaDistribuidor_ff,garantiaCancelada"
a_bln_mostrarNuevoConDrop="true"  a_bol_recursivoTodoelArbol="false"  />
</td>
<td>
</td>
</tr>

<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='Label2' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='td_controlesFormulario'>
<asp:Label ID='lbl_horometro2' runat='server' CssClass='lbl'></asp:Label>
</td>
<td>
</td>
</tr>

<tr id="Tr1" runat="server">
<td align='right'>
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_horometro" runat="server" Text="<%$ Resources:res_metadata,equ_equipo_horometroactual%>" Visible="false" CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:TextBox ID="txt_horometro" runat="server" CssClass="txt_precio" Visible="false"></asp:TextBox>
</td>
</tr>



<tr id="tr_taxonomia" runat="server">
<td>
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_taxonomia" runat="server" cssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<tax:taxonomia ID="tax_taxonomia" runat="server" a_bln_obligatorio="true" a_str_grupoValidacion="form" a_str_tabla="doc_documento.solicitud"  />
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
</td>
<td class='td_controlesFormulario'>
<uc2:equ_documentosCurso ID="eqOts" runat="server" a_bol_mostrarOT="true" a_bol_mostrarSOL="true" />
</td>
<td>
</td>
</tr>
<tr id = 'Zona' runat='server'>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_zona' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_zona' runat='server' a_str_tabla='gen_zona' a_bln_obligatorio='True'  a_bol_recursivoTodoelArbol="true" 
a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr id='Contactos' runat='server'>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_contacto" runat="server" CssClass="lbl" Text="<%$ Resources:res_etiquetas_ort,contactos %>"></asp:Label>
</td>
<td class="td_controlesFormulario">
<uc1:busquedaAvanzadaMultiple ID="busContactos" runat="server" a_str_tabla="ter_contacto" />
</td>
<td>
</td>
</tr>


<tr>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_usuarioAsignado" runat="server" CssClass="lbl" ></asp:Label>
</td>
<td class="td_controlesFormulario">
<bus:busquedaAvanzada ID='bus_UsuarioAsignado' runat='server' a_str_tabla='seg_usuario' a_bln_obligatorio='True' a_str_grupoValidacion='form'
a_bol_postBack="true" a_bln_mostrarNuevoConDrop="true" a_bol_recursivoTodoelArbol="false"  />
</td>
<td>
</td>
</tr>

<tr id ='Solicitante' runat='Server'>
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_solicitante" runat="server" CssClass="lblobligatorio"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:TextBox ID='txt_solicitante' runat='server' MaxLength='100' CssClass='txt_multilinea' AutoPostBack="true" ></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_solicitante' runat='server' ControlToValidate='txt_solicitante'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr id='Cargo' runat='server'>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_cargo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_cargo' runat='server' MaxLength='50' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr id='Direccion' runat='server'>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_direccion' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_direccion' runat='server' a_bln_obligatorio='true' a_bol_txtnormal ="true" >
</txt:textoAvanzado>
<%--<asp:TextBox ID='txt_direccion' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
--%></td>
<td>
<%--<asp:RequiredFieldValidator ID='rfv_direccion' runat='server' ControlToValidate='txt_direccion'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
--%></td>
</tr>
<tr id = 'Telefono' runat='server'>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_telefono' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_telefono' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_telefono' runat='server' ControlToValidate='txt_telefono'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr id='Fax'>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_fax' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_fax' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr id ='Email' runat='server'>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_email' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_email' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr id='Departamento' runat='server'>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_departamentoSolicitud' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_departamentoSolicitud' runat='server' a_str_tabla='ort_departamentoSolicitud'
a_bln_obligatorio='True' a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr id = 'Medio' runat='server'>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_medioSolicitud' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_medioSolicitud' runat='server' a_str_tabla='doc_medioSolicitud'
a_bln_obligatorio='True' a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_notas' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_notas' runat='server' a_bln_obligatorio='True' a_str_grupoValidacion='form'>
</txt:textoAvanzado>
</td>
<td>
</td>
</tr>
<tr id='Proveedor' runat='server'>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_tercero_proveedor' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tercero_proveedor' runat='server' a_str_tabla='ter_tercero' a_str_pagina = "equ_equipo" />
</td>
<td>
</td>
</tr>
<tr visible="false">
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_solucionTelefonica' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_solucionTelefonica' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
RepeatLayout='Flow'>
<asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
<asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
</td>
</tr>
<tr visible="false">
<td align="right">
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_estados" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<bus:busquedaAvanzada ID="bus_estados" runat="server" a_str_tabla="doc_estadoTipoDocumento" />
</td>
<td>
</td>
</tr>
</table>
<table id='tbl_guardarformulario'>
<tr>
<td>
<asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje'
ForeColor='' HeaderText='<%$Resources:res_mensajes,camposObligatorios %>' />
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
<td valign='middle' align='right'>
<bti:BotonImagen ID='imbGuardar' runat='server' ImageUrl='../../images/botones/aceptar.png'
ValidationGroup='form' CssClass='imb' />
</td>
</tr>
</table>
<table>
<tr>
<td>
<asp:HyperLink ID="lnk_nuevo" runat="server" Visible="false" CssClass="lnk"></asp:HyperLink> &nbsp
<asp:HyperLink ID="lnk_imprimir" runat="server" Visible="false" CssClass="lnk" Target="_blank"></asp:HyperLink> &nbsp
<asp:HyperLink ID="lnk_editar" runat="server" Visible="false" CssClass="lnk" Target="_blank"></asp:HyperLink> &nbsp
<asp:HyperLink ID="lnk_archivar" runat="server" Visible="false" CssClass="lnk" Target="_blank"></asp:HyperLink> &nbsp
</td>
</tr>
</table>
</td>
</tr>
</table>
</asp:Panel>
</td>
</tr>
</table>
<asp:HiddenField ID='hddEstadoFormulario' runat='server' Value='<%# samm_logica.enu_estadoFormulario.buscar %>' />
<boc:bocadillo ID="Bocadillo" runat="server" />
