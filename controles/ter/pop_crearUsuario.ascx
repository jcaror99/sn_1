<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_crearUsuario.ascx.vb"
    Inherits="website.samm_componentes.controles_ter_pop_crearUsuario" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table>
    <tr>
        <td align="right">
            <asp:Label ID="lbl_login" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td align="left">
            <asp:TextBox ID="txt_login" runat="server" CssClass="txt"></asp:TextBox>
        </td>
        <td align="left">
            <asp:RequiredFieldValidator ID="rfv_login" runat="server" ControlToValidate="txt_login"
                ValidationGroup="login" CssClass="lbl_mensaje" ForeColor=''>*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr runat="server" id="tr_perfil">
        <td align="right">
            <asp:Label ID="lbl_p" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td align="left">
            <asp:DropDownList id="drp_perfil" runat ="server" class="drp"></asp:DropDownList>
        </td>
    </tr>
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
    <tr id="tr_confcontr" runat="server">
        <td style="white-space: nowrap" align="right">
            <asp:Label ID="lbl_confirmarContraseña" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td style="text-align: left">
            <asp:TextBox ID="txt_confirmarContraseña" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
       
        </td>
         <td align="left">
              <asp:CompareValidator ID="cmv_contraseña" runat="server" ControlToCompare="txt_contraseña"
                ControlToValidate="txt_confirmarContraseña" ValidationGroup="login" CssClass="lbl_mensaje"
                ForeColor="">*</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="rfvConfirmar" runat="server" ControlToValidate="txt_confirmarContraseña"
                CssClass="lbl_mensaje" Display="Dynamic" ErrorMessage="*" ForeColor="" SetFocusOnError="True"
                ValidationGroup="login">*</asp:RequiredFieldValidator>
         
         </td>
    </tr>
    <tr>
        <td align="right">
            <asp:Label ID="lbl_email" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td align="left">
            <asp:TextBox ID="txt_email" runat="server" CssClass="txt"></asp:TextBox>
            <asp:Label ID="lbl_emailinfo" runat="server" Visible="false" CssClass="lbl"></asp:Label>
        </td>
        <td align="left">
            <asp:RequiredFieldValidator ID="rfv_email" runat="server" ControlToValidate="txt_email"
                ValidationGroup="login" CssClass="lbl_mensaje" ForeColor=''>*</asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="rev_email" runat="server" ControlToValidate="txt_email"
            CssClass="lbl_mensaje" ErrorMessage='<%$Resources:res_mensajes,emailNoValido %>'
            ForeColor="" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
            ValidationGroup="login" Text="*"></asp:RegularExpressionValidator>
        </td>
    </tr>
       <tr id="tr_chk" runat="server">
        <td align="right">
            <asp:Label ID="lbl_enviarCorreo" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td align="left">
            <asp:CheckBox ID="chb_enviarCorreo" runat="server" CssClass="chb" />
            </td>
    </tr>
    <tr  id="tr_bot" runat="server">
        <td colspan="3">
            <bti:BotonImagen ID="imb_aceptarLogin" runat="server" CausesValidation="true" ValidationGroup="login"
                ImageUrl='../../images/botones/aceptar.png' CssClass='imb' />

            <asp:ValidationSummary ID="vls_login" runat="server" ValidationGroup="login" CssClass="lbl_mensaje"
                ForeColor='' />
            <asp:Label ID="lblMensaje" runat="server" Text="" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
    <tr  id="tr_botAct" runat="server" visible="false">
        <td colspan="3">
            <bti:BotonImagen ID="imb_actualizarLogin" runat="server" CausesValidation="true" ValidationGroup="login"
                ImageUrl='../../images/botones/aceptar.png' CssClass='imb' />
            <asp:Label ID="lblMensajeAct" runat="server" Text="" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
</table>
