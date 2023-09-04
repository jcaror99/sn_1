<%@ Page Language="VB" MasterPageFile="~/master/master/mas_FormularioNuevoAjax.master"  AutoEventWireup="false" CodeBehind="firma.aspx.vb" Inherits="website.forms_general_firma" %>
<%@ Register src="~/controles/general/Firma.ascx" tagname="Firma" tagprefix="uc5" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" Runat="Server">
<script type="text/javascript">s_maximizar();</script>
    <table style="width:100%">
        <tr style="height:0%">
            <td style="width:90%;height:1%;vertical-align:top;background-color:White;">
                <uc5:Firma ID="Firma1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

