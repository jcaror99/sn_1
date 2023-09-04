<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_contratoPagos.ascx.vb" Inherits="website.samm_componentes.controles_cnt_pop_contratoPagos" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<table>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID='lbl_pagosContrato' runat='server' CssClass='lblobligatorio'></asp:Label></td>
        <td class='td_controlesFormulario'>
            <asp:TextBox ID='txt_pagosContrato' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID='rfv_pagosContrato' runat='server' ControlToValidate='txt_pagosContrato' ValidationGroup="pago" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator></td>
    </tr>
    <tr align='right'>
        <td align='right'>
            <asp:Label ID='lbl_fecha_ff' runat='server' CssClass='lblobligatorio'></asp:Label></td>
        <td class='td_controlesFormulario'>
            <fec:fechaAvanzada ID='fec_fecha_ff' runat='server' a_str_prefijo='ff' a_bln_obligatorio='false' a_str_grupoValidacion="pago"></fec:fechaAvanzada>
        </td>
        <td></td>
    </tr>
    <tr align='right'>
        <td>
            <asp:Label ID='lbl_valor' runat='server' CssClass='lblobligatorio'></asp:Label></td>
        <td class='td_controlesFormulario'>
            <asp:TextBox ID='txt_valor' runat='server' CssClass='txt_precio'></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID='rfv_valor' runat='server' ControlToValidate='txt_valor' ValidationGroup="pago" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:FilteredTextBoxExtender ID='ftb_valor' runat='server' TargetControlID='txt_valor' FilterType='Numbers,Custom' />
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg" ValidationGroup="pago" /></td>
    </tr>
    <tr>
        <td>
            <asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='pago' CssClass='lbl_mensaje' ForeColor='' />
        </td>
    </tr>
</table>
