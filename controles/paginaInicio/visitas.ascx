<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="visitas.ascx.vb" Inherits="website.samm_componentes.controles_visitas" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName="tabsPersonalizados"
    TagPrefix="uc3" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName="tabs" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc4" %>
<table>
    <tr>
        <td>
            <table id="tbl_filtro" runat="server" style="background: #ffffff;">

                <tr>
                    <td>
                        <asp:Label ID="lbl_contratos" runat="server" CssClass="lbl" ></asp:Label>
                    </td>
                    <td colspan="3">
                    <uc4:busquedaAvanzada ID="bus_tipocontrato" runat="server" Visible="true" CssClass="_bus" />
                      </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_clientes" runat="server" CssClass="lbl" ></asp:Label>
                    </td>
                    <td colspan="3">
                        <uc4:busquedaAvanzada ID="bus_tercero" Visible="true" CssClass="_bus"
                           runat="server"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_desde" runat="server" CssClass="lbl" ></asp:Label>
                    </td>
                    <td>
                    <uc2:fechaAvanzada ID="fec_buscarDesde" runat="server" CssClass='txt_fecha_bus' CssClassHora='txt_hora_bus'  a_bln_obligatorio="false"/>
                      </td>
                      
                      <td>
                      <asp:Label ID="lbl_vista" runat="server" CssClass="lbl" Text="clientes"></asp:Label> &nbsp;
                      <asp:DropDownList ID="drp_vistas" runat="server" CssClass="drp" style="width:80px" ></asp:DropDownList>
                      </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_hasta" runat="server" CssClass="lbl" ></asp:Label>
                    </td>
                    <td>
                    <uc2:fechaAvanzada ID="fec_buscarHasta" runat="server" CssClass='txt_fecha_bus' CssClassHora='txt_hora_bus'  a_bln_obligatorio="false"/>                    
                      </td>
                      <td>
                        <cc1:BotonImagen ID="bti_filtro" runat="server" CausesValidation="false" ImageUrl="~/images/botones/aceptar.jpg" />
                      
                      </td>
                </tr>
                <tr>
                     <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                <td align="center" colspan="2">
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
                                        <asp:HyperLink ID="lnk" runat="server" CssClass="lnk" NavigateUrl='<%# eval("link") %>'
                                            Text='<%# eval("texto") %>'></asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:HyperLink ID="lnk_cantidad" runat="server" CssClass="lnk  actHome" NavigateUrl='<%# eval("link") %>'
                                            Text='<%# eval("cantidad") %>'    Tabla='<%# eval("tabla") %>' Filtro='<%#eval("filtro")%>' ></asp:HyperLink>
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
