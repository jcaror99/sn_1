<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="enviarmail.ascx.vb" Inherits="website.samm_controles.controles_general_enviarmail" %>

<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="uc2" %>

<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>

<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="textoAvanzado"
    TagPrefix="uc1" %>
<table class="tbl_marcoFormulario">
    <tr>
        <td colspan="4">
            <asp:Image ImageUrl="../../images/interfaz/sammWeb.jpg" runat="server" ID="imagenCabecera" />
        </td>
    </tr>
    <tr>
        <td style="background-color: #336666;" colspan="4">
            <asp:Label ID="lbl_titulo" runat="server" CssClass="lbl_titulo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server"
                Text="<%$ Resources:res_etiquetas, agregarEn %>" CssClass="lbl"></asp:Label></td>
        <td>
            <asp:RadioButtonList ID="rblEnDonde" runat="server"
                RepeatDirection="Horizontal" CssClass="rbl">
                <asp:ListItem Value="para" Text="<%$ Resources:res_etiquetas, para %>" Selected="True"></asp:ListItem>
                <asp:ListItem Text="<%$ Resources:res_etiquetas, cc %>" Value="cc"></asp:ListItem>
            </asp:RadioButtonList></td>
        <td></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_cont" runat="server"
                Text="<%$ Resources:res_etiquetas, agregarEn %>" CssClass="lbl"></asp:Label></td>
        <td>
            <asp:RadioButtonList ID="rbl_contacto" runat="server"
                RepeatDirection="Horizontal" CssClass="rbl" AutoPostBack="true">
                <asp:ListItem Value="0" Text="<%$ Resources:res_metadata, ter_contacto_contacto %>"></asp:ListItem>
                <asp:ListItem Value="1" Text="<%$ Resources:res_metadata, seg_usuario_usuario %>" Selected="True"></asp:ListItem>
            </asp:RadioButtonList></td>
        <td></td>
    </tr>
    <tr id="tr_contacto" runat="server">
        <td>
            <asp:Label ID="lblContacto" runat="server"
                Text="<%$ Resources:res_metadata, ter_contacto_contacto %>" CssClass="lbl"></asp:Label></td>
        <td>
            <uc2:busquedaAvanzadaMultiple ID="bum_contactos" runat="server"
                a_str_tabla="ter_contacto" a_bln_obligatorio="True"
                a_str_grupoValidacion="1" />
        </td>
        <td></td>
    </tr>
    <tr id="tr_usuario" runat="server">
        <td>
            <asp:Label ID="lblUsuario" runat="server"
                Text="<%$ Resources:res_metadata, seg_usuario_usuario %>" CssClass="lbl"></asp:Label></td>
        <td>
            <uc2:busquedaAvanzadaMultiple ID="bum_usuarios" runat="server"
                a_str_tabla="seg_usuario" a_bln_obligatorio="True"
                a_str_grupoValidacion="1" />
        </td>

        <td></td>
    </tr>
    <tr>
        <td colspan="3">
            <hr />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblPara" runat="server"
                Text="<%$ Resources:res_etiquetas, para %>" CssClass="lbl"></asp:Label>&nbsp;</td>
        <td>
            <asp:TextBox ID="txtPara" runat="server" CssClass="txt"></asp:TextBox>&nbsp;
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ControlToValidate="txtPara" CssClass="lbl_mensaje" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="<%$ Resources:res_etiquetas, CC %>"
                CssClass="lbl"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtCC" runat="server" CssClass="txt"></asp:TextBox>

        <td></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server"
                Text="<%$ Resources:res_etiquetas, asunto %>" CssClass="lbl"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtAsunto" runat="server" CssClass="txt_largo">
            </asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="txtAsunto" CssClass="lbl_mensaje" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td valign="top">
            <asp:Label ID="Label2" runat="server"
                Text="<%$ Resources:res_etiquetas, mensaje %>" CssClass="lbl"></asp:Label></td>
        <td>
            <uc1:textoAvanzado ID="texMensaje" runat="server" a_bln_obligatorio="True" CssClass="txt_formulario" />
        </td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>
            <cc1:BotonImagen ID="btiAceptar" runat="server" ImageUrl="~/images/botones/aceptar.png"></cc1:BotonImagen></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
        <td></td>
    </tr>
</table>
