<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_contactosInternos.ascx.vb" Inherits="website.samm_componentes.controles_ter_inc_contactosInternos" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
&nbsp;<table>
<tr>
<td colspan="2">
&nbsp;&nbsp;
</td>
</tr>
<tr>
<td>
<bti:BotonImagen ID="btn_nuevo" runat="server" ImageUrl="../../images/botones/agregar.gif" CausesValidation="false" />
<bti:BotonImagen ID="btn_editar" runat="server" ImageUrl="~/images/botones/editar.gif" CausesValidation="false" CssClass='imb' />
<bti:BotonImagen ID="btnEliminar" runat="server" ImageUrl="../../images/botones/quitar.gif"/>
<bti:BotonImagen ID="bti_actualizar" runat="server" CssClass="imb" ImageUrl="~/images/botones/actualizar.png" CausesValidation="false" />
<table id="tblNuevoContacto" runat="server">
<tr>
<td>
<asp:Label ID="lbl_nuevoContacto" runat="server" CssClass="lbl" Text="<%$ Resources:res_etiquetas_ter,nuevoContacto %>"></asp:Label>
<bus:busquedaAvanzada ID="bus_usuario" runat="server" a_str_tabla="seg_usuario" a_bol_postBack="true" a_str_campo="nombre,id_grupo" a_str_grupoValidacion="a"/>
</td>
</tr>
</table>
</td>
</tr> 
<tr>
<td>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
<gri:grilla ID="grd_contacto" runat="server" a_bln_paginacionNormal="true"/>
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
<bti:BotonImagen ID="btn_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.png" CausesValidation="true" ValidationGroup="a" />
</td>
</tr>
</table>
