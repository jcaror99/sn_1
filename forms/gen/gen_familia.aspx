<%@ Page Language='VB' MasterPageFile='~/master/master/mas_grillaFormularioHorizontal.master'
    AutoEventWireup='false' CodeBehind='gen_familia.aspx.vb' Inherits='website.samm_web.frm_gen_familia' %>

<%@ Register Src="~/controles/gen/inc_familia.ascx" TagName="inc_familia" TagPrefix="fam" %>
<%@ Register Src='~/controles/general/tabs.ascx' TagName='tabs' TagPrefix='tab' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada'
    TagPrefix='bus' %>
<%@ Register Src='~/controles/general/barraHerramientas.ascx' TagName='barraHerramientas'
    TagPrefix='bar' %>
<%@ Register Src='~/controles/general/informacion.ascx' TagName='informacion'
    TagPrefix='inf' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src='~/controles/general/popup.ascx' TagName='popup' TagPrefix='pop' %>
<asp:Content ID='Content2' ContentPlaceHolderID='cph_grilla' runat='Server'>
   <fam:inc_familia ID="fam_familia" runat="server" />
</asp:Content>
<asp:Content ID='Content1' ContentPlaceHolderID='cph_general' runat='Server'><tab:tabs ID='Tabs' OnTab='s_mostrarTab' runat='server' /></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_botones" runat="server">
    <div>
    <bti:BotonImagen ID='imbNuevo' ToolTip='<%$Resources:res_controles,nuevo %>' runat='server' ImageUrl='~/images/botones/nuevo.gif' CssClass='imb' CausesValidation='False' />
    <bti:BotonImagen ID='imbDuplicar' runat='server' ImageUrl='~/images/botones/duplicar.gif' CssClass='imb' CausesValidation='False' />
    <bti:BotonImagen ID='imbBuscar' ToolTip='<%$Resources:res_controles,buscar %>' runat='server' ImageUrl='~/images/botones/buscar.gif' CssClass='imb' CausesValidation='False' CommandName='ActualizaGrilla' />
    <bti:BotonImagen ID='imbEliminar' ToolTip='<%$Resources:res_controles,eliminar %>' runat='server' ImageUrl='~/images/botones/eliminar.gif' CausesValidation='False' CssClass='imb'></bti:BotonImagen>
    <bti:BotonImagen ID='imbImprimir' ToolTip='<%$Resources:res_controles,imprimir %>' runat='server' ImageUrl='~/images/botones/imprimir.gif' CausesValidation='False' CssClass='imb'></bti:BotonImagen>
     </div>
    <div style="text-align:center"><bti:BotonImagen ID='imbColumnas' runat='server' ToolTip='<%$Resources:res_controles,columnas %>' ImageUrl='~/images/botones/columnas.gif' CssClass='imb' CausesValidation='False' />
    <bti:BotonImagen ID='imbCompartir' ToolTip='<%$Resources:res_controles,importar %>' runat='server' ImageUrl='~/images/botones/compartir.gif' CausesValidation='False' CssClass='imb'></bti:BotonImagen>
    <bti:BotonImagen ID='imbExportar' ToolTip='<%$Resources:res_controles,exportar %>' runat='server' ImageUrl='~/images/botones/exportar.gif' CausesValidation='False' CssClass='imb'></bti:BotonImagen>
   </div>
</asp:Content>
<asp:Content ID='content4' ContentPlaceHolderID='cph_barraHerramientas' runat='server'>
    <div><bar:barraHerramientas ID='barraHerramientas' runat='server' /></div>
    <pop:popup ID='popupInterno' runat='server' a_bol_visible='false' />
</asp:Content>
<asp:Content ID='content5' runat='server' ContentPlaceHolderID='cph_tituloPagina'><asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo' Text="<%$ Resources:res_tituloPagina, forms_gen_familia%>"></asp:Label></asp:Content>
<asp:Content ID='content6' runat='server' ContentPlaceHolderID='cph_informacion'><inf:informacion ID='infPrincipal' runat='server' /></asp:Content>

