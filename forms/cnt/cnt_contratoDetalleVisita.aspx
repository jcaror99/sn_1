<%@ Page Language="VB" MasterPageFile='~/master/master/mas_formulariosinGrilla.master' AutoEventWireup="false" CodeBehind="cnt_contratoDetalleVisita.aspx.vb" Inherits="website.samm_web.forms_cnt_cnt_contratoDetalleVisita" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc2" %>

<%@ Register Src="~/controles/cnt/inc_generarEstrtegia.ascx" TagName="inc_generarEstrtegia"
TagPrefix="uc1" %>
<%@ Register Src="~/controles/cnt/inc_buscarEquipos.ascx" TagName="inc_buscarEquipos"
TagPrefix="uc2" %>
<%@ Register Src="~/controles/cnt/inc_informacionEquipos.ascx" TagName="inc_informacionEquipos"
TagPrefix="uc3" %>
<%@ Register Src='~/controles/general/tabs.ascx' TagName='tabs' TagPrefix='tab' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register src="~/controles/general/informacion.ascx" tagname="informacion" tagprefix="uc4" %>
<asp:Content ID='content5' runat='server'  ContentPlaceHolderID='cph_tituloPagina'>
<asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo' Text="<%$ Resources:res_tituloPagina, forms_cnt_contratoDetalleVisita%>"></asp:Label>
</asp:Content>

<asp:Content ID='Content2' ContentPlaceHolderID='cph_general' runat='Server'>
<table>
<tr><td>

<uc4:informacion ID="inf_contrato" runat="server" a_bln_orientacionVertical="false" />

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
<uc1:inc_generarEstrtegia ID="inc_estrategia" runat="server" />
</td>
<td>
<uc2:inc_buscarEquipos ID="inc_buscar" runat="server" />
</td>
<td>
<uc3:inc_informacionEquipos ID="inc_equipos" runat="server" />
</td>
</tr>
</table></td></tr>
</table>

<uc2:popup ID="pop_temparios" runat="server" a_bol_mostrarSAMM="false" />
</asp:Content>
