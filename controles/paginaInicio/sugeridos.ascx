<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="sugeridos.ascx.vb" Inherits="website.samm_componentes.controles_sugeridos" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName="tabsPersonalizados"
    TagPrefix="uc3" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName="tabs" TagPrefix="uc1" %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc4" %>
<table>
    <tr>
        <td>
            <table id="tbl_filtro" runat="server" style="background: #ffffff;">
                <%--<tr>
                    <td>
                        <asp:Label ID="lbl_tiposDocumento" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <uc4:busquedaAvanzada ID="bus_tiposDocumento" Visible="true" CssClass="_bus" runat="server" />
                    </td>
                </tr>--%>
                <tr>
                    <td>
                        <asp:Label ID="lbl_terceros" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <uc4:busquedaAvanzada ID="bus_usuarios" Visible="true" CssClass="_bus" runat="server"  a_bol_postBack="true"  runat="server"  OnCheckedChanged="bus_usuarios_seleccionar"/>
                    </td>
                </tr>
                 <tr>
                  <td>
                    <asp:Label ID='lbl_id_sucursal' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                    <td >
                    <bus:busquedaAvanzada ID='bus_sucursal' runat='server' a_str_tabla='ter_sucursal' Visible="true" CssClass="_bus" 
                        a_bol_postBack="true"  runat="server"  OnCheckedChanged="bus_usuarios_seleccionar"/>
                    </td>
                    </tr>
                    
                      <tr>
                  <td>
                    <asp:Label ID='lbl_familia' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                    <td >
                    <bus:busquedaAvanzada ID='bus_familia' runat='server' a_str_tabla='gen_familia' Visible="true" CssClass="_bus" 
                        a_bol_postBack="true"  runat="server"  />
                    </td>
                    </tr>
                   


                    <tr>
                  <td>
                    <asp:Label ID='lbl_clasificacion' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                    <td >
                    <bus:busquedaAvanzada ID='bus_clasificacion' runat='server' Visible="true" CssClass="_bus" 
                          runat="server" />
                    </td>
                    </tr>
                    
                <tr>
                    <td align="center" colspan="2">
                        <cc1:BotonImagen ID="bti_filtro" runat="server" CausesValidation="false" ImageUrl="~/images/botones/aceptar.jpg" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <table>
                <tr>
                    <td>
                        <uc3:tabsPersonalizados ID="tbp" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="grd_link" runat="server" AutoGenerateColumns="False" ShowHeader='false'
                            GridLines="None">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton id="lnk" runat="server" CssClass="lnk" OnClick="s_clickAbrirPOP" Text='<%# eval("texto") %>'></asp:LinkButton> 
                                        <%--<asp:HyperLink ID="lnk" runat="server" CssClass="lnk" NavigateUrl='<%# eval("link") %>' Text='<%# eval("texto") %>'></asp:HyperLink>--%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:HyperLink ID="lnk_cantidad" runat="server" CssClass="lnk" OnClick="s_clickAbrirPOP" Text='<%# eval("cantidad") %>'></asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
