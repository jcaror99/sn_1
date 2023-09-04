<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_segundaClave.ascx.vb" Inherits="website.samm_componentes.controles_pop_segundaClave" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<table>
    <tr align="center">
        <td>
            <asp:Label ID="lbl_clave" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_clave" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_clave" runat="server" ErrorMessage="" ForeColor='' CssClass="lbl_mensaje" 
             ValidationGroup='1' ControlToValidate="txt_clave">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr align="center">
        <td colspan="2">
            <bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="True" ValidationGroup="1"
                ImageUrl="../../images/botones/aceptar.jpg" />
        </td>
    </tr>
    <tr align="center">
        <td colspan="2">
            <asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='1' CssClass='lbl_mensaje' ForeColor=''
             HeaderText='<%$Resources:res_mensajes,camposObligatorios %>' />
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
</table>
