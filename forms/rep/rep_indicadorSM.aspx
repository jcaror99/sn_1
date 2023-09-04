<%@ Page Language="VB" MasterPageFile="~/master/master/mas_FormularioAyudaSinMenu.master" AutoEventWireup="false" CodeBehind="rep_indicadorSM.aspx.vb" Inherits="website.forms_rep_rep_indicadorSM" title="SammWeb-Report" %>
<%--<%@ Register Src="~/controles/rep/reportView.ascx" TagName="reportView" TagPrefix="uc3" %>
<%@ Register Src="~/controles/rep/filtro.ascx" TagName="filtro" TagPrefix="uc2" %>
<%@ Register Src="~/controles/rep/arbol.ascx" TagName="arbol" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc1" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" Runat="Server">
<asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo' Text="<%$ Resources:res_tituloPagina, forms_rep_indicador%>"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" Runat="Server">
<script type="text/javascript">s_maximizar();</script>
    <%--<table style="width:100%">
        <tr style="height:1%">
            <td valign="top" bgcolor="White">
                <uc1:arbol ID="arbolINDREP" runat="server" />
                </td>
            
            <td style="width:90%;height:1%;vertical-align:top;background-color:White;">
                <uc2:filtro ID="filtro_1" runat="server" />
                <uc3:reportView ID="ReportView1" runat="server" />
            </td>
        </tr>
        <tr style="height:99%">
            <td style="vertical-align:topheight:99%" >
            </td>
        </tr>
    </table>
      <uc1:popup ID='popup1' runat='server' a_bol_visible='false' />--%>
</asp:Content>

