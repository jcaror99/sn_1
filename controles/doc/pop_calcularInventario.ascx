﻿<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_calcularInventario.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_calcularInventario" %>
<%@ Register Src="doc_bodegasItem.ascx" TagName="doc_bodegasItem" TagPrefix="uc2" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>


<asp:Panel ID="pnl_inventario" runat="server" DefaultButton="bti_aceptar">
    <table>
        <tr>
   
 <td colspan="2">   
    <div id="contenido_grilla" runat="server" >
    <asp:GridView ID="grv_programacion" runat="server" CssClass="gri_check" AutoGenerateColumns="False">
        <Columns>
           
             <asp:TemplateField HeaderText="<%$ Resources:res_metadata,doc_itemdocumento_itemdocumento %>">
                    <ItemTemplate>
                        <asp:Label ID="lbl_id_bodega" runat="server" Text='<%# eval("id_bodega") %>' CssClass="lbl" Visible= "false"></asp:Label>
                        <asp:Label ID="lbl_id_catalogo" runat="server" Text='<%# eval("id_catalogo") %>' CssClass="lbl" Visible= "false"></asp:Label>
                        <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' CssClass="lbl" Visible= "false"></asp:Label>
                    
                        <asp:Label ID="lbl_items" runat="server" Text='<%# eval("itemDocumento") %>' CssClass="lbl"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
              
                          
                <asp:TemplateField HeaderText="<%$ Resources:res_metadata,gen_bodega_bodega %>">
                    <ItemTemplate>
                     <asp:Label ID="lbl_bodega" runat="server"  CssClass="lbl" Text='<%# eval("gen_bodega_bodega") %>' Visible="false"></asp:Label>
                                        
                    </ItemTemplate>
                </asp:TemplateField>
               
                          
              

  
                <asp:TemplateField HeaderText="<%$ Resources:res_metadata,cat_catalogo_bodega_existencia %>"  ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lbl_existencia" runat="server"  CssClass="lbl"></asp:Label>                   
                    </ItemTemplate>
                </asp:TemplateField>  
                
                  
                <asp:TemplateField HeaderText="Conteo Real" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                <asp:TextBox ID='txt_cantidadPlaneado' runat='server' Text='<%# eval("detalle") %>' CssClass='txt_numeroGrilla' ></asp:TextBox>
                <asp:Label ID="lbl_conteoPrevio" runat="server" Text='<%# eval("detalle") %>' CssClass="invisible"></asp:Label>                   
        
                </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Cantidad Ajuste" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lbl_cantidadAjuste" runat="server" Text='<%# eval("cantidad_ajuste") %>' CssClass="lbl"></asp:Label>                   
                    </ItemTemplate>
                              </asp:TemplateField> 
                
            </Columns>
    <FooterStyle CssClass="gri_pie" />
    <RowStyle CssClass="gri_item" />
    <PagerStyle CssClass="gri_paginacion" />
    <HeaderStyle CssClass="gri_titulo" />
    <AlternatingRowStyle CssClass="gri_itemAlterno" />
    <SelectedRowStyle CssClass="gri_itemSeleccionado" />
</asp:GridView>
    </div >
    
    </td>
    </tr>
    
    <tr>
     <td colspan="3">
            <bti:botonimagen id="bti_aceptar" runat="server" cssclass="imb" 
                imageurl="../../images/botones/aceptar.png" ></bti:botonimagen>
        </td>
    </tr>
       </table>
       
 </asp:Panel>
