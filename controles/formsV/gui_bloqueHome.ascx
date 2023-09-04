<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='gui_bloqueHome.ascx.vb'
Inherits='website.samm_componentes.controles_seg_gui_bloqueHome' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table class='tbl_marcoFormulario'>
<tr>
<td>
<asp:Panel ID='pan_formulario' runat='server' DefaultButton='imbGuardar'>
<table class='tbl_formulario' border='0' cellpadding='0' cellspacing='0'>
<tr>
<td align='right' colspan='1' class='td_formEspacioH'>
<img alt='' src='../../images/interfaz/spacer.gif' style='width: 17px; height: 1px' />
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
<asp:Label ID='lbl_bloqueHome' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_bloqueHome' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_bloqueHome' runat='server' ControlToValidate='txt_bloqueHome'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_bloqueHome_codigo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_bloqueHome_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_nombreControl' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_nombreControl' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_nombreControl' runat='server' ControlToValidate='txt_nombreControl'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_urlBusqueda' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_urlBusqueda' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_urlBusqueda' runat='server' ControlToValidate='txt_urlBusqueda'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
</table>
</td>
<td class='td_separadorFormulario' rowspan='2'>
<img alt='' src='../../images/interfaz/spacer.gif' width='12px' />
</td>
<td class='td_controlesFormulario' rowspan='2' style='height: 100%' valign='bottom'>
<table>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_urlNuevo' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_urlNuevo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_urlNuevo' runat='server' ControlToValidate='txt_urlNuevo'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
    <asp:Label ID='lbl_orden' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
    <asp:Label ID='lbl_orden_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
    <asp:Label ID='lbl_orden_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
    <asp:TextBox ID='txt_orden' runat='server' CssClass='txt_entero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
    <asp:TextBox ID='txt_orden_bus' runat='server' CssClass='txt_entero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_orden' runat='server' ControlToValidate='txt_orden'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
id='ftb_orden' runat='server' targetcontrolid='txt_orden' filtertype='Numbers' /><act:filteredtextboxextender
    id='ftb_orden_bus' runat='server' targetcontrolid='txt_orden_bus' filtertype='Numbers' />
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_colorModulo' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_colorModulo' runat='server' MaxLength='3' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_colorModulo' runat='server' ControlToValidate='txt_colorModulo'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_esGenerico' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_esGenerico' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
RepeatLayout='Flow'>
<asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
<asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_esGenerico' runat='server' ControlToValidate='rbl_esGenerico'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_filtro' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_filtro' runat='server' a_bln_obligatorio='True' a_str_grupoValidacion='form'>
</txt:textoAvanzado>
</td>
<td>
</td>
</tr>
     <tr>
<td align='right'></td>        <td class='td_lblFormulario'>
            <asp:Label ID='lbl_actualizacion' runat='server' cssclass='lbl'></asp:Label></td>
        <td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_actualizacion' runat='server' CssClass='rbl' RepeatDirection='Horizontal' RepeatLayout='Flow'><asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem><asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem></asp:RadioButtonList>            </td>        <td>
</td>     </tr>
</table>
<table id='tbl_guardarformulario'>
<tr>
<td>
<asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje'
ForeColor='' />
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
