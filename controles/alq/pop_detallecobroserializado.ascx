<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_detallecobroserializado.ascx.vb" Inherits="website.samm_componentes.controles_pop_detallecobroserializado" %>
<asp:GridView ID="grd_detalleCobro" runat="server" AutoGenerateColumns="False" ShowHeader="false" AllowPaging="true" PageSize="2"  >
    <EmptyDataTemplate>
        <asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, grillaVacia %>'></asp:Label></EmptyDataTemplate>
    <Columns>
       <asp:TemplateField  > <ItemTemplate >
       <table>
       <tr><td><asp:Label ID="lbl_telemento" runat="server" CssClass="lbl" ></asp:Label></td><td>
       <asp:HiddenField id="hdd_idequipo" runat="server" Value  ='<% #eval("id_equipo") %>'  />
       <asp:Label ID="lbl_elemento" runat="server" Text ='<% #eval("equipo") %>' ></asp:Label></td></tr>
       <tr> 
       <td><asp:Label ID="lbl_tcodigo" runat="server" CssClass="lbl" ></asp:Label></td><td> <asp:Label ID="lbl_elementocodigo" runat="server" Text ='<% #eval("serial") %>' ></asp:Label></td>
       </tr>
       <tr><td colspan ="3">
           <asp:GridView ID="grd_detalle" runat="server" AutoGenerateColumns="False">
            <Columns>
            <asp:BoundField HeaderText ="res_metadata,doc_documento_documento" DataField ="documento" />
             <asp:BoundField HeaderText ="res_etiquetas_alq,fechainicio" DataFormatString="{0:dd-MM-yyyy}"     HtmlEncode="false" DataField ="inicio" />
             <asp:BoundField HeaderText ="res_etiquetas_alq,hinicio" DataField ="hinicio" />
             <asp:BoundField HeaderText ="res_etiquetas_alq,fechafin" DataFormatString="{0:dd-MM-yyyy}"    HtmlEncode="false"  DataField  ="fin" />
             <asp:BoundField HeaderText ="res_etiquetas_alq,hfin" DataField ="hfin" />
             <asp:BoundField HeaderText ="res_metadata,ort_programacion_duracion" DataField ="duracion" />
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
       
       
       
       </ItemTemplate></asp:TemplateField>
    </Columns>
    <FooterStyle CssClass="gri_pie" />
    <RowStyle CssClass="gri_item" />
    <PagerStyle CssClass="gri_paginacion" />
    <HeaderStyle CssClass="gri_titulo" />
    <AlternatingRowStyle CssClass="gri_itemAlterno" />
    <SelectedRowStyle CssClass="gri_itemSeleccionado" />
</asp:GridView>
