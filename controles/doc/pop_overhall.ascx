<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_overhall.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_overhall" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="TextoAvanzado" TagPrefix="uc2" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
    <tr>
        <td>
            <asp:Label ID="lbl_reparar" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td colspan="2">
            <asp:RadioButtonList ID="rbl_reparar" runat="server" RepeatDirection="Horizontal"
                Enabled="false">
                <asp:ListItem Value="1" Selected="True"></asp:ListItem>
                <asp:ListItem Value="0"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID='rfvRepara' runat='server' ControlToValidate='rbl_reparar'
                ValidationGroup="over" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_reiniciar" runat="server" CssClass="lbl"> </asp:Label>
        </td>
        <td colspan="2">
            <asp:RadioButtonList ID="rbl_reiniciar" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="1"></asp:ListItem>
                <asp:ListItem Value="0"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID='rfvReiniciar' runat='server' ControlToValidate='rbl_reiniciar'
                ValidationGroup="over" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
        </td>
        <td></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_nuevoHorometro" runat="server" Text='$nuevoHorometro' CssClass="lbl"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_nuevoHorometro" runat="server" CssClass="txt_numero"></asp:TextBox>
            <act:FilteredTextBoxExtender ID='ftb_nuevoHorometro' runat='server' TargetControlID='txt_nuevoHorometro'
                FilterType='Numbers,Custom' />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_ultimalectura" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td colspan="2">
            <uc1:fechaAvanzada ID="fec_fecha" runat="server" a_bln_obligatorio="true" a_str_prefijo="fh"
                a_str_grupoValidacion="over" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_horometroactual" runat="server"
                CssClass="lbl"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_horometro" runat="server" CssClass="txt_numero"></asp:TextBox><asp:RequiredFieldValidator
                ID='rfv_horometro' runat='server' ControlToValidate='txt_horometro' ValidationGroup="over"
                SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:FilteredTextBoxExtender
                    ID='ftb_horometro' runat='server' TargetControlID='txt_horometro' FilterType='Numbers,Custom' />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_observaciones" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td>
            <uc2:TextoAvanzado ID="txt_observaciones" runat="server" CssClass="txt_formulario"></uc2:TextoAvanzado>
        </td>
    </tr>
    <tr>
        <td></td>
        <td colspan="2">
            <asp:CheckBox ID="chb_proyeccion" runat="server" Checked="True" Enabled="false" />
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                ValidationGroup="over" />
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ValidationSummary ID='vls' runat='server' ValidationGroup='over' CssClass='lbl_mensaje'
                ForeColor=''></asp:ValidationSummary>
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
</table>
