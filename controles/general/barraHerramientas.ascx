<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="barraHerramientas.ascx.vb" Inherits="website.samm_controles.controles_barraHerramientas" %>
<%@ Register Src="~/controles/general/doc_estados.ascx" TagName="doc_estados" TagPrefix="est" %>
<table cellspacing="0" cellpadding="0">
<tr>
<td style="white-space:nowrap;">
<table id="tblBotones" runat="server" cellspacing="0" cellpadding="0">
    <tr>
    </tr>
</table>
</td>
<td> 
<table cellspacing="0" cellpadding="0">
    <tr>
        <td>
            <est:doc_estados ID="doc_estado" runat="server" />
        </td>
    </tr>
</table>
</td>
</tr>
</table>