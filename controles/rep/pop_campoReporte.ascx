<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_campoReporte.ascx.vb"
    Inherits="website.samm_componentes.controles_rep_pop_campoReporte" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<table>
    <tr>
        <td>
            <asp:Label ID="lbl_campoReporte" runat="server" CssClass='lbl' Text='res_metadata,rep_camporeporte_camporeporte'></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_campoReporte" runat="server" CssClass='txt' ValidationGroup="campo"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_campo" ControlToValidate="txt_campoReporte" ValidationGroup="campo"
                runat="server" CssClass='lbl_mensaje' Text='*'></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_tipoCampo" runat="server" CssClass="lbl" Text='res_metadata,rep_camporeporte_id_tipocamporeporte'></asp:Label>
        </td>
        <td>
            <bus:busquedaAvanzada ID="bus_tipoCampo" runat="server" a_bln_mostrarNuevoConDrop="true"
                a_str_tabla="rep_tipoCampoReporte" a_str_grupoValidacion="campo" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_tabla" runat="server" CssClass="lbl" Text='res_metadata,rep_camporeporte_tabla'></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_tabla" runat="server" CssClass="txt" ValidationGroup="campo"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_tabla" ControlToValidate="txt_tabla" ValidationGroup="campo"
                runat="server" CssClass='lbl_mensaje' Text='*'></asp:RequiredFieldValidator>
        </td>
    </tr>
    
    <tr>
        <td>
            <asp:Label ID="lbl_campoReporteCodigo" runat="server" CssClass="lbl" Text='res_metadata,rep_camporeporte_camporeporte_codigo'></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_carpoReporteCodigo" runat="server" CssClass="txt" ValidationGroup="campo"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txt_tabla" ValidationGroup="campo"
                runat="server" CssClass='lbl_mensaje' Text='*'></asp:RequiredFieldValidator>
        </td>
    </tr>
    
    <tr>
        <td>
            <asp:Label ID="lbl_esParamero" runat="server" CssClass="lbl" Text='res_metadata,rep_camporeporte_esparametro'></asp:Label>
        </td>
        <td>
            <asp:RadioButtonList ID="rbl_esParamtero" runat="server" RepeatDirection="Horizontal"
                ValidationGroup="campo">
                <asp:ListItem Enabled="true" Value="1" Selected="False" Text="res_etiquetas,si"></asp:ListItem>
                <asp:ListItem Enabled="true" Value="0" Selected="False" Text="res_etiquetas,no"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="rfv_esparametro" ControlToValidate="rbl_esParamtero"
                ValidationGroup="campo" runat="server" CssClass='lbl_mensaje' Text='*'></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_esSerie" runat="server" CssClass="lbl" Text='res_metadata,rep_camporeporte_esserie'></asp:Label>
        </td>
        <td>
            <asp:RadioButtonList ID="rbl_esSerie" runat="server" RepeatDirection="Horizontal"
                ValidationGroup="campo">
                <asp:ListItem Enabled="true" Value="1" Selected="False" Text="res_etiquetas,si"></asp:ListItem>
                <asp:ListItem Enabled="true" Value="0" Selected="False" Text="res_etiquetas,no"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="rfv_serie" ControlToValidate="rbl_esSerie" runat="server"
                ValidationGroup="campo" CssClass='lbl_mensaje' Text='*'></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_parametro" runat="server" CssClass="lbl" Text='res_metadata,rep_camporeporte_valordefecto'></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_parametro" runat="server" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <bti:BotonImagen ID="bti_guardar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                CausesValidation="true" ValidationGroup="campo" />
        </td>
    </tr>
    <tr>
        <td>
        </td>
    </tr>
</table>
