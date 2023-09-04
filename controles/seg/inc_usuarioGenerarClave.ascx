<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_usuarioGenerarClave.ascx.vb" Inherits="website.samm_componentes.controles_seg_inc_usuarioGenerarClave" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
    <tr>
        <td>
            <asp:Label ID="lbl_correo" runat="server" CssClass="lbl"></asp:Label></td>
        <td style="text-align: left">
            <asp:TextBox ID="txt_correo" runat="server" CssClass="txt" ReadOnly="True"></asp:TextBox></td>
        <asp:RequiredFieldValidator ID='rfv_correo' runat='server' ControlToValidate='txt_correo'
            SetFocusOnError='True'>*</asp:RequiredFieldValidator></tr>
    <tr>
        <td>
            <asp:Label ID="lbl_contraseña" runat="server" CssClass="lbl"></asp:Label></td>
        <td style="text-align: left">
            <asp:TextBox ID="txt_contraseña" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revContrasenaSegura" runat="server" ValidationGroup="inc_genClave"
                ControlToValidate="txt_contraseña" CssClass="lbl_mensaje" ForeColor="">*</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="rfvContrasena" runat="server" ControlToValidate="txt_contraseña"
                CssClass="lbl_mensaje" Display="Dynamic" ErrorMessage="*" ForeColor="" SetFocusOnError="True"
                ValidationGroup="inc_genClave">*</asp:RequiredFieldValidator></td>
        <%--<asp:RequiredFieldValidator ID='rtv_contraseña' runat='server' ControlToValidate='txt_contraseña'
            SetFocusOnError='True'>*</asp:RequiredFieldValidator>--%></tr>
    <tr>
        <td style="white-space: nowrap">
            <asp:Label ID="lbl_confirmarContraseña" runat="server" CssClass="lbl"></asp:Label></td>
        <td style="text-align: left">
            <asp:TextBox ID="txt_confirmarContraseña" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
            <asp:CompareValidator ID="cmv_contraseña" runat="server" ControlToCompare="txt_contraseña"
                ControlToValidate="txt_confirmarContraseña" ValidationGroup="inc_genClave" CssClass="lbl_mensaje"
                ForeColor="">*</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="rfvConfirmar" runat="server" ControlToValidate="txt_confirmarContraseña"
                CssClass="lbl_mensaje" Display="Dynamic" ErrorMessage="*" ForeColor="" SetFocusOnError="True"
                ValidationGroup="inc_genClave">*</asp:RequiredFieldValidator></td>
        <%--<asp:RequiredFieldValidator ID='rtv_confirmarContraseña' runat='server' ControlToValidate='txt_confirmarContraseña'
            SetFocusOnError='True'>*</asp:RequiredFieldValidator>--%></tr>
    <tr>
        <td>
        </td>
        <td>
            <asp:ValidationSummary ID="vlsCambio" runat="server" CssClass="lbl_mensaje" ForeColor=""
                ValidationGroup="inc_genClave" DisplayMode="List" />
            </td>
    </tr>
    <tr>
        <td>
        </td>
        <td style="white-space: nowrap">
            <bti:BotonImagen ID="btn_guardar" runat="server" CausesValidation="true" CssClass="imb" ImageUrl="~/images/botones/aceptar.png"
                ValidationGroup="inc_genClave" />&nbsp;
            <bti:BotonImagen ID="btn_contraseñaAleatoria" runat="server" CausesValidation="false" ImageUrl="~/images/botones/seg_claveAleatoria.png"
                CssClass="imb" /></td>
    </tr>
    <tr>
        <td>
        </td>
        <td style="white-space: nowrap">
            <asp:Label ID="lblMensaje" runat="server" CssClass="lbl_mensaje"></asp:Label></td>
    </tr>
</table>
