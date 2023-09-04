<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_opcionReporte.ascx.vb" Inherits="website.samm_componentes.controles_rep_inc_opcionReporte" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
<tr>
<td>
<bti:BotonImagen ID="bti_nuevo" runat="server"  ImageUrl="../../images/botones/agregar.gif" CausesValidation="false" />
<bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.gif" CausesValidation ="false" />
<bti:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif" CausesValidation ="false" />
<bti:BotonImagen ID="bti_eliminar" runat="server" ImageUrl="../../images/botones/quitar.gif" CausesValidation ="false"  />
<td></td>
</tr>
<tr>
<asp:GridView ID="gri_opcion" runat ="server"  AllowPaging="true" AutoGenerateColumns="false" ShowHeader='true'   >
           <Columns >
           <asp:TemplateField Visible="false"    >
           <ItemTemplate>
           <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="false" > </asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="res_metadata,rep_opcionreporte_opcionreporte" >
           <ItemTemplate >
           <asp:Label ID="lbl_campoReporte" runat="server" Text='<%# bind("opcionReporte") %>' > </asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="res_metadata,rep_opcionreporte_opcionreporte_codigo">
           <ItemTemplate>
           <asp:Label ID="lbl_tabla" runat="server" Text='<%# bind("opcionReporte_codigo") %>' > </asp:Label>
           </ItemTemplate>
           </asp:TemplateField>   
           <asp:TemplateField HeaderText="res_metadata,rep_opcionreporte_opcionreporte_defecto">
           <ItemTemplate>
           <asp:Label ID="lbl_tipoCampo" runat="server" Text='<%# bind("defecto") %>' > </asp:Label>
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
