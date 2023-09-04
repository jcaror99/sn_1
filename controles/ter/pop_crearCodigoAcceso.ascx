<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_crearCodigoAcceso.ascx.vb"
    Inherits="website.samm_componentes.controles_ter_pop_crearCodigoAcceso" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>


<table>

    <tr id="tr_contr" runat="server">
        <td align="right">
            <asp:Label ID="lbl_contraseña" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td style="text-align: left">
            <asp:TextBox ID="txt_contraseña" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
           
        </td>
        <td align="left">
        
            <asp:RequiredFieldValidator ID="rfvContrasena" runat="server" ControlToValidate="txt_contraseña"
                CssClass="lbl_mensaje" Display="Dynamic" ErrorMessage="*" ForeColor="" SetFocusOnError="True"
                ValidationGroup="login">*</asp:RequiredFieldValidator>

        </td>
    </tr>
    <tr id="tr1" runat="server">
        <td align="right">
            <asp:Label ID="lbl_confirmarContraseña" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td style="text-align: left">
            <asp:TextBox ID="txt_confirmarContraseña" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
           
        </td>
        <td align="left">
        
            <asp:RequiredFieldValidator ID="rfvContrasenaConfirmar" runat="server" ControlToValidate="txt_confirmarContraseña"
                CssClass="lbl_mensaje" Display="Dynamic" ErrorMessage="*" ForeColor="" SetFocusOnError="True"
                ValidationGroup="login">*</asp:RequiredFieldValidator>

        </td>
    </tr>
    <tr  id="tr_bot" runat="server">
        <td colspan="3" align="center">
            <bti:BotonImagen ID="imb_guardarCodigo" runat="server" CausesValidation="true"
                ImageUrl='../../images/botones/aceptar.png' CssClass='imb' />
            <asp:ValidationSummary ID="vls_login" runat="server" ValidationGroup="login" CssClass="lbl_mensaje"
                ForeColor='' />
        </td>
    </tr>
    <tr>
    <td  colspan="3" align="center">
        <asp:Label ID="lblMensaje" runat="server" Text="" CssClass="lbl_mensaje"></asp:Label>
    <td>
    </tr>
</table>
