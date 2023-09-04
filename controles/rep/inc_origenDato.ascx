<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_origenDato.ascx.vb" Inherits="website.samm_componentes.controles_rep_inc_origenDato" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
<tr>
<td>
<bti:BotonImagen ID="bti_nuevo" runat="server"  ImageUrl="../../images/botones/agregar.gif" CausesValidation="false" />
<bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.gif" CausesValidation ="false" />
<bti:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif" CausesValidation ="false" />
<bti:BotonImagen ID="bti_eliminar" runat="server" ImageUrl="../../images/botones/quitar.gif" CausesValidation ="false"  />
<bti:BotonImagen ID="bti_EditarSP" runat="server" ImageUrl="../../images/botones/editarSP.gif" CausesValidation ="false"  />
<td></td>
</tr>
<tr>
<asp:GridView ID="gri_origen" runat ="server"  AllowPaging="false" AutoGenerateColumns="false" ShowHeader='true'   >
           <Columns >
           <asp:TemplateField Visible="false">
           <ItemTemplate>
           <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="false" > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="res_metadata,rep_origendato_origendato" >
           <ItemTemplate >
           <asp:Label ID="lbl_campoReporte" runat="server" Text='<%# bind("origenDato") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="res_metadata,rep_origendato_origendato_codigo">
           <ItemTemplate>
           <asp:Label ID="lbl_tabla" runat="server" Text='<%# bind("origenDato_codigo") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>   
           <asp:TemplateField HeaderText="res_metadata,rep_origendato_duracion">
           <ItemTemplate>
           <asp:Label ID="lbl_tipoCampo" runat="server" Text='<%# bind("duracion") %>' > </asp:Label>
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
</tr>
</table>