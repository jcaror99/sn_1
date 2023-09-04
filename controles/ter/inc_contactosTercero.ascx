<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_contactosTercero.ascx.vb" Inherits="website.samm_componentes.controles_ter_inc_contactosTercero" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table>
<tr>
<td>
<bti:BotonImagen ID="btnNuevo" runat="server" CausesValidation="False" ImageUrl="~/images/botones/agregar.gif"
CssClass='imb' />
<bti:BotonImagen ID="btn_editar" runat="server" ImageUrl="~/images/botones/editar.gif"
CausesValidation="false" CssClass='imb' />
<bti:BotonImagen ID="btnEliminar" runat="server" ImageUrl="~/images/botones/quitar.gif"
CausesValidation="false" CssClass='imb' />
<bti:BotonImagen ID="btn_nuevoUsuario" runat="server" ImageUrl="../../images/botones/nuevoUsuario.gif"
CausesValidation="false" CssClass='imb' />
<bti:BotonImagen ID="btn_actuaCont" runat="server" ImageUrl="~/images/botones/actuaCont.png"
CausesValidation="false" CssClass='imb' Enabled="false" />
<bti:BotonImagen ID="btn_CodigoAcceso" runat="server" ImageUrl="../../images/botones/ter_codigoAcceso.gif"
CausesValidation="false" CssClass='imb' />
<bti:BotonImagen ID="bti_actualizar" runat="server" CssClass="imb" ImageUrl="~/images/botones/actualizar.png" CausesValidation="false" />

</td>
</tr>
<tr>
<td>
<%--<gri:grilla ID="grd_contacto" runat="server" a_bln_paginacionNormal="true"/>--%>
<asp:GridView ID="grv_contacto" runat="server" AllowPaging="false" AutoGenerateColumns="false" PageSize="10" >
<Columns>
<asp:TemplateField>
<ItemTemplate>
<asp:CheckBox ID="chk_actualizar" runat="server"  />

<asp:Label ID="lbl_id" runat="server" Visible="false" Text='<%# bind("id") %>' ></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField HeaderText ="res_metadata,ter_contacto_contacto" DataField="contacto" />
<asp:BoundField HeaderText ="res_metadata,ter_cargocontacto_cargocontacto" DataField="ter_cargocontacto_cargocontacto" />
<asp:BoundField HeaderText ="res_metadata,ter_contacto_telefono" DataField="telefono" />
<asp:BoundField HeaderText ="res_metadata,ter_contacto_email" ItemStyle-HorizontalAlign="Justify"  DataField="email" />
<asp:BoundField HeaderText ="res_metadata,ter_contacto_direccion" DataField="direccion" />
<asp:BoundField HeaderText ="res_metadata,ter_contacto_telefonomovil" DataField="telefonomovil" />
<asp:BoundField HeaderText ="res_metadata,seg_usuario_usuario" DataField="seg_usuario_usuario" />
<asp:BoundField HeaderText ="res_metadata,ter_contacto_accesoactivo" DataField="ter_contacto_accesoactivo" />
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
<asp:TreeView ID="trv_sucursales" runat="server" CssClass='trv' ShowCheckBoxes="All" LineImagesFolder="../../images/treelineimages" ShowLines="True" SkipLinkText="a" EnableClientScript="False">
<SelectedNodeStyle CssClass="tre_seleccionado" />
<RootNodeStyle CssClass="tre_raiz" />
<NodeStyle CssClass="tre_nodo" />
</asp:TreeView>
</td>
</tr>
<tr>
<td>
<bti:BotonImagen ID="btn_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.png"
CausesValidation="false" CssClass='imb' />
</td>
</tr>
</table>

