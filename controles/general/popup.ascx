<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="popup.ascx.vb" Inherits="website.samm_controles.controles_general_popup" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<link href="../../css/samm/popup.css" rel="stylesheet" type="text/css" />
<asp:HiddenField ID="hdd_estadoPop" runat="server" Value="0"/>
<div style="display:none; overflow:visible; width:100%; height:100%;" id="divModal" class="modalBackground" runat="server"></div>
<table id="tbl_popup" runat="server" width="49%" border="0" cellpadding="0" cellspacing="0" class="tbl_popup" style="display:none">
    <tr id="tr_barratitulo" runat="server" class="tr_tituloPop">
<td width="99%"><asp:Label ID="lbl_tituloPopup" runat="server" CssClass="lbl_tituloPopup"></asp:Label>
</td>
<td width="1%" style="text-align:right ">
<bti:BotonImagen ID="bti_cerrar" runat="server" ImageUrl="../../images/botones/cerrar_pop.jpg"
CausesValidation="false" />
</td>
</tr>
    <tr>
<td colspan="2" valign="top"> 
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr> 
<td width="5%" valign="top">
<asp:Image ID="image" runat="server" ImageUrl="~/images/interfaz/spacer.gif" />
</td>
<td width="95%" valign="top"> 
<table width="100%" border="0" cellpadding="5" cellspacing="0">
<tr> 
<td bgcolor="#FFFFFF" valign="top"> 
<p class="comun"><asp:Panel ID="pnl_control" runat="server" Width="100%" BackColor="white" style="z-index:10005">
</asp:Panel></p>

</td>
</tr>
</table>
</td>
</tr>

</table>
</td>

</tr>
</table>
<asp:HiddenField ID="hdd_tbl_posX" runat="server" />
<asp:HiddenField ID="hdd_tbl_posY" runat="server" />
<asp:HiddenField ID="hdd_tbl_visible" runat="server" />

