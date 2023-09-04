<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_detallecobro.ascx.vb" Inherits="website.samm_componentes.controles_alq_pop_detallecobro" %>
<asp:GridView ID="grd_detalleCobro" runat="server" AutoGenerateColumns="False" ShowHeader="false" AllowPaging="true" PageSize="2"  >
    <EmptyDataTemplate>
        <asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, grillaVacia %>'></asp:Label></EmptyDataTemplate>
    <Columns>
       <asp:TemplateField  > <ItemTemplate >
       <table>
       <tr><td><asp:Label ID="lbl_telemento" runat="server" CssClass="lbl" ></asp:Label></td><td>
       <asp:HiddenField id="hdd_iddetalle" runat="server" Value  ='<% #eval("id_detalle") %>'  />
       <asp:Label ID="lbl_elemento" runat="server" Text ='<% #eval("catalogo") %>' ></asp:Label></td></tr>
       <tr> 
       <td><asp:Label ID="lbl_tcodigo" runat="server" CssClass="lbl" ></asp:Label></td><td> <asp:Label ID="lbl_elementocodigo" runat="server" Text ='<% #eval("detalle") %>' ></asp:Label></td>
       </tr>
        <tr> 
       <td><asp:Label ID="lbl_tdespacho" runat="server" CssClass="lbl" ></asp:Label></td>
       <td> <asp:Label ID="lbl_despacho" runat="server" Text ='<% # cdate(eval("despacho")) %>' ></asp:Label></td>
       </tr>
        <tr> 
       <td><asp:Label ID="lbl_tdevolucion" runat="server" CssClass="lbl" ></asp:Label></td>
       <td> <asp:Label ID="lbl_devolucion" runat="server" Text ='<% #  iiF( cdate(eval("devolucion"))=#1/1/1900#,"",cdate(eval("devolucion")) ) %>' ></asp:Label></td>
       </tr>
       <tr><td colspan ="3">
           <asp:GridView ID="grd_detalle" runat="server" AutoGenerateColumns="False" ShowFooter="true"  >
            <Columns>
           <%-- <asp:BoundField HeaderText ="res_metadata,doc_documento_documento" DataField ="documento"  />--%>
            <asp:TemplateField HeaderText ="res_metadata,doc_documento_documento" >
             <ItemTemplate>
             <asp:Label ID="lbl_documento" runat="server" ToolTip='<%# cdate(Eval("fechacierre"))  %>' Text ='<%# Eval("documento")  %>'  ></asp:Label>
             </ItemTemplate>
             </asp:TemplateField>
             <asp:BoundField HeaderText ="res_etiquetas_alq,fechainicio" DataField ="fechaInicio" />
             <asp:BoundField HeaderText ="res_etiquetas_alq,fechafin" DataField ="fechaFin" />
             <asp:BoundField HeaderText ="res_etiquetas_alq,sinicial" DataField ="cantidad" />
              <asp:BoundField HeaderText ="res_metadata,doc_itemdocumento_cantidadejecutado" DataField ="cantidadejecutado" />
             <asp:TemplateField HeaderText ="res_etiquetas_alq,valor" >
             <ItemTemplate>
             <asp:Label ID="lbl_valor" runat="server" Text ='<%# formatCurrency(Eval("valor"),2)  %>'  ></asp:Label>
             </ItemTemplate>
             </asp:TemplateField>
             <asp:BoundField  HeaderText ="res_etiquetas_alq,dias" DataField ="dias" />
             <asp:BoundField  HeaderText ="res_etiquetas_alq,sfinal" DataField ="saldo" />
             <asp:TemplateField HeaderText ="res_etiquetas_alq,total" >
             <ItemTemplate>
             <asp:Label ID="lbl_valor" runat="server" Text ='<%# formatCurrency(Eval("total"),2)  %>'  ></asp:Label>
             </ItemTemplate>
             <FooterTemplate>
                <asp:Label ID="lbl_total" runat="server" Text ='<%# formatCurrency(Eval("total"),2)  %>'  ></asp:Label>
             </FooterTemplate>
             </asp:TemplateField>
             <asp:BoundField  HeaderText ="res_etiquetas_alq,cannorecibido" DataField ="norecibido" />
             <asp:BoundField  HeaderText ="res_etiquetas_alq,docnorecibido" DataField ="docnorecibido" />
             </Columns>
            <FooterStyle CssClass="gri_pie" />
            <RowStyle CssClass="gri_item" />
            <PagerStyle CssClass="gri_paginacion" />
            <HeaderStyle CssClass="gri_titulo" />
            <AlternatingRowStyle CssClass="gri_itemAlterno" />
            <SelectedRowStyle CssClass="gri_itemSeleccionado" />
            </asp:GridView>
       </td></tr>
       </table>
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
