<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_documentosSugeridos.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_documentosSugeridos" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/sugeridos.ascx" TagName="sugeridos" TagPrefix="uc4" %>
<table>
    <tr>
        <td></td>
        <td>
            <uc4:sugeridos ID="sugeridos" runat="server" />
        </td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>
            <br />
            <bti:BotonImagen ID="imbGuardar" runat="server" CssClass="imb" ImageUrl="../../images/botones/aceptar.png"
                CausesValidation="false"></bti:BotonImagen>
        </td>
        <td></td>
    </tr>
</table>
