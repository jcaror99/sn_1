<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='tax_nivelTax.ascx.vb' Inherits='website.samm_componentes.controles_seg_tax_nivelTax' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<script type="text/javascript" src="../../js/interfaz/formularios.js"></script>
<table class='tbl_marcoFormulario'><tr><td> 
<asp:Panel ID='pan_formulario' runat='server' DefaultButton='imbGuardar'>
<table class='tbl_formulario' border='0' cellpadding='0' cellspacing='0'>
<tr>
    <td align='right' colspan='1' class='td_formEspacioH'>
        <img alt='' src='../../images/interfaz/spacer.gif' style='width:17px;height:1px' />
    </td>
    <td align='right' colspan='3' class='td_formEspacioV'>
    </td>
</tr>
<tr>
    <td align='right'></td>
    <td align='right' valign='top'>
        <act:ToggleButtonExtender ID='ToggleButtonExtender1' runat='server' CheckedImageUrl='../../images/iconos/ojo1.png' ImageHeight='26' 
            ImageWidth='30' TargetControlID='chb_ayudaCampo' UncheckedImageUrl='../../images/iconos/ojo2.png'>
        </act:ToggleButtonExtender>
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
<td align='right'></td>        <td class='td_lblFormulario'>
            <asp:Label ID='lbl_nivelTax' runat='server' cssclass='lblobligatorio'></asp:Label></td>
        <td class='td_controlesFormulario'>
           <asp:TextBox ID='txt_nivelTax' runat='server'  MaxLength='300' CssClass='txt_multilinea'></asp:TextBox>
</td>        <td>
<asp:RequiredFieldValidator ID='rfv_nivelTax' runat='server' ControlToValidate='txt_nivelTax' ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="" >*</asp:RequiredFieldValidator>
</td>     </tr>
     <tr>
<td align='right'></td>        <td class='td_lblFormulario'>
            <asp:Label ID='lbl_nivelTax_codigo' runat='server' cssclass='lbl'></asp:Label></td>
        <td class='td_controlesFormulario'>
           <asp:TextBox ID='txt_nivelTax_codigo' runat='server'  MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>        <td>
</td>     </tr>
     <tr>
<td align='right'></td>        <td class='td_lblFormulario'>
            <asp:Label ID='lbl_id_nivelTax' runat='server' cssclass='lbl'></asp:Label></td>
        <td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_nivelTax' runat='server' a_str_tabla='tax_nivelTax' a_bln_obligatorio='False' a_str_grupoValidacion='form'  /></td>        <td>
</td>     </tr>
     <tr>
<td align='right'></td>        <td class='td_lblFormulario'>
            <asp:Label ID='lbl_tabla' runat='server' cssclass='lblobligatorio'></asp:Label></td>
        <td class='td_controlesFormulario'>
           <asp:TextBox ID='txt_tabla' runat='server'  MaxLength='300' CssClass='txt_multilinea'></asp:TextBox>
</td>        <td>
<asp:RequiredFieldValidator ID='rfv_tabla' runat='server' ControlToValidate='txt_tabla' ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="" >*</asp:RequiredFieldValidator>
</td>     </tr>
     <tr>
<td align='right'></td>        <td class='td_lblFormulario'>
            <asp:Label ID='lbl_filtro' runat='server' cssclass='lblobligatorio'></asp:Label></td>
        <td class='td_controlesFormulario'>
           <asp:TextBox ID='txt_filtro' runat='server'  MaxLength='300' CssClass='txt_multilinea'></asp:TextBox>
</td>        <td>
<asp:RequiredFieldValidator ID='rfv_filtro' runat='server' ControlToValidate='txt_filtro' ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="" >*</asp:RequiredFieldValidator>
</td>     </tr>
     <tr>
<td align='right'></td>        <td class='td_lblFormulario'>
            <asp:Label ID='lbl_columnaPrincipal' runat='server' cssclass='lblobligatorio'></asp:Label></td>
        <td class='td_controlesFormulario'>
           <asp:TextBox ID='txt_columnaPrincipal' runat='server'  MaxLength='300' CssClass='txt_multilinea'></asp:TextBox>
</td>        <td>
<asp:RequiredFieldValidator ID='rfv_columnaPrincipal' runat='server' ControlToValidate='txt_columnaPrincipal' ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="" >*</asp:RequiredFieldValidator>
</td>     </tr>
     <tr>
<td align='right'></td>        <td class='td_lblFormulario'>
            <asp:Label ID='lbl_esEquipo' runat='server' cssclass='lblobligatorio'></asp:Label></td>
        <td class='td_controlesFormulario'>
    <asp:RadioButtonList ID='rbl_esEquipo' runat='server' CssClass='rbl' RepeatDirection='Horizontal' RepeatLayout='Flow'>
    <asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
    <asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
    </asp:RadioButtonList>            </td>        <td>
<asp:RequiredFieldValidator ID='rfv_esEquipo' runat='server' ControlToValidate='rbl_esEquipo' ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="" >*</asp:RequiredFieldValidator>
</td>     </tr>
      </table>
<table id='tbl_guardarformulario'><tr><td><asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje' ForeColor='' /></td>
<bti:BotonImagen ID='imbGuardar' runat='server' ImageUrl='../../images/botones/aceptar.png'  ValidationGroup='form'  CssClass='imb'/>
</td></tr></table></td></tr></table>
</asp:Panel></td></tr></table>
<asp:HiddenField ID='hddEstadoFormulario' runat='server' Value='<%# samm_logica.enu_estadoFormulario.buscar %>' />
<boc:bocadillo ID="Bocadillo" runat="server" />