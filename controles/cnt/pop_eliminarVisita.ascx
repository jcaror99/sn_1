<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_eliminarVisita.ascx.vb" Inherits="website.samm_componentes.controles_cnt_pop_eliminarVisita" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<table>
    <tr>
        <td>
            <asp:Label ID="lbl_confirmar" runat="server" CssClass="lbl"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <cc1:BotonImagen ID="bti_eliminar" runat="server" ImageUrl="~/images/botones/aceptar.png"
              CausesValidation="false" />
        </td>
    </tr>
</table>