<%@ Page Language="VB" MasterPageFile='~/master/master/mas_FormularioSinGrilla.master' AutoEventWireup="false" CodeBehind="diaFestivo.aspx.vb" Inherits="website.samm_web.forms_gen_diaFestivo" %>

<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="pop" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<asp:Content ID='content2' runat="server"  ContentPlaceHolderID='cph_tituloPagina'>
    <asp:Label ID="lbl_tituloPagina" runat="server" CssClass="lbl_titulo" Text="<%$ Resources:res_tituloPagina, forms_gen_diaFestivo%>"></asp:Label>
</asp:Content>
<asp:Content ID='content1' runat="server" ContentPlaceHolderID='cph_general'>
    <table  class='tbl_marcoFormulario' border='0' cellpadding='0' cellspacing='0'>
        <tr>
            <td>
                <table align="center">
                    <tr>
                        <td colspan="2">
                            <bti:BotonImagen ID="imbAnterior" runat="server" ImageUrl="~/images/iconos/pag_atras.jpg"
                                CausesValidation="False" />
                            <asp:Label ID="lbl_año" runat="server" CssClass='lbl_festivoANIO'></asp:Label>
                            <bti:BotonImagen ID="imbSiguiente" runat="server" ImageUrl="~/images/iconos/pag_adelante.jpg"
                                CausesValidation="False" /></td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_paises" runat="server" CssClass="lbl" Text="<%$ Resources:res_etiquetas_gen,seleccionarFestivos %>">
                            </asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="drp_paises" runat="server" CssClass='drp' AutoPostBack="false">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <bti:BotonImagen ID="btn_guardar" runat="server" ImageUrl="../../images/botones/aceptar.png"
                                CssClass='imb' CausesValidation="false" />
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td style="width: 100px">
                            <asp:Calendar ID="cld_enero" runat="server" CssClass='cld' SelectedDayStyle-CssClass="td_diaFestivo">
                                <othermonthdaystyle cssclass="oculto" />
                            </asp:Calendar>
                        </td>
                        <td style="width: 100px">
                            <asp:Calendar ID="cld_febrero" runat="server" CssClass='cld'>
                                <othermonthdaystyle cssclass="oculto" />
                            </asp:Calendar>
                        </td>
                        <td style="width: 100px">
                            <asp:Calendar ID="cld_marzo" runat="server" CssClass='cld'>
                                <othermonthdaystyle cssclass="oculto" />
                            </asp:Calendar>
                        </td>
                        <td style="width: 100px">
                            <asp:Calendar ID="cld_abril" runat="server" CssClass='cld'>
                                <othermonthdaystyle cssclass="oculto" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:Calendar ID="cld_mayo" runat="server" CssClass='cld'>
                                <othermonthdaystyle cssclass="oculto" />
                            </asp:Calendar>
                        </td>
                        <td style="width: 100px">
                            <asp:Calendar ID="cld_junio" runat="server" CssClass='cld'>
                                <othermonthdaystyle cssclass="oculto" />
                            </asp:Calendar>
                        </td>
                        <td style="width: 100px">
                            <asp:Calendar ID="cld_julio" runat="server" CssClass='cld'>
                                <othermonthdaystyle cssclass="oculto" />
                            </asp:Calendar>
                        </td>
                        <td style="width: 100px">
                            <asp:Calendar ID="cld_agosto" runat="server" CssClass='cld'>
                                <othermonthdaystyle cssclass="oculto" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:Calendar ID="cld_septiembre" runat="server" CssClass='cld'>
                                <othermonthdaystyle cssclass="oculto" />
                            </asp:Calendar>
                        </td>
                        <td style="width: 100px">
                            <asp:Calendar ID="cld_octubre" runat="server" CssClass='cld'>
                                <othermonthdaystyle cssclass="oculto" />
                            </asp:Calendar>
                        </td>
                        <td style="width: 100px">
                            <asp:Calendar ID="cld_noviembre" runat="server" CssClass='cld'>
                                <othermonthdaystyle cssclass="oculto" />
                            </asp:Calendar>
                        </td>
                        <td style="width: 100px">
                            <asp:Calendar ID="cld_diciembre" runat="server" CssClass='cld'>
                                <othermonthdaystyle cssclass="oculto" />
                            </asp:Calendar>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <pop:popup ID="pop_motivoFestivo" runat="server" />
</asp:Content>
