<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_localizacion.ascx.vb" Inherits="website.samm_componentes.controles_gen_inc_localizacion" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
<tr>
<td>
<bti:BotonImagen ID="bti_nuevo" runat="server" ImageUrl="../../images/botones/agregar.gif" CausesValidation="false" />
<bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.gif" CausesValidation="false"  /></td>
 </tr>
<tr>
<td>
   <asp:GridView ID="gri_localizacion" runat ="server"  AllowPaging="true" AutoGenerateColumns="false" ShowHeader='true'  PageSize="20"   >
           <Columns >
           <asp:TemplateField Visible="false"    >
           <ItemTemplate>
           <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="false" > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField  HeaderText='res_metadata,gen_localizacion_localizacion' >
           <ItemTemplate>
           <asp:TextBox ID="txt_localizacion" runat="server" Text='<%# bind("localizacion") %>' CssClass="lbl" > </asp:TextBox> 
            </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField  HeaderText='res_metadata,cat_catalogo_catalogo' >
           <ItemTemplate>
           <asp:label ID="lbl_catalogo" runat="server" Text='<%# bind("catalogo") %>' CssClass="lbl" > </asp:label> 
           </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField  HeaderText='res_metadata,cat_catalogo_codigoinventario' >
           <ItemTemplate>
           <asp:label ID="lbl_codigoinventario" runat="server" Text='<%# bind("codigoinventario") %>' CssClass="lbl" > </asp:label> 
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
</td>
</tr>
<tr>
<td>
 <bti:BotonImagen ID="btnAceptar" runat="server"  ImageUrl="../../images/botones/aceptar.jpg" CausesValidation="false" />
</td>
</tr>
</table>