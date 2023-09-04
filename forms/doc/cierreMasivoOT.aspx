<%@ Page Language="VB" MasterPageFile='~/master/master/mas_formulariosinGrilla.master'
AutoEventWireup="false" CodeBehind="cierreMasivoOT.aspx.vb" Inherits="website.samm_web.forms_doc_cierreMasivoOT" %>

<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc2" %>
<%@ Register Src="~/controles/cnt/inc_generarEstrtegia.ascx" TagName="inc_generarEstrtegia"
TagPrefix="uc1" %>
<%@ Register Src="~/controles/cnt/inc_buscarEquipos.ascx" TagName="inc_buscarEquipos"
TagPrefix="uc2" %>
<%@ Register Src="~/controles/cnt/inc_informacionEquipos.ascx" TagName="inc_informacionEquipos"
TagPrefix="uc3" %>
<%@ Register Src='~/controles/general/tabs.ascx' TagName='tabs'
TagPrefix='tab' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada'
TagPrefix='bus' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/informacion.ascx" TagName="informacion"
TagPrefix="uc4" %>
<%@ Register src="~/controles/doc/buscarOT.ascx" tagname="buscarOT" tagprefix="uc5" %>
<%@ Register src="~/controles/doc/cerrarOTs.ascx" tagname="cerrarOTs" tagprefix="uc6" %>
<asp:Content ID='content5' runat='server' ContentPlaceHolderID='cph_tituloPagina'>
<asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo'></asp:Label>
</asp:Content>
<asp:Content ID='Content2' ContentPlaceHolderID='cph_general' runat='Server'>
<table>
<tr>
<td>
<table cellpadding="0" cellspacing="0">
<tr>
<td>
<tab:tabs ID='tabs' runat="server" />
</td>
</tr>
</table>
<asp:MultiView ID="mvw_modulos" runat="server">
<asp:View ID="svw_bus" runat="server">
<table class="tbl_marcoFormulario" width="660">
<tr>
<td class="td_lblFormulario">

<uc5:buscarOT ID="buscarOT1" runat="server" />

</td>
</tr>
</table>
</asp:View>
<asp:View ID="svw_cer" runat="server">
<table class="tbl_marcoFormulario" width="660">
<tr>
<td class="td_lblFormulario">

<uc6:cerrarOTs ID="cerrarOTs1" runat="server" />

</td>
</tr>
</table>
</asp:View>
</asp:MultiView>
</td>
</tr>
</table>
<uc2:popup ID="pop_temparios" runat="server" a_bol_mostrarSAMM="false" />
</asp:Content>
