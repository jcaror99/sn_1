<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='gui_detalleBloqueHome.ascx.vb'
Inherits='website.samm_componentes.controles_seg_gui_detalleBloqueHome' %>
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
<asp:Label ID='lbl_detalleBloqueHome' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_detalleBloqueHome' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_detalleBloqueHome' runat='server' ControlToValidate='txt_detalleBloqueHome'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_detalleBloqueHome_codigo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_detalleBloqueHome_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_bloqueHome' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_bloqueHome' runat='server' a_str_tabla='gui_bloqueHome'
a_bln_obligatorio='True' a_str_grupoValidacion='form' />
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
<asp:Label ID='lbl_tipoCampo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_tipoCampo_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_tipoCampo_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_tipoCampo' runat='server' CssClass='txt_entero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_tipoCampo_bus' runat='server' CssClass='txt_entero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<act:filteredtextboxextender id='ftb_tipoCampo' runat='server' targetcontrolid='txt_tipoCampo'
filtertype='Numbers' />
<act:filteredtextboxextender id='ftb_tipoCampo_bus' runat='server' targetcontrolid='txt_tipoCampo_bus'
filtertype='Numbers' />
</td>
</tr>
</table>
</td>
<td class='td_separadorFormulario' rowspan='2'>
<img alt='' src='../../images/interfaz/spacer.gif' width='12px' />
</td>
<td class='td_controlesFormulario' rowspan='2' style='height: 100%' valign='bottom'>
<table>
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_orden' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_orden_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_orden_busA' runat='server' CssClass='lbl'></asp:Label>
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
<act:filteredtextboxextender id='ftb_orden' runat='server' targetcontrolid='txt_orden'
filtertype='Numbers' />
<act:filteredtextboxextender id='ftb_orden_bus' runat='server' targetcontrolid='txt_orden_bus'
filtertype='Numbers' />
</td>
</tr>
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_tipoBloqueHome' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_tipoBloqueHome_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_tipoBloqueHome_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_tipoBloqueHome' runat='server' CssClass='txt_entero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_tipoBloqueHome_bus' runat='server' CssClass='txt_entero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<act:filteredtextboxextender id='ftb_tipoBloqueHome' runat='server' targetcontrolid='txt_tipoBloqueHome'
filtertype='Numbers' />
<act:filteredtextboxextender id='ftb_tipoBloqueHome_bus' runat='server' targetcontrolid='txt_tipoBloqueHome_bus'
filtertype='Numbers' />
</td>
</tr>
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_estrategiaFecha' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_estrategiaFecha_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_estrategiaFecha_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_estrategiaFecha' runat='server' CssClass='txt_entero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_estrategiaFecha_bus' runat='server' CssClass='txt_entero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>

<td>
<act:filteredtextboxextender id='ftb_estrategiaFecha' runat='server' targetcontrolid='txt_estrategiaFecha'
filtertype='Numbers' />
<act:filteredtextboxextender id='ftb_estrategiaFecha_bus' runat='server' targetcontrolid='txt_estrategiaFecha_bus'
filtertype='Numbers' />
</td>
</tr>
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_itemsTab' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_itemsTab_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_itemsTab_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_itemsTab' runat='server' CssClass='txt_entero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_itemsTab_bus' runat='server' CssClass='txt_entero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<act:filteredtextboxextender id='ftb_itemsTab' runat='server' targetcontrolid='txt_itemsTab'
filtertype='Numbers' />
<act:filteredtextboxextender id='ftb_itemsTab_bus' runat='server' targetcontrolid='txt_itemsTab_bus'
filtertype='Numbers' />
</td>
</tr>
<tr align='right'>
<td align='right'>
</td>
<td>
<table cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
<asp:Label ID='lbl_posicionTab' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='right' style='padding-left: 8px'>
<asp:Label ID='lbl_posicionTab_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td align='right'>
<asp:Label ID='lbl_posicionTab_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td>
<asp:TextBox ID='txt_posicionTab' runat='server' CssClass='txt_entero'></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID='txt_posicionTab_bus' runat='server' CssClass='txt_entero_bus'></asp:TextBox>
</td>
</tr>
</table>
</td>
<td>
<act:filteredtextboxextender id='ftb_posicionTab' runat='server' targetcontrolid='txt_posicionTab'
filtertype='Numbers' />
<act:filteredtextboxextender id='ftb_posicionTab_bus' runat='server' targetcontrolid='txt_posicionTab_bus'
filtertype='Numbers' />
</td>
</tr>
<tr>
<td colspan="1" ></td>
<td align='right'>
<asp:Label ID='lbl_ordenResultados' runat='server' CssClass='lbl'></asp:Label>
</td>
<td align='left'>
<asp:DropDownList ID="drp_resultados" runat=server CssClass="drp"></asp:DropDownList>
</td>
</tr>
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
<td>
<asp:Label ID="lbl_mensaje_estrategia" runat="server" CssClass="lbl_mensaje" ></asp:Label>
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
