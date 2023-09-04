<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_indicador.ascx.vb"  Inherits="website.samm_componentes.controles_rep_inc_indicador" %>
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
<asp:GridView ID="gri_origen" runat ="server"  AllowPaging="true" AutoGenerateColumns="false" ShowHeader='true'   >
           <Columns >
           <asp:TemplateField Visible="false">
           <ItemTemplate>
           <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="false" > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="res_metadata,rep_indicador_indicador" >
           <ItemTemplate >
           <asp:Label ID="lbl_indicador" runat="server" Text='<%# bind("indicador") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="res_metadata,rep_indicador_indicador_codigo">
           <ItemTemplate>
           <asp:Label ID="lbl_campocodigo" runat="server" Text='<%# bind("indicador_codigo") %>' > </asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="res_metadata,rep_indicador_titulo">
           <ItemTemplate>
           <asp:Label ID="lbl_campotitulo" runat="server" Text='<%# bind("titulo") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>   
           <asp:TemplateField HeaderText="res_metadata,rep_indicador_descripcion">
           <ItemTemplate>
           <asp:Label ID="lbl_tipoCampo" runat="server" Text='<%# bind("descripcion") %>' > </asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="res_metadata,rep_indicador_cabecera">
           <ItemTemplate>
           <asp:Label ID="lbl_campocab" runat="server" Text='<%# bind("cabecera") %>' > </asp:Label>
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