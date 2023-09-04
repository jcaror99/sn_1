<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_remitenteCorreo.ascx.vb"
    Inherits="website.samm_componentes.controles_gen_inc_remitenteCorreo" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
    <tr>
        <td>
            <bti:BotonImagen ID="imb_eliminarRemitente" runat="server" ImageUrl="../../images/botones/quitar.gif" />
        </td>
        <td>
            <bti:BotonImagen ID="imb_archivosRemitente" runat="server" ImageUrl="../../images/botones/archivos.gif" />
        </td>
    </tr>
</table>
<table>
    <tr>
        <td class="td_lblFormulario">
            <asp:Label ID="lbl_correoServidor" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td style="width: 100px">
            <asp:TextBox ID="txt_correoServidor" runat="server" CssClass="txt">
            </asp:TextBox>
        </td>
        <td style="width: 100%">
            <asp:RequiredFieldValidator ID="rfv_correoServidor" runat="server" ControlToValidate="txt_correoServidor"
                CssClass='lbl_mensaje' ValidationGroup="formRemitente" ForeColor="">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="td_lblFormulario">
            <asp:Label ID="lbl_correoRemitente" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td style="width: 100px">
            <asp:TextBox ID="txt_correoRemitente" runat="server" CssClass="txt">
            </asp:TextBox>
        </td>
        <td style="width: 100%">
            <asp:RequiredFieldValidator ID="rfv_correoRemitente" runat="server" ControlToValidate="txt_correoRemitente"
                CssClass='lbl_mensaje' ValidationGroup="formRemitente" ForeColor="">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="td_lblFormulario">
            <asp:Label ID="lbl_correoCertificado" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td style="width: 100px">
            <asp:RadioButtonList ID="rbl_correoCertificado" CssClass="rbl" RepeatDirection="Horizontal"
                runat="server">
                <asp:ListItem Text='<%$ Resources: res_etiquetas,si %>' Value="1"></asp:ListItem>
                <asp:ListItem Text='<%$ Resources: res_etiquetas,no %>' Value="0"></asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td style="width: 100%">
            <asp:RequiredFieldValidator ID="rfv_correoCertificado" runat="server" ControlToValidate="rbl_correoCertificado"
                CssClass='lbl_mensaje' ValidationGroup="formRemitente" ForeColor="">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="td_lblFormulario">
            <asp:Label ID="lbl_correoPuerto" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td style="width: 100px">
            <asp:TextBox ID="txt_correoPuerto" runat="server" CssClass="txt">
            </asp:TextBox>
        </td>
        <td style="width: 100%">
            <asp:RequiredFieldValidator ID="rfv_correoPuerto" runat="server" ControlToValidate="txt_correoPuerto"
                CssClass='lbl_mensaje' ValidationGroup="formRemitente" ForeColor="">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="td_lblFormulario">
            <asp:Label ID="lbl_correoCredenciales" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td style="width: 100px">
            <asp:TextBox ID="txt_correoCredenciales" runat="server" CssClass="txt" TextMode="Password">
            </asp:TextBox>
        </td>
        <td style="width: 100%">
        </td>
    </tr>
    <tr>
        <td class="td_lblFormulario">
            <asp:Label ID="lbl_correoEsGSuite" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td style="width: 100px">
            <asp:RadioButtonList ID="rbl_correoEsGSuite" CssClass="rbl" RepeatDirection="Horizontal"
                runat="server">
                <asp:ListItem Text='<%$ Resources: res_etiquetas,si %>' Value="1"></asp:ListItem>
                <asp:ListItem Text='<%$ Resources: res_etiquetas,no %>' Value="0"></asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td style="width: 100%">
            <asp:RequiredFieldValidator ID="rfv_correroEsGSuite" runat="server" ControlToValidate="rbl_correoEsGSuite"
                CssClass='lbl_mensaje' ValidationGroup="formRemitente" ForeColor="">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="td_lblFormulario">
            <asp:Label ID="lbl_correoCuentaCertificado" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td style="width: 100px">
            <asp:TextBox ID="txt_correoCuentaCertificado" runat="server" CssClass="txt">
            </asp:TextBox>
        </td>
        <td style="width: 100%">
        </td>
    </tr>
    <tr>
        <td class="td_lblFormulario">
            <asp:Label ID="lbl_correoArchivoCertificado" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td style="width: 100px">
            <asp:TextBox ID="txt_correoArchivoCertificado" runat="server" CssClass="txt">
            </asp:TextBox>
        </td>
        <td style="width: 100%">
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td style="white-space: nowrap">
            <bti:BotonImagen ID="btn_guardar" runat="server" CausesValidation="true" CssClass="imb"
                ImageUrl="~/images/botones/aceptar.png" ValidationGroup="formRemitente" />
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td style="white-space: nowrap">
            <asp:Label ID="lblMensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
</table>
