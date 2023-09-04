<%@ Page Language="VB" MasterPageFile="../../master/master/mas_FormularioSinGrilla.master"    AutoEventWireup="false" CodeBehind="~/forms/cat/consultaPrecio.aspx.vb" Inherits="website.samm_web.forms_cat_consultaPrecio" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada'
    TagPrefix='bus' %>
<%@ Register Src='~/controles/general/popup.ascx' TagName='popup' TagPrefix='pop' %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName='tabs' TagPrefix='tab' %>
<%@ Register Src="~/controles/doc/precioVentaItemDocumento.ascx" TagName="precioVentaItemDocumento"
    TagPrefix="uc4" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" runat="Server">
   <asp:Label ID="lbTitulo" runat="server" Text="<%$ Resources:res_titulopagina,forms_cat_consultarPrecio %>"
        CssClass="lbl_titulo"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" runat="Server">
<pop:popup ID='popupInterno' runat='server' a_bol_visible='false' />
    <asp:Panel runat="server" DefaultButton="bti_aceptar">
        <table class="tbl_marcoFormulario" cellpadding="5" cellspacing="5">
            <tr id="tr_listaPrecios" runat="server">
                <td>
                    <asp:Label ID="lbl_listaPrecios" runat="server" Text="Lista de Precios" CssClass="lbl"></asp:Label>
                </td>
                <td class='td_controlesFormulario'>
                    <bus:busquedaAvanzada ID="bus_listaPrecios" runat="server" a_str_tabla="cat_listaPrecio" />
                </td>
                <td></td>
            </tr>
            <tr id="tr_referencia" runat="server">
                <td>
                    <asp:Label ID="lbl_referenciaCatalogo" runat="server" Text="Referencia" CssClass="lbl"></asp:Label>
                </td>
                <td class='td_controlesFormulario'>
                    <asp:TextBox ID="txt_catalogo" runat="server" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_catalogo"
                        ValidationGroup="catalogo" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                </td>
                <td>
                    <bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="true" CssClass="imb"
                        ImageUrl="../../images/botones/aceptar.png" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <bti:BotonImagen ID="bti_exportar" runat="server" CausesValidation="false" CssClass="imb"
        ImageUrl="~/images/botones/exportar.gif" />
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <table cellspacing="9" class="tbl_marcoFormulario">
                <tr>
                    <td>
                        <asp:Label ID='lbl_resul' runat='server' Text='' CssClass="lbl_docResaltado"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <gri:grilla ID="gri_resultado" runat="server"></gri:grilla>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
