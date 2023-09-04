<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="int_seguimiento.ascx.vb"
    Inherits="website.samm_componentes.controles_ort_int_seguimiento" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>

<table class="tbl_marcoFormulario">

    <tr></tr>
    <tr>
     <td>
     <asp:Label ID ="lbl_documento" runat="server" CssClass ="lbl" ></asp:Label>
     </td>     
    </tr>
    <tr>
     <td>
         <asp:CheckBoxList ID="chbValores" runat="server" CssClass="chk" RepeatColumns="2" AutoPostBack="true" >
 
       </asp:CheckBoxList>
      
     </td>
     </tr>
</table>
<table class="tbl_marcoFormulario">
  
    <tr>
    <td>
   
<asp:GridView ID="grd_items" runat="server" AutoGenerateColumns="False" >
<Columns>

<asp:TemplateField >
<ItemTemplate>

<asp:HyperLink ID="HyperLink1" runat="server" Text='<%# eval("prefi")%>' NavigateUrl='<%# eval("lnk") %>'
                                        Visible='<%# IIF(eval("lnk")="",false,true) %>' CssClass="lnk"></asp:HyperLink>
                                        
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField >
<ItemTemplate>
<asp:Image runat="server" ImageUrl='<%# ChooseImage(eval("doc_prioridadDocumento_prioridadDocumento_codigo")) %>'  />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField >
<ItemTemplate>
<asp:Label ID="lbl_fecha_fh" runat="server" CssClass="lbl_grilla" Text='<%# eval("doc_documento_fecha_fh") %>'></asp:Label></ItemTemplate>
</asp:TemplateField>
<asp:TemplateField >
<ItemTemplate>
<asp:Label ID="lbl_subtipo" runat="server" CssClass="lbl_grilla" Text='<%# eval("subtipo") %>'></asp:Label></ItemTemplate>
</asp:TemplateField>
<asp:TemplateField >
<ItemTemplate>
<asp:Label ID="lbl_estadoTipoDocumento" runat="server" CssClass="lbl_grilla" Text='<%# eval("doc_estadoTipoDocumento_estadoTipoDocumento") %>'></asp:Label></ItemTemplate>
</asp:TemplateField>
<asp:TemplateField >
<ItemTemplate>
<asp:Label ID="lbl_fecha_ff" runat="server" CssClass="lbl_grilla" Text='<%# eval("doc_documento_fechaCierre_ff") %>'></asp:Label></ItemTemplate>
</asp:TemplateField>
<asp:TemplateField >
<ItemTemplate>
<asp:Label ID="lbl_total" runat="server" CssClass="lbl_grilla" Text='<%# eval("total") %>'></asp:Label></ItemTemplate>
</asp:TemplateField>
<asp:TemplateField >
<ItemTemplate>
<asp:Label ID="lbl_costo" runat="server" CssClass="lbl_grilla" Text='<%# eval("costo") %>'></asp:Label></ItemTemplate>
</asp:TemplateField>
<asp:TemplateField >
<ItemTemplate>
<asp:Label ID="lbl_informacion" runat="server" CssClass="lbl_grilla" Text='<%# eval("informacion") %>'></asp:Label></ItemTemplate>
</asp:TemplateField>
  
                        
<%--

<asp:TemplateField>
  <ItemTemplate>
      <uc4:adjuntos
        ID="adjuntos" runat="server" />
  </ItemTemplate>
</asp:TemplateField>--%>
</Columns>
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
</asp:GridView>

    </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_descripcion" runat="server" CssClass="lbl"></asp:Label>
        </td>
    </tr>
 
        
       
        
        
</table>