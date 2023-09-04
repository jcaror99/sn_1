<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_categoria.ascx.vb" Inherits="website.samm_componentes.controles_rep_pop_categoria" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix ="bus" %> 
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
<tr>
<td><asp:Label  ID="lbl_reporteCategoria" runat ="server" CssClass ='lbl' ></asp:Label></td>
<td><asp:TextBox ID="txt_reportecategoria" runat="server" CssClass ='txt'> </asp:TextBox></td>
</tr>
<tr>
<td><asp:Label  ID="lbl_categoria" runat ="server" CssClass ='lbl' ></asp:Label></td>
<td><bus:busquedaAvanzada ID="bus_categoria" runat="server" a_str_tabla="rep_categoria" a_bln_mostrarNuevoConDrop="false" a_bln_habilitaEdicion="false" a_bol_recursivoTodoelArbol="false" a_str_campo="categoria" a_str_grupoValidacion="categoria" a_bln_obligatorio="true" /></td>
</tr>
<tr>
<td><asp:Label  ID="lbl_mensaje" runat ="server" CssClass ='lbl' ></asp:Label></td>
<td><bti:BotonImagen ID="bti_guardar" runat ="server" ImageUrl="../../images/botones/aceptar.jpg"  CausesValidation="true" ValidationGroup="categoria" /></td>
</tr>
</table>