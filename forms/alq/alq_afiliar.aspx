<%@ Page Language="VB" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master" AutoEventWireup="false" CodeBehind="alq_afiliar.aspx.vb" Inherits="website.samm_web.forms_alq_afiliar" title="afiliar Equipos" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc2" %>

<%@ Register Src="~/controles/alq/inc_afiliarEquipos.ascx" TagName="inc_equipos"
TagPrefix="uc1" %>
<%@ Register Src="~/controles/alq/inc_afiliarRepuestos.ascx" TagName="inc_repuestos"
TagPrefix="uc2" %>
<%@ Register Src="~/controles/cnt/inc_informacionEquipos.ascx" TagName="inc_informacionEquipos"
TagPrefix="uc3" %>
<%@ Register Src='~/controles/general/tabs.ascx' TagName='tabs' TagPrefix='tab' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register src="~/controles/general/informacion.ascx" tagname="informacion" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" Runat="Server">
<asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo' Text="<%$ Resources:res_tituloPagina, forms_alq_afiliarEquipos%>"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" Runat="Server">
<table>
<tr><td>

<uc4:informacion ID="inf_alquiler" runat="server" a_bln_orientacionVertical="false" />

</td></tr>
<tr><td>    <table cellpadding="0" cellspacing="0">
<tr>
<td>
<tab:tabs ID='Tabs' runat="server" />
</td>
</tr>
</table>
<table class="tbl_marcoFormulario" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<uc1:inc_equipos ID="inc_equipos" runat="server" /></td>
<td>
<uc2:inc_repuestos ID="inc_repuestos" runat="server" /></td>
</tr>
</table></td></tr>
</table>
<uc2:popup ID="pop_temparios" runat="server" a_bol_mostrarSAMM="false" />
</asp:Content>

