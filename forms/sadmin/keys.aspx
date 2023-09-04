<%@ Page Language="VB" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master" AutoEventWireup="false" CodeBehind="keys.aspx.vb" Inherits="website.samm_web.forms_sadmin_keys" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>

<%@ Register src="~/controles/general/popup.ascx" tagname="popup" tagprefix="uc1" %>

<asp:Content ID="content2" runat="server" ContentPlaceHolderID="cph_tituloPagina">
    <asp:Label ID="lbl_tituloPagina" runat="server" CssClass="lbl_titulo" Text="<%$ Resources:res_tituloPagina, forms_sadmin_keys%>"></asp:Label>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_general" Runat="Server">
    <table class="tbl_marcoFormulario" cellpadding="0" cellspacing="0">
        <tr>
            <td style="padding: 10px;">
                <asp:GridView ID="grvValores" runat="server" AutoGenerateColumns="False">
                    <columns>
            <asp:BoundField HeaderText="Clave" DataField="clave" />
            <asp:TemplateField HeaderText="Valor">
                <ItemTemplate>
                    <asp:TextBox ID="txtValor" runat="server" CssClass="txt" Text='<%#bind("valor") %>'>&quot;&gt;</asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
        </columns>
                    <rowstyle cssclass="gri_item" />
                    <headerstyle cssclass="gri_titulo" />
                    <alternatingrowstyle cssclass="gri_itemAlterno" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="padding-left:150px; padding-bottom:2px;">
                <bti:BotonImagen ID="btnGuardar" runat="server" ImageUrl="../../images/botones/aceptar.jpg" />
            </td>
        </tr>
        <tr>
            <td align="center" style="padding-bottom:2px;">
                <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
            </td>
        </tr>
    </table>
    <uc1:popup ID="popupInterno" runat="server" />
</asp:Content>

