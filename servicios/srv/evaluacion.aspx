<%@ Page Language='VB' MasterPageFile='~/master/master/mas_Publica.master'
    AutoEventWireup='false' CodeBehind='evaluacion.aspx.vb' Inherits='website.samm_web.srv_evaluacion' %>
    
<%@ Register Src='../../controles/general/tabs.ascx' TagName='tabs' TagPrefix='tab' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='../../controles/general/informacion.ascx' TagName='informacion'
    TagPrefix='inf' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src='../../controles/general/popup.ascx' TagName='popup' TagPrefix='pop' %>
<%@ Register Src='../../controles/doc/inc_evaluaciones.ascx' TagName='evaluacion' TagPrefix='eval' %>
<asp:Content ID='Content2' ContentPlaceHolderID='cph_informacion' runat='Server'>
    <inf:informacion ID='infPrincipal' runat='server'  a_bln_orientacionVertical="false" />
</asp:Content>
<asp:Content ID='Content3' ContentPlaceHolderID='cph_general' runat='Server' >
<eval:evaluacion ID='evaluacionOT'  runat='server' />
</asp:Content>
<asp:Content ID='Content4' ContentPlaceHolderID='cph_mensaje' runat='Server' >
<asp:label ID='lbl_mensaje'  CssClass="lbl_mensaje"  runat='server' />
</asp:Content>