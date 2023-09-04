<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_detalle.ascx.vb"
Inherits="website.samm_componentes.controles_doc_inc_detalle" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/adjuntos.ascx" TagName="adjuntos"
TagPrefix="uc4" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>

<Columns>

<asp:TemplateField>
<ItemTemplate>
 <asp:CheckBoxList ID="chbValores" runat="server" CssClass="chk" RepeatColumns="5" >
 
  </asp:CheckBoxList>
     <bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg" />
        <br />                                                                  
</ItemTemplate>
</asp:TemplateField>
</Columns>

<asp:GridView ID="grd_items" runat="server" AutoGenerateColumns="False" ShowFooter="True">
<Columns>
<asp:BoundField HeaderText="<%$ Resources:res_campoGrilla,cat_reemplazo_cat_catalogo_repuesto_1_codigoInventario %>"
DataField='cat_catalogo_codigoInventario' />
<asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_itemdocumento %>">
<ItemTemplate>
 <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="false" > </asp:Label>
<asp:Label ID="lbl_item" runat="server" Text='<%# eval("itemDocumento") %>' CssClass="lbl_grilla"></asp:Label></ItemTemplate>
</asp:TemplateField>
<asp:BoundField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_cantidadplaneado %>"
ItemStyle-HorizontalAlign="Center" DataField='cantidadPlaneado' />
<asp:BoundField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_cantidadejecutado %>"
ItemStyle-HorizontalAlign="Center" DataField='cantidadEjecutado' />
<asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_totalplaneado %>"
FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
<ItemTemplate>
<asp:Label ID="lbl_totalPlaneado" runat="server" CssClass="lbl_grilla" Text='<%# eval("totalPlaneado") %>'></asp:Label></ItemTemplate>
<FooterTemplate>
<asp:Label ID="lbl_TOTTotalPlaneado" runat="server" CssClass="lbl_grilla"></asp:Label></FooterTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_totalejecutado %>"
FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
<ItemTemplate>
<asp:Label ID="lbl_TotalEjecutado" runat="server" CssClass="lbl_grilla" Text='<%# eval("totalEjecutado") %>'></asp:Label></ItemTemplate>
<FooterTemplate>
<asp:Label ID="lbl_TOTTotalEjecutado" runat="server" CssClass="lbl_grilla"></asp:Label></FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_costoplaneado %>"
FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
<ItemTemplate>
<asp:Label ID="lbl_costoPlaneado" runat="server" CssClass="lbl_grilla" Text='<%# eval("costoPlaneado") %>'></asp:Label></ItemTemplate>
<FooterTemplate>
<asp:Label ID="lbl_TOTcostoPlaneado" runat="server" CssClass="lbl_grilla"></asp:Label></FooterTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_costoejecutado %>"
FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
<ItemTemplate>
<asp:Label ID="lbl_costoEjecutado" runat="server" CssClass="lbl_grilla" Text='<%# eval("costoEjecutado") %>'></asp:Label></ItemTemplate>
<FooterTemplate>
<asp:Label ID="lbl_TOTcostoEjecutado" runat="server" CssClass="lbl_grilla"></asp:Label></FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_ivaplaneado %>"
FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
<ItemTemplate>
<asp:Label ID="lbl_ivaPlaneado" runat="server" CssClass="lbl_grilla" Text='<%# eval("IVAplaneado") %>'></asp:Label></ItemTemplate>
<FooterTemplate>
<asp:Label ID="lbl_TOTIvaPlaneado" runat="server" CssClass="lbl_grilla"></asp:Label></FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_ivaejecutado %>"
FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
<ItemTemplate>
<asp:Label ID="lbl_ivaEjecutado" runat="server" CssClass="lbl_grilla" Text='<%# eval("ivaEjecutado") %>'></asp:Label></ItemTemplate>
<FooterTemplate>
<asp:Label ID="lbl_TOTivaEjecutado" runat="server" CssClass="lbl_grilla"></asp:Label></FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_subtotalplaneado %>"
FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
<ItemTemplate>
<asp:Label ID="lbl_SutotaPlaneado" runat="server" CssClass="lbl_grilla" Text='<%# eval("subtotalPlaneado") %>'></asp:Label></ItemTemplate>
<FooterTemplate>
<asp:Label ID="lbl_TOTSubtotalPlaneado" runat="server" CssClass="lbl_grilla"></asp:Label></FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_subtotalejecutado %>"
FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
<ItemTemplate>
<asp:Label ID="lbl_sutotaEjecutado" runat="server" CssClass="lbl_grilla" Text='<%# eval("subtotalEjecutado") %>'></asp:Label></ItemTemplate>
<FooterTemplate>
<asp:Label ID="lbl_TOTsubtotalEjecutado" runat="server" CssClass="lbl_grilla"></asp:Label></FooterTemplate>
</asp:TemplateField>



<asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_documento_descuentoplaneado %>"
FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
<ItemTemplate>
<asp:Label ID="lbl_dtopPlaneado" runat="server" CssClass="lbl_grilla" Text='<%# eval("dtoplaneado") %>'></asp:Label></ItemTemplate>
<FooterTemplate>
<asp:Label ID="lbl_TOTdtoPlaneado" runat="server" CssClass="lbl_grilla"></asp:Label></FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_documento_descuento %>"
FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
<ItemTemplate>
<asp:Label ID="lbl_dtopEjecutado" runat="server" CssClass="lbl_grilla" Text='<%# eval("dtoEjecutado") %>'></asp:Label></ItemTemplate>
<FooterTemplate>
<asp:Label ID="lbl_TOTdtoEjecutado" runat="server" CssClass="lbl_grilla"></asp:Label></FooterTemplate>
</asp:TemplateField>


<asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,dis_evento_catalogo_valorunitario %>"
FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
<ItemTemplate>
<asp:Label ID="lbl_VALORUNITARIOplaneado" runat="server" CssClass="lbl_grilla" Text='<%# eval("VALORUNITARIOplaneado") %>'></asp:Label></ItemTemplate>
<FooterTemplate>
<asp:Label ID="lbl_TOTVALORUNITARIOplaneado" runat="server" CssClass="lbl_grilla"></asp:Label></FooterTemplate>
</asp:TemplateField>

    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_cantAuxiliar %>"
FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
<ItemTemplate>
<asp:Label ID="lbl_cantidadAuxiliar" runat="server" CssClass="lbl_grilla" Text='<%# eval("cantAuxiliar") %>'></asp:Label></ItemTemplate>
<FooterTemplate>
<asp:Label ID="lbl_TOTCantidadAuxiliar" runat="server" CssClass="lbl_grilla"></asp:Label></FooterTemplate>
</asp:TemplateField>


<asp:TemplateField>
  <ItemTemplate>
      <uc4:adjuntos
        ID="adjuntos" runat="server" />
  </ItemTemplate>
</asp:TemplateField>

   <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="lbl_uso_datos" runat="server"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_documentoOrigen" runat="server"><i class='fa fa-plus '></i></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

</Columns>
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
</asp:GridView>
