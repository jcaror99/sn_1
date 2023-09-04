<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="sugeridos.ascx.vb" 
Inherits="website.samm_controles.controles_general_sugeridos" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>

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
            <asp:GridView ID="grvDocumentos" runat="server" AutoGenerateColumns="False">
                <Columns>
                <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                        <HeaderTemplate>
                        
                            <asp:Label ID="lbl_tituloEliminar" runat="server"></asp:Label><br />
                            <asp:CheckBox ID="chb_seleccionarElim" runat="server" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="chb_seleccionarElim" runat="server" /><br />
                            <asp:Label ID="lblIdCatalogoElim" runat="server" Visible="false" Text='<%# eval("id_catalogo") %>'>
                            </asp:Label>
                            <asp:Label ID="lblIdElim" runat="server" Visible="false" Text='<%# eval("id") %>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                        <HeaderTemplate>
                            <asp:Label ID="lbl_tituloAgregar" runat="server" Visible='<%# IIF(eval("tipoDocumento")="8",False,True) %>' ></asp:Label><br />
                            <asp:CheckBox ID="chb_seleccionar" runat="server" Visible='<%# IIF(eval("tipoDocumento")="8",False,True) %>' />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="chb_seleccionar" runat="server" Visible='<%# IIF(eval("tipoDocumento")<>"8" or eval("idDocumento")>0,true,false) %>' />
                            <asp:Label ID="lblIdCatalogo" runat="server" Visible="false" Text='<%# eval("id_catalogo") %>'>
                            </asp:Label>
                            <asp:Label ID="lblId" runat="server" Visible="false" Text='<%# eval("id") %>'>
                            </asp:Label>
                            <asp:Label ID="lblIdOT" runat="server" Visible="false" Text='<%# eval("id_documento") %>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="cantidad" HeaderText='res_campoGrilla,doc_pendientedocumento_cantidad' />
                    <asp:TemplateField HeaderText='res_campoGrilla,cat_catalogo_codigoinventario'>
                        <ItemTemplate>
                            <asp:Label ID="lbl_codigoInventario" runat="server" Visible="true" Text='<%# eval("cat_catalogo_codigoInventario") %>'> </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='res_campoGrilla,cat_catalogo_catalogo'>
                        <ItemTemplate>
                            <asp:Label ID="lbl_catalogo" runat="server" Visible="true" Text='<%# eval("cat_catalogo_catalogo") %>'> </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="subtipoCatalogo" HeaderText='res_campoGrilla,cat_catalogo_id_subtipocatalogo' />
                    <asp:BoundField DataField="fechaCreacion" HeaderText='res_campoGrilla,cnt_visitafija_fechacreada_ff' />
                    
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="lbl_tituloDocumentoOrigen" runat="server"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_documentoOrigen" runat="server" Text='<%# eval("documentoOrigen") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                         <asp:TemplateField>
                    <HeaderTemplate>
                            <asp:Label ID="lbl_observacion" runat="server" Text="<%$Resources:res_campoGrilla,doc_documento_requisicion_observaciones %>"></asp:Label>
                        </HeaderTemplate>
                        
                        <ItemTemplate>
                         <asp:Label ID="lbl_observacion_texto" runat="server" Visible="true" Text='<%# eval("pendienteDocumento") %>'> </asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>  
                    
                    <asp:TemplateField HeaderText='res_campoGrilla,ort_programacion_id_reportetecnico' ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:ImageButton ID="imb_reporteTecnico" runat ="server" ImageUrl ="../../images/botones_dis/reporte5.jpg" visible="false"/>
                        <asp:HyperLink ID="hpr_imprimir" style="cursor:pointer; cursor: hand;" runat="server" ImageUrl="../../images/iconos/imprimirReporteNoFirmado.png"
                                OnClick='<%# eval("link_imprimir") %>' Visible='<%# IIF(eval("link_imprimir")="",False,True) %>'></asp:HyperLink>
                                
                                <asp:HyperLink ID="hpr_imprimirConFirma" style="cursor:pointer; cursor: hand;" runat="server" ImageUrl="../../images/iconos/imprimirReporteFirmado.png"
                                OnClick='<%# eval("link_imprimirConFirma") %>' Visible='<%# IIF(eval("link_imprimirConFirma")="",False,True) %>'></asp:HyperLink>
                                
                                <asp:Image ID="hpr_firma" runat="server" ImageUrl="../../images/iconos/reporteFirmado.png"
                                 Visible='<%# IIF(eval("link_firma")=False,False,True) %>'></asp:Image>
                    </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:BoundField DataField="documentos" HtmlEncode="false" HeaderText='res_campoGrilla,doc_pendienteItem_documentos' />                                     
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
        <td>
            <asp:Label ID='lbl_subtipoDocumento' runat='server' CssClass='lblobligatorio'></asp:Label>
            <asp:DropDownList ID="drp_subtipoDocumento" runat="server"  CssClass ="drp" AutoPostBack="true">
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID='rfv_subtipoDocumento' runat='server' ControlToValidate='drp_subtipoDocumento'
            ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td><br />
            <asp:Label ID="lblDocCreado" runat="server" CssClass="lbl"></asp:Label>
            <asp:Label ID="lblNoDoc" runat="server"></asp:Label>
        </td>
        <td>
        </td>
    </tr>
</table>

