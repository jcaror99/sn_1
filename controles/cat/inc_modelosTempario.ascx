<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_modelosTempario.ascx.vb"
Inherits="website.samm_componentes.controles_cat_inc_modelosTempario" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple" TagPrefix="uc1" %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
&nbsp;<table>
<tr>
<td>
<asp:Label ID="lbl_familia" runat="server" Text="Filtrar modelos por familias" CssClass="lbl"></asp:Label>
<bus:busquedaAvanzada ID='bus_arbolFamilia' runat='server' a_str_tabla='gen_familia'
    a_bln_obligatorio='True' a_str_grupoValidacion='form' a_bol_postBack="true"  a_str_campo="familia" a_bol_recursivoTodoelArbol="True"/>
</td>    
</tr>
<tr>
<td>
<asp:Label ID="lbl_modelos" runat="server" CssClass="lbl"></asp:Label>
<uc1:busquedaAvanzadaMultiple ID="bum_modelos" runat="server" a_str_tabla="cat_catalogo.equipo" a_str_campo="cat_catalogo_equipo_codigoInventario,catalogo.equipo" />
</td>
</tr>
<tr>
<td>
<bti:BotonImagen ID="btnEliminar" runat="server" CausesValidation="false" CssClass="imb"
ImageUrl="~/images/botones/quitar.gif"></bti:BotonImagen>
<bti:BotonImagen ID="btn_configurar" runat="server" CausesValidation="false" CssClass="imb"
ImageUrl="../../images/botones/configurarTempario.gif" />
<%--<bti:BotonImagen ID="btn_importar" runat="server"  CausesValidation="false" CssClass="imb"
ImageUrl="../../images/botones/compartirclaro.gif" />--%>
<asp:ImageButton ID="btn_importar" ToolTip="Importar" runat ="server" CssClass="imb" ImageUrl ="../../images/botones/compartirclaro.gif" CausesValidation="false"/>

</td>
</tr>
<tr>
<td>
<gri:grilla ID="grd_modelo" runat="server" a_bln_paginacionNormal="True"></gri:grilla>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
</table>
