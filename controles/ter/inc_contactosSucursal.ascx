<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_contactosSucursal.ascx.vb" Inherits="website.samm_componentes.controles_ter_inc_contactosSucursal" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
<tr>
<td>
<asp:Label ID="lbl_contactos" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_contactos" runat="server" a_str_tabla="ter_contacto" a_str_campo="contacto" />
</td>
<td>
<bti:BotonImagen ID="bti_agregar" runat="server" CausesValidation="false" ImageUrl="../../images/botones/seleccionargrilla.gif" />
</td>
<td style="width:100%">
</td>
</tr>
<tr>
<td>
<table>
<tr>
<td colspan="5">
<bti:BotonImagen ID="bti_nuevo" runat="server" CausesValidation="false" ImageUrl="../../images/botones/agregar.gif" />
</td>
<td>
<bti:BotonImagen ID="bti_actualizar" runat="server" CssClass="imb" ImageUrl="~/images/botones/actualizar.png" CausesValidation="false" />
</td>
<td>
<bti:BotonImagen ID="bti_eliminar" runat="server" CausesValidation="False" ImageUrl="~/images/botones/quitar.gif" />
</td>
<td><bti:BotonImagen ID="btn_nuevoUsuario" runat="server" ImageUrl="../../images/botones/nuevoUsuario.gif"
CausesValidation="false" CssClass='imb' Enabled="false" /></td>
<td><bti:BotonImagen ID="btn_editar" runat="server" ImageUrl="~/images/botones/editar.gif"
CausesValidation="false" CssClass='imb' Enabled="false" /></td>
<td><bti:BotonImagen ID="btn_actuaCont" runat="server" ImageUrl="~/images/botones/actuaCont.png"
CausesValidation="false" CssClass='imb' Enabled="false" /></td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="5">
<asp:GridView ID="grv_contacto" runat="server" AllowPaging="true" AutoGenerateColumns="false"  >
<Columns>
<asp:TemplateField>
<ItemTemplate>
<asp:CheckBox ID="chk_actualizar" runat="server"  />
<asp:Label ID="lbl_idcontacto" runat="server" Visible="false" Text='<%# bind("id_contacto") %>' ></asp:Label>
<asp:Label ID="lbl_id" runat="server" Visible="false" Text='<%# bind("id") %>' ></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField HeaderText ="res_metadata,ter_contacto_contacto" DataField="contacto" />
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
</table>


