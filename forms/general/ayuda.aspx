<%@ Page Language="VB" AutoEventWireup="false" CodeBehind="ayuda.aspx.vb" Inherits="website.samm_web.ayuda_indice_ayuda"
    MasterPageFile="~/master/master/mas_FormularioAyuda.master" %>

<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName="tabsPersonalizados"
    TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/cabecera.ascx" TagName="cabecera" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" runat="Server">
    <asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo' Text="<%$ Resources:res_tituloPagina, ayuda%>"></asp:Label>
</asp:Content>
<asp:Content ContentPlaceHolderID="cph_general" runat="server">
    <uc1:popup ID="popupInterno" runat="server" />
    <link href="../../css/ayuda.css" rel="stylesheet" type="text/css" />
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 100%">
        <tr>
            <%-- Seccion ayuda buscar examinar --%>
            <td align="left" valign="top" style="width: 280px; height: 100%">
                <%-- Tabs --%>
                <uc1:tabsPersonalizados ID="tbp" runat="server" />
                <%-- Arbol --%>
                <div id="divarbol" style="overflow: scroll; width: 280px;" runat="server">
                    <table border="0">
                        <tr>
                            <td>
                                <asp:Label ID="lab_formulePregunta" runat="server" CssClass="lbl" Text="<%$ Resources:res_etiquetas_gui, formulePregunta %>"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txt_ayuda" runat="server" CssClass="txt_multilineaPequeno" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_ayuda"
                                    ValidationGroup="ayuda" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <cc1:BotonImagen ID="btn_agregarPregunta" ValidationGroup="ayuda" runat="server"
                                    ImageUrl="../../images/botones/agregarpregunta.gif" />
                            </td>
                        </tr>
                    </table>
                    <asp:TreeView ID="trvIndice" runat="server" LineImagesFolder="../../images/treelineimages"
                        ShowLines="True" Width="148%">
                        <RootNodeStyle CssClass="trv_raiz" />
                        <SelectedNodeStyle CssClass="tre_seleccionado" />
                        <NodeStyle CssClass="tre_nodo" />
                    </asp:TreeView>
                </div>
                <%-- buscar --%>
                <div id="divbuscar" runat="server" style="overflow: scroll; width: 280px;">
                    <table width="250" border="1">
                        <tr>
                            <td>
                                <asp:TextBox ID="txt_buscar" runat="server" CssClass="txt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_buscar"
                                    ValidationGroup="buscar" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <cc1:BotonImagen ID="btn_buscar" ValidationGroup="buscar" runat="server" ImageUrl="../../images/botones/buscarBA.gif" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" Width="250px"
                                    class="letragrilla">
                                    <Columns>
                                        <asp:TemplateField ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" CssClass="chk" runat="server" Text='<%# eval("valorancore") %>'
                                                    Visible='<%# eval("textobuscar")="" %>'></asp:Label>
                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# eval("nombrehtml")+"#"+eval("valorancore") %>'
                                                    Target="ifrContenido" Text='<%# eval("textobuscar") %>'></asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </div>
                <%-- noticias --%>
                <div id="divPagina" runat="server" style="overflow: scroll; width: 280px;">
                    <br />
                    <asp:LinkButton ID="hpk_manual" CssClass="lnk_tab_seleccionado" Text="> Manual PDF Online" runat="server" />
                    <br />
                    <br />
                    <asp:LinkButton ID="hpy_capacitacion" CssClass="lnk_tab_seleccionado" Text="> Auto Capacitaciones" runat="server" />
                    <br />
                    <br />
                    <asp:LinkButton ID="lnk_versiones" CssClass="lnk_tab_seleccionado" Text="> Actualizaciones" runat="server" />
                    <br />
                    <br />
                    <asp:HyperLink ID="hpr_recursos" runat="server" CssClass="lnk_tab_seleccionado" NavigateUrl='http://idaesoluciones.com/sammweb/recursos.zip'
                        Target="ifrContenido" Text='Actualizador recursos'></asp:HyperLink>
                    <br />
                    <br />
                </div>
            </td>
            <%-- contenido ayuda --%>
            <td valign="top" style="height: 100%; width: 100%;">
                <div id="frmContenido" runat="server">
                    <iframe runat="server" id="ifrContenido" frameborder="0" name="ifrContenido" width="100%"
                        height="100%"></iframe>
                </div>
            </td>
        </tr>
    </table>
    <script type="text/javascript">
        redimensionarIframe('<%= Me.ifrContenido.ClientID %>');
        redimensionarIframe('<%= Me.divPagina.ClientID %>');
        redimensionarIframe('<%= Me.divarbol.ClientID %>');
        redimensionarIframe('<%= Me.divbuscar.ClientID %>');
    </script>
</asp:Content>
