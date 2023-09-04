﻿<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_subDocumentos.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_inc_subDocumentos" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="uc2" %>
<table class="tbl_marcoFormulario">
<tr><td><asp:Label ID ="lbl_equipo" runat="server" CssClass ="lbl"></asp:Label></td>
<td><uc2:busquedaAvanzadaMultiple ID="bus_equipo"  runat="server" a_bol_postBack="true"   a_str_tabla="equ_equipo" a_str_campos="equipo,equipo_codigo,equipo_serial"  />
</td></tr>
<tr><td><asp:Label ID ="lbl_catalogo" runat="server" CssClass ="lbl"></asp:Label></td>
<td><uc2:busquedaAvanzadaMultiple ID="bus_catalogo"  a_bol_postBack="true"   runat="server" a_str_tabla="cat_catalogo" a_str_campos="codigoinventario,catalogo_codigo,catalogo"  />
</td></tr>
    <tr>
        <td>
            <asp:Label ID="lbl_estado" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,doc_estadotipodocumento_estadotipodocumento %>'></asp:Label>
        </td>
        <td>
            <uc2:busquedaAvanzadaMultiple ID="bus_estado" runat="server" a_str_tabla="doc_estadoTipoDocumento"
                a_str_campo="estadotipodocumento,estadotipodocumento_codigo,id_tipodocumento" />
        </td>
    </tr>
</table>
<table class="tbl_marcoFormulario">
    <tr>
        <td>
            <asp:Label ID="lbl_descripcion" runat="server" CssClass="lbl"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="dtl_tipos" runat="server">
                <ItemTemplate>
                    <span class="lbl_resaltado">
                        <%#Eval("tipo")%></span>
                    <asp:GridView ID="grv_docs" runat="server" OnRowCommand="capturar">
                        <RowStyle CssClass="gri_item" />
                        <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                        <PagerStyle CssClass="gri_paginacion" />
                        <HeaderStyle CssClass="gri_titulo" />
                        <AlternatingRowStyle CssClass="gri_itemAlterno" />
                        <Columns>
                            <asp:TemplateField>                        
                          <ItemTemplate>
                            <asp:LinkButton id="lnk_select" runat=server CommandName="select" CommandArgument='<%# eval("id")%>' Text="Detalle" CausesValidation= "false"></asp:LinkButton>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_documento_documento_numero %>'>
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# eval("numero")%>' NavigateUrl='<%# eval("lnk") %>'
                                        Visible='<%# IIF(eval("lnk")="",false,true) %>' CssClass="lnk"></asp:HyperLink></ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_documento_documento %>'>
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink2" runat="server" Text='<%# eval("documento")%>' NavigateUrl='<%# eval("lnk") %>'
                                        CssClass='<%# IIF(eval("numero")="","lbl_resaltado","lnk") %>' ToolTip='<%# eval("documento_todo")%>'></asp:HyperLink></ItemTemplate>
                            </asp:TemplateField>
                            
                        </Columns>
                    </asp:GridView>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
    <tr>
    <td>
    <asp:GridView ID="grd_items" runat="server" AutoGenerateColumns="False" ShowFooter="True" Visible="false">
<Columns>

<asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_itemdocumento %>">
<ItemTemplate>
 <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="false" > </asp:Label>
<asp:Label ID="lbl_item" runat="server" Text='<%# eval("itemDocumento") %>' CssClass="lbl_grilla"></asp:Label></ItemTemplate>
</asp:TemplateField>
<asp:BoundField HeaderText="<%$ Resources:res_campoGrilla,cat_reemplazo_cat_catalogo_repuesto_1_codigoInventario %>"
DataField='cat_catalogo_codigoInventario' />

<asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,dis_evento_catalogo_valorunitario %>"
FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
<ItemTemplate>
<asp:Label ID="lbl_VALORUNITARIOplaneado" runat="server" CssClass="lbl_grilla" Text=' <%# eval("ValorUni") %>'></asp:Label></ItemTemplate>
<FooterTemplate>
<asp:Label ID="lbl_TOTVALORUNITARIOplaneado" runat="server" CssClass="lbl_grilla"></asp:Label></FooterTemplate>
</asp:TemplateField>


<asp:BoundField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_cantidadplaneado %>"
ItemStyle-HorizontalAlign="Center" DataField='cantidadPlaneado' />
<asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_totalplaneado %>"
FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
<ItemTemplate>
<asp:Label ID="lbl_totalPlaneado" runat="server" CssClass="lbl_grilla" Text=' <%# eval("totalPlane") %>'></asp:Label></ItemTemplate>
<FooterTemplate>
<asp:Label ID="lbl_TOTTotalPlaneado" runat="server" CssClass="lbl_grilla"></asp:Label></FooterTemplate>
</asp:TemplateField>

</Columns>
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
</asp:GridView>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl"></asp:Label>
    </td>
    </tr>
    <tr>
        <td>
            <span class="lbl">*</span><asp:Label ID="lbl_itemDochijos" runat="server" CssClass="lbl"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <span class="lbl">*</span>
            <asp:Label ID="lbl_itemDocHermanas" runat="server" CssClass="lbl"></asp:Label>
        </td>
        </tr>
        <tr>
        <td >
        <asp:GridView ID="grv_docHermanas" runat="server" AutoGenerateColumns="false">
            <RowStyle CssClass="gri_item" />
            <SelectedRowStyle CssClass="gri_itemSeleccionado" />
            <PagerStyle CssClass="gri_paginacion" />
            <HeaderStyle CssClass="gri_titulo" />
            <AlternatingRowStyle CssClass="gri_itemAlterno" />
            <Columns>
                <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_documento_documento_numero %>'>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# eval("documento")%>' NavigateUrl='<%# eval("lnk") %>'
                            Visible='<%# IIF(eval("lnk")="",false,true) %>' CssClass="lnk"></asp:HyperLink></ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_documento_cotizacion_version %>'>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# eval("version")%>' NavigateUrl='<%# eval("lnk") %>'
                            CssClass='<%# IIF(eval("numero")="","lbl_resaltado","lnk") %>' ToolTip='<%# eval("version")%>'></asp:HyperLink></ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_documento_estadotipodocumento_id_estadotipodocumento%>'>
                    <ItemTemplate>
                        <asp:Label ID="lbl_contacto" runat="server" Text='<%# bind("doc_documento_cotizacion_doc_estadotipodocumento_estadotipodocumento") %>'> </asp:Label></ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_documento_id_tercero_cliente%>'>
                    <ItemTemplate>
                        <asp:Label ID="lbl_contacto" runat="server" Text='<%# bind("doc_documento_cotizacion_ter_tercero_cliente_tercero") %>'> </asp:Label></ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_documento_fecha_fh%>'>
                    <ItemTemplate>
                        <asp:Label ID="lbl_contacto" runat="server" Text='<%# bind("doc_documento_cotizacion_fecha_fh") %>'> </asp:Label></ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        </td>
    </tr>
</table>
