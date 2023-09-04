<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='inc_componente.ascx.vb'
Inherits='website.samm_componentes.controles_seguridad_inc_componente' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/grilla.ascx' TagName='grilla' TagPrefix='gri' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>

<asp:Panel ID="pnl_componente" runat="server">
    <table>
        <tr>
            <td>
                <table>
                    <tr>
                        <td>
                            <bus:busquedaAvanzada ID='bus_componentes' runat='server' a_str_tabla='cat_catalogo' a_str_filtros="id_subTipoCatalogo=11" />
                        </td>
                        <td>
                            <bti:BotonImagen ID='btn_agregar' runat='server' ImageUrl='~/images/botones/agregar.gif'
                                ValidationGroup='form' CssClass='imb' />
                        </td>
                        
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td id="td_grilla" runat="server" style="height: 100%">
                <div id="div_grilla" runat="server" class="div_grilla">
                    <asp:GridView ID="grd_componente" runat="server" AutoGenerateColumns="False" AllowPaging="true" 
                        PageSize="5" BorderStyle="None">
                        <Columns>
                            <asp:TemplateField Visible="false">
                                <ItemTemplate >
                                    <asp:Label ID="lbl_idRegistro" runat="server" Text='<%# eval("id") %>' CssClass="lbl"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label ID="lbl_componente" runat="server" Text="Componente" CssClass="lbl"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_nombreComponente" runat="server" Text='<%# eval("componente") %>' CssClass="lbl"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label ID="lbl_dimension" runat="server" Text="Dimension" CssClass="lbl"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate >
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_dimensionX" runat="server" Text="Dimension X" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID='drp_dimensionX' runat='server' CssClass="drp"></asp:DropDownList>
                                                <asp:Label ID="lbl_dimX" runat="server" Text='<%# eval("id_dimension_x")%>' visible="false"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_dimensionY" runat="server" Text="Dimension Y" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID='drp_dimensionY' runat='server' CssClass="drp" ></asp:DropDownList>
                                                <asp:Label ID="lbl_dimY" runat="server" Text='<%# eval("id_dimension_y")%>' visible="false"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_dimensionZ" runat="server" Text="Dimension Z" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID='drp_dimensionZ' runat='server' CssClass="drp"></asp:DropDownList>
                                                <asp:Label ID="lbl_dimZ" runat="server" Text='<%# eval("id_dimension_z")%>' visible="false"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label ID="lbl_posicion" runat="server" Text="Posicion" CssClass="lbl"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate >
                                    <asp:TextBox ID="txt_posicion" runat="server" Text='<%# eval("posicion") %>' CssClass="txt"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label ID="lbl_acciones" runat="server" Text="Acciones" CssClass="lbl"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <table>
                                        <tr>
                                            <td></td>
                                            <td align="center">
                                                <asp:ImageButton ID="btn_eliminar" runat="server"  CommandName="Eliminar"  
                                                    CommandArgument='<%# eval("id") %>' ImageUrl="../../images/iconos/eliminar.gif" 
                                                    CausesValidation="False" ToolTip="Eliminar" />
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <asp:Label ID="lbl_vacio" runat="server" Text="No se han agregado componentes al control" CssClass="lbl_mensaje"></asp:Label>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </div>
            </td>
        </tr>
        
        <tr>
            <td align="right">
                <bti:BotonImagen ID='btn_actualizar' runat='server' ImageUrl='../../images/botones/aceptar.png'
                    ValidationGroup='form' CssClass='imb' />
            </td>
        </tr>
    </table>
</asp:Panel>

<%--<asp:HiddenField ID='hddEstadoFormulario' runat='server' Value='<%# samm_logica.enu_estadoFormulario.buscar %>' />
<boc:bocadillo ID="Bocadillo" runat="server" />--%>