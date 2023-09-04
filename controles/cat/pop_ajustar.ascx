<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_ajustar.ascx.vb" Inherits="website.samm_componentes.controles_cat_pop_ajustar" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<asp:RadioButtonList ID="rbl_tempario" runat="server">
    <asp:ListItem Selected="True" Value="1" Text='<%$Resources:res_etiquetas_cat,porPorcentaje %>'>
    </asp:ListItem>
    <asp:ListItem Value="2" Text='<%$Resources:res_etiquetas_cat,porHistorico %>'>
    </asp:ListItem>
</asp:RadioButtonList>

<table id="tbl_porc" runat='server'>
    <tr>
        <td>
            <asp:Label ID="lbl_porcTropicalizado" runat="server" Text='<%$ Resources:res_metadata,cat_catalogo_tempario_porctropicalizacion %>' CssClass="lbl">
            </asp:Label>
        </td>
        <td style="white-space: nowrap;">
            <asp:TextBox ID="txt_porcTropicalizacion" runat="server" CssClass="txt_formulario" ValidationGroup="porc"></asp:TextBox>
            <asp:Label ID="lbl_porc" runat="server" CssClass="lbl" Text="%">
            </asp:Label></td>
        <td>
            <asp:RequiredFieldValidator ID="rfv_pocTropicalizacion" runat="server" ControlToValidate="txt_porcTropicalizacion" CssClass="lbl_mensaje" ValidationGroup='porc'>*</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rgv_porcTropicalizacion" runat="server" ControlToValidate="txt_porcTropicalizacion" CssClass="lbl_mensaje" MaximumValue="100" MinimumValue="-100" ValidationGroup='porc' Type="Double">*</asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td colspan='3' align='center'>
            <cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="~/images/botones/aceptar.jpg" ValidationGroup='porc' />
        </td>
    </tr>
</table>
<table id='tbl_historico' runat='server'>
    <tr>
        <td>
            <asp:Label ID="lbl_fecha" runat="server" CssClass="lbl" Text='<%$Resources:res_etiquetas,fecha %>'>
            </asp:Label>
        </td>
        <td>
            <uc1:fechaAvanzada ID="fec_fecha1" runat="server" a_bln_obligatorio='true' a_str_grupoValidacion='hist' a_str_prefijo='ff' />
            <uc1:fechaAvanzada ID="fec_fecha2" runat="server" a_bln_obligatorio='true' a_str_grupoValidacion='hist' a_str_prefijo='ff' />
        </td>
    </tr>
    <tr>
        <td>&nbsp;
        </td>

        <td>
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje" Text=''></asp:Label>
        </td>
    </tr>

    <tr>
        <td>
            <cc1:BotonImagen ID="bti_aceptarH" runat="server" ImageUrl="~/images/botones/aceptar.jpg" ValidationGroup='hist' />
        </td>
    </tr>
</table>
