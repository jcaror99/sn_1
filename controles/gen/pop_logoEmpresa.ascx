<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_logoEmpresa.ascx.vb" Inherits="website.samm_componentes.controles_gen_pop_logoEmpresa" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web"%>
<%--<%@ OutputCache Duration="60" VaryByParam="None" %>--%>
<table style="background-color:White;">
<tr>
<td>
<asp:Label ID="lbl_logo" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<asp:FileUpload ID="flu_logo" runat="server" CssClass="lbl"/>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_logoReporte" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<asp:FileUpload ID="flu_logoReporte" runat="server" CssClass="lbl"/>
</td>
</tr>
<tr>
<tr>
<td colspan="2">
<bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.png"
                CausesValidation="false" />
</td>
</tr>
<tr>
<td colspan="2">
<asp:Label ID="lbl_cache" runat="server" ForeColor="Chocolate" CssClass="lbl"></asp:Label>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
</table>
