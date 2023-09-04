<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="precioVentaItemDocumento.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_precioVentaItemDocumento" %>
<asp:Image ID="img_textos" runat="server" ImageUrl="~/images/iconos/maspre.gif" ImageAlign="Bottom"
    CssClass="imb" />
   
<div id="divPrecioVentaItemDocumento" runat="server" style="z-index: 101; left: -500px;
        position: absolute; padding: 3px; top: 500px; display: none;">
        &nbsp;<asp:GridView ID="grvPrecioVentaItemDocumento" runat="server" ShowHeader="true"
            AutoGenerateColumns="false" BorderStyle="Outset" BorderWidth="2px">
            <Columns>
                <asp:TemplateField ItemStyle-HorizontalAlign="Left"  ItemStyle-CssClass="imb"   HeaderText="Lista" HeaderStyle-CssClass="gri_titulo" >
                    <ItemTemplate>
                    <asp:HiddenField ID="hdd_idlistaprecio" runat="server" Value='<%# eval("id_listaprecio")%>' />
                        <asp:HiddenField ID="hdd_item" runat="server" Value='<%# eval("catalogo_listaprecio")%>' />
                         <asp:HiddenField ID="hdd_vlrbase" runat="server" Value='<%# eval("vlr_base")%>' />
                          <asp:HiddenField ID="hdd_porcenLista" runat="server" Value='<%# eval("porcentaje") %>' />
                        <asp:Label ID="lbl_lista" runat="server" Text='<%# eval("lista_precio") %>'></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ItemStyle-CssClass="imb"  HeaderStyle-CssClass="gri_titulo" HeaderText="Valor">
                    <ItemTemplate>
                        <asp:Label ID="lbl_precio" runat="server" Text='<%# eval("precioventa") %>'></asp:Label></ItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField ItemStyle-CssClass="imb" HeaderText="% Dto"  HeaderStyle-CssClass="gri_titulo" > 
                <ItemTemplate >
                <asp:Label ID="lbl_porcenLista" runat="server" Text='<%# IIF(eval("porcentaje") = 0,"",eval("porcentaje")) %>' ></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <RowStyle CssClass="gri_item" />
            <AlternatingRowStyle CssClass="gri_itemAlterno" />
        </asp:GridView>
    </div>
