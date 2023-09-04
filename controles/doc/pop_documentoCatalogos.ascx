<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_documentoCatalogos.ascx.vb" Inherits="website.samm_componentes.controles_gas_pop_documentoCatalogos" %>
<script type="text/javascript" src="../../js/Documento/Documentos.js"></script>
<script type="text/javascript" src="../../js/Interfaz/general.js"></script>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table>
    <tr>
        <td>
        </td>
        <td>
            <asp:Label ID="lblDocumentos" runat="server" CssClass="lbl">
            </asp:Label>
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <asp:GridView ID="grvCatalogos" runat="server" AutoGenerateColumns="False">
                <Columns>
                
                  <asp:TemplateField ItemStyle-HorizontalAlign="Center">

                        <HeaderTemplate>
                            <asp:CheckBox ID="chb_habilitar" runat="server" Visible='true' />
                        </HeaderTemplate>
                
                         <ItemTemplate>
                             <asp:CheckBox ID="chb_habilitar" runat="server" />
                            <asp:Label ID="lblId" runat="server" Visible="false" Text='<%# eval("id") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>


               <asp:TemplateField HeaderText='Catalogo' ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                            <asp:Label ID="lblIdCatalogoElim" runat="server" Visible="true" Text='<%# eval("catalogo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    
                    <asp:TemplateField HeaderText='Codigo' ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                            <asp:Label ID="lblIdElim" runat="server" Visible="true" Text='<%# eval("codigoInventario") %>'></asp:Label>
                        </ItemTemplate>                    
                    </asp:TemplateField>
                    
                    
    
                    
                        <asp:TemplateField HeaderText='Subtipo Catalogo' ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="lblSubtipo" runat="server" Visible="true" Text='<%# eval("cat_subtipoCatalogo_subtipoCatalogo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    
                    
                    
                    <asp:TemplateField HeaderText='Documentos' ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                            
                                <asp:Label ID="lblDocumentos" runat="server" Visible="true" Text='<%# eval("Documentos") %>'></asp:Label>
                                
                                <asp:Label ID="lblVermas" runat="server" Visible="false" >ver mas..</asp:Label>
                                
                            </ItemTemplate>
                    </asp:TemplateField>
                    
                    
                    
                    
                    <%--<asp:BoundField DataField="cantidad" HeaderText='res_campoGrilla,doc_pendientedocumento_cantidad' />--%>
                    <%--<asp:BoundField DataField="id_catalogo" HtmlEncode="false" HeaderText='res_campoGrilla,doc_pendienteItem_documentos' />--%>    

                </Columns>
                <FooterStyle CssClass="gri_pie" />
                <RowStyle CssClass="gri_item" />
                <PagerStyle CssClass="gri_paginacion" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
            </asp:GridView>
            </td>
        <td>
        </td>
        <td>
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td><br />
            <asp:Label ID="lblDocCreado" runat="server" CssClass="lbl"></asp:Label>
            <asp:Label ID="lblNoDoc" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td>
        </td>
    </tr>
</table>
<asp:Label ID="lblMensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
<cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="~/images/botones/aceptar.jpg" CausesValidation="False" visible="true"/>