<%@ Page Language="VB" MasterPageFile='~/master/master/mas_FormularioSinGrilla.master' AutoEventWireup="false" CodeBehind="empresa.aspx.vb" Inherits="website.samm_web.forms_gen_empresa" %>

<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc2" %>
<%@ Register Src='~/controles/general/barraHerramientas.ascx' TagName='barraHerramientas'
    TagPrefix='bar' %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName="tabsPersonalizados"
    TagPrefix="tab" %>
<%@ Register Src="~/controles/formsV/gen_presupuestoEmpresa.ascx" TagName="gen_presupuestoEmpresa"
    TagPrefix="uc1" %>
<%@ Register Src="~/controles/gen/inc_empresa.ascx" TagName="inc_empresa" TagPrefix="emp" %>

<asp:Content ID="content2" runat="server" ContentPlaceHolderID="cph_tituloPagina">
    <asp:Label ID="lbl_tituloPagina" runat="server" CssClass="lbl_titulo" Text="<%$ Resources:res_tituloPagina, forms_gen_empresa%>"></asp:Label>
</asp:Content>
<asp:Content ID="content1" runat="server" ContentPlaceHolderID='cph_general'>
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <emp:inc_empresa ID="inc_empresa" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
   
            </td>
        </tr>
        <tr>
        <td>
        <table style="padding-left:42px;">
        <tr>
            <td><bar:barraHerramientas ID='barraHerramientas' runat='server' /></td>
            </tr>
            <tr>
            <td>
                <tab:tabsPersonalizados ID="Tabs" runat="server" />
            </td>
        </tr>
        </table>
        </td>
        </tr>
        <tr>
                        <td>
                            <uc1:gen_presupuestoEmpresa ID="gen_presupuestoEmpresa" runat="server" Visible="true">
                            </uc1:gen_presupuestoEmpresa>
            </td>
        </tr>
    </table>
    <uc2:popup ID="Popup1" runat="server" a_bol_mostrarSAMM="true" />
</asp:Content>
