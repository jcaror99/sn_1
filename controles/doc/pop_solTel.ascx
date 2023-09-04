<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_solTel.ascx.vb" Inherits="website.samm_componentes.controles_ort_pop_solTel" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<table>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,doc_documentocomentario_documentocomentario %>"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtComentario" runat="server" CssClass="txt_multilinea" TextMode="MultiLine"
                ValidationGroup="solTel"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtComentario"
                CssClass="lbl_mensaje" ForeColor="" ValidationGroup="solTel">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_fecha" runat="server" CssClass="lbl" Text="Fecha solucion "></asp:Label>
        </td>
        <td>
            <uc1:fechaAvanzada ID="Fec_cierre" runat="server" a_str_prefijo="ffhh" a_bln_obligatorio="false" />
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <bti:BotonImagen ID="imbGuardar" runat="server" CssClass="imb" ImageUrl="../../images/botones/aceptar.png"
                ValidationGroup="solTel"></bti:BotonImagen>
        </td>

        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="solTel"
                HeaderText="<%$Resources:res_mensajes,camposObligatorios %>" />
        </td>
        <td></td>
    </tr>
</table>
