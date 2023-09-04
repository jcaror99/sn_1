<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='seg_usuario.ascx.vb'
Inherits='website.samm_componentes.controles_seg_seg_usuario_N' %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<table class='tbl_marcoFormulario'>
<tr>
<td>
<asp:Panel ID='pan_formulario' runat='server' DefaultButton='imbGuardar'>
<table class='tbl_formulario' border='0' cellpadding='0' cellspacing='0'>
<tr>
<td align='right' colspan='1' class='td_formEspacioH'>
<img alt="" src="../../images/interfaz/spacer.gif" style="width: 17px; height: 1px" />
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
<table>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_usuario' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_usuario' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_usuario' runat='server' ControlToValidate='txt_usuario'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_perfil' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_perfil' runat='server' a_str_tabla='seg_perfil' a_bln_obligatorio='True'
a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_cargo' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_cargo' runat='server' a_str_tabla='seg_cargo' a_bln_obligatorio='True'
a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_grupo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_grupo' runat='server' a_str_tabla='seg_grupo' a_bln_obligatorio='False'
a_str_filtros="activo=1" />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_zona' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_zona' runat='server' a_str_tabla='gen_zona' a_bln_obligatorio='True'
a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_nombre' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_nombre' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_profesion' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_profesion' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_email' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_email' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_email' runat='server' ControlToValidate='txt_email'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_direccion' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_direccion' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_telefono' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_telefono' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
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
<asp:Label ID='lbl_costoHora' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_costoHora_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_costoHora_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_costoHora' runat='server' CssClass='txt_precio'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_costoHora_bus' runat='server' CssClass='txt_precio_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<act:filteredtextboxextender id='ftb_costoHora' runat='server' targetcontrolid='txt_costoHora'
filtertype='Numbers,Custom' />
<act:filteredtextboxextender id='ftb_costoHora_bus' runat='server' targetcontrolid='txt_costoHora_bus'
filtertype='Numbers,Custom' />
</td>
</tr>
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_porcentajeComision' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_porcentajeComision_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_porcentajeComision_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_porcentajeComision' runat='server' CssClass='txt_numero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_porcentajeComision_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<act:filteredtextboxextender id='ftb_porcentajeComision' runat='server' targetcontrolid='txt_porcentajeComision'
filtertype='Numbers,Custom' />
<act:filteredtextboxextender id='ftb_porcentajeComision_bus' runat='server' targetcontrolid='txt_porcentajeComision_bus'
filtertype='Numbers,Custom' />
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_accesoActivo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_accesoActivo' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
RepeatLayout='Flow'>
<asp:ListItem Value='1' ></asp:ListItem>
<asp:ListItem Value='0' ></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_cambiarClave' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_cambiarClave' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
RepeatLayout='Flow'>
<asp:ListItem Value='1' ></asp:ListItem>
<asp:ListItem Value='0' ></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_aplicaRecargo' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_aplicaRecargo' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
RepeatLayout='Flow'>
<asp:ListItem Value='1'></asp:ListItem>
<asp:ListItem Value='0' ></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_aplicaRecargo' runat='server' ControlToValidate='rbl_aplicaRecargo'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_sexo' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_sexo' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
RepeatLayout='Flow'>
<asp:ListItem Value='1' ></asp:ListItem>
<asp:ListItem Value='0' ></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_sexo' runat='server' ControlToValidate='rbl_sexo'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
     <tr>
<td align='right'></td>        <td class='td_lblFormulario'>
            <asp:Label ID='lbl_habilitado' runat='server' cssclass='lbl'></asp:Label></td>
        <td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_habilitado' runat='server' CssClass='rbl' RepeatDirection='Horizontal' RepeatLayout='Flow'><asp:ListItem Value='1'></asp:ListItem><asp:ListItem Value='0'></asp:ListItem></asp:RadioButtonList>            </td>        <td>
</td>     </tr>
</table>
<table id='tbl_guardarformulario'>
<tr>
<td>
<asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje'
ForeColor='' />
</td>
<td>
<asp:Label ID="lbl_mansajeError" runat="server" Text="" CssClass="lbl_mensaje"></asp:Label>
</td>
<td valign='middle' align='right'>
<bti:BotonImagen ID='imbGuardar' runat='server' ImageUrl='../../images/botones/aceptar.png'
ValidationGroup='form' CssClass='imb' />
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
