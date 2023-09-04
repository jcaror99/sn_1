<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='cat_catalogo_actividad.ascx.vb'
Inherits='website.samm_componentes.controles_seg_cat_catalogo_actividad' %>
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
<asp:Label ID='lbl_catalogo_actividad' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_catalogo_actividad' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_catalogo_actividad' runat='server' ControlToValidate='txt_catalogo_actividad'
    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_codigoInventario' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_codigoInventario' runat='server' MaxLength='50' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_codigoInventario' runat='server' ControlToValidate='txt_codigoInventario'
    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_catalogo_codigo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_catalogo_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_catalogo_codigo' Enabled="false" runat='server'
    ControlToValidate='txt_catalogo_codigo' ValidationGroup="form" SetFocusOnError='True'
    CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_familia' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_familia' runat='server' a_str_tabla='gen_familia' a_bln_obligatorio='True'
    a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_subTipoCatalogo' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_subTipoCatalogo' runat='server' a_str_tabla='cat_subtipoCatalogo'
    a_bln_obligatorio='True' a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_impuesto' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_impuesto' runat='server' a_str_tabla='gen_impuesto'
    a_bln_obligatorio='True' a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_unidad' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_unidad' runat='server' a_str_tabla='gen_unidad' a_bln_obligatorio='True'
    a_str_grupoValidacion='form' />
</td>
<td>
</td>
</tr>

<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_dias_garantia' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
  
            <asp:TextBox ID='txt_dias_garantia' runat='server' CssClass='txt_numero'></asp:TextBox>
     
</td>
<act:filteredtextboxextender id='ftb_diasGarantia' runat='server' targetcontrolid='txt_dias_garantia'
    filtertype='Numbers,Custom' />
<td>
</td>
</tr>
</table>
</td>
<td class='td_separadorFormulario' rowspan='2'>
<img alt="" src="../../images/interfaz/spacer.gif" width="12" />
</td>
<td class='td_controlesFormulario' rowspan='2' style='height: 100%' valign='bottom'>
<table>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_esProductiva' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_esProductiva' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
    RepeatLayout='Flow'>
    <asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
    <asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
</asp:RadioButtonList>
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
            <asp:Label ID='lbl_duracionEstimada' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td align='right' style='padding-left: 8px'>
            <asp:Label ID='lbl_duracionEstimada_busDesde' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td align='right'>
            <asp:Label ID='lbl_duracionEstimada_busA' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
    <tr>
        <td>
            <asp:TextBox ID='txt_duracionEstimada' runat='server' CssClass='txt_numero'></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID='txt_duracionEstimada_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
        </td>
    </tr>
</table>
</td>
<td>
<act:filteredtextboxextender id='ftb_duracionEstimada' runat='server' targetcontrolid='txt_duracionEstimada'
    filtertype='Numbers,Custom' />
<act:filteredtextboxextender id='ftb_duracionEstimada_bus' runat='server' targetcontrolid='txt_duracionEstimada_bus'
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
            <asp:Label ID='lbl_precioVenta' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td align='right' style='padding-left: 8px'>
            <asp:Label ID='lbl_precioVenta_busDesde' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td align='right'>
            <asp:Label ID='lbl_precioVenta_busA' runat='server' CssClass='lbl'></asp:Label>
        </td>
    </tr>
</table>
</td>
<td class='td_controlesFormulario'>
<table cellpadding='0' cellspacing='0'>
    <tr>
        <td>
            <asp:TextBox ID='txt_precioVenta' runat='server' CssClass='txt_precio'></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID='txt_precioVenta_bus' runat='server' CssClass='txt_precio_bus'></asp:TextBox>
        </td>
    </tr>
</table>
</td>
<td>
<act:filteredtextboxextender id='ftb_precioVenta' runat='server' targetcontrolid='txt_precioVenta'
    filtertype='Numbers,Custom' />
<act:filteredtextboxextender id='ftb_precioVenta_bus' runat='server' targetcontrolid='txt_precioVenta_bus'
    filtertype='Numbers,Custom' />
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_procedimiento' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_procedimiento' runat='server' a_bln_obligatorio='false'>
</txt:textoAvanzado>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_descripcion' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_descripcion' runat='server' a_bln_obligatorio='False'
    a_str_grupoValidacion='form'></txt:textoAvanzado>
</td>
<td>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_bloquearCostear' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_bloquearCostear' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
    RepeatLayout='Flow'>
    <asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
    <asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
</asp:RadioButtonList>
</td>
</tr>
</table>
<table id='tbl_guardarformulario'>
<tr>
<td>
<asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje'
    ForeColor='' />
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
<td valign='middle' align='right'>
<bti:BotonImagen ID='imbGuardar' runat='server' ImageUrl='../../images/botones/aceptar.png'
    ValidationGroup='form' CssClass='imb' />
</td>
</tr>
</table>
</tr>
</table>
</asp:Panel>
</td>
</tr>
</table>
<asp:HiddenField ID='hddEstadoFormulario' runat='server' Value='<%# samm_logica.enu_estadoFormulario.buscar %>' />
<boc:bocadillo ID="Bocadillo" runat="server" />
