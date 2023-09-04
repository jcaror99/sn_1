<%@ Page Language="VB" MasterPageFile='~/master/master/mas_FormularioSinGrilla.master' AutoEventWireup="false" CodeBehind="familia.aspx.vb" Inherits="website.samm_web.forms_gen_familia" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc1" %>
<%@ Register Src="~/controles/gen/inc_familia.ascx" TagName="inc_familia" TagPrefix="fam" %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName="tabs" TagPrefix="tab" %>
<asp:Content ID="content2" runat="server" ContentPlaceHolderID="cph_tituloPagina">
    <asp:Label ID="lbl_tituloPagina" runat="server" CssClass="lbl_titulo" Text="<%$ Resources:res_tituloPagina, forms_gen_familia%>"></asp:Label>
</asp:Content>
<asp:Content ID="content1" runat="server" ContentPlaceHolderID='cph_general'>
    <fam:inc_familia ID="inc_familia" runat="server" />
    <tab:tabs ID="tabs" OnTab='s_mostrarTab' runat="server" />
<uc1:popup ID='popup1' runat='server' a_bol_visible='false' />
</asp:Content>
