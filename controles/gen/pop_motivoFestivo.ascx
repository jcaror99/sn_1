<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_motivoFestivo.ascx.vb" Inherits="website.samm_componentes.controles_gen_pop_motivoFestivo" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
    <tr>
        <td>
            <asp:TextBox ID="txt_motivoFestivo" runat="server" CssClass='txt'></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.png"
                CausesValidation="false" />
            <bti:BotonImagen ID="bti_quitar" runat="server" ImageUrl="../../images/botones/quitar.gif"
                CausesValidation="false" /></td>
    </tr>
</table>
