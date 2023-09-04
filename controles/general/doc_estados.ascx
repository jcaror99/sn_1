<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="doc_estados.ascx.vb" Inherits="website.samm_componentes.controles_doc_doc_estados" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table cellpadding="0" cellspacing="0">
<tr>
<td align="center">
<table cellpadding="0" cellspacing="0" class="lnk_barraHerramientas">
<tr>
<td align="center">
<bti:BotonImagen ID="bti_historial" runat="server" CausesValidation="false" ImageUrl="../../images/botones/doc_verHistorial.jpg" />
</td>
</tr>
<tr>
<td align="center">
<asp:LinkButton ID="lnk_verHistorial" runat="server" CssClass="lnk_barraHerramientas"
Text="<%$Resources:res_etiquetas_doc,verHistorial %>" CausesValidation="false"></asp:LinkButton>
</td>
</tr>
</table>
</td>
<td runat="server" id="td_cambioEstados">
<table id="tbl_unEstado" runat="server" class="lnk_barraHerramientas">
<tr>
<td>
<bti:BotonImagen ID="bti_unEstado" runat="server" CausesValidation="false" imageurl="../../images/botones/doc_estados.jpg"  />
</td>
</tr>
<tr>
<td>
<asp:LinkButton ID="lnk_unEstado" runat="server" CssClass="lnk_barraHerramientas" CausesValidation="false" Text='<%$Resources:res_etiquetas_doc,cambiarEstado %>'></asp:LinkButton>
</td>
</tr>
</table>
</td>
<td>
&nbsp;</td>
</tr>
</table>