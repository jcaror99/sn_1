<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_unificarProductos.ascx.vb" Inherits="website.samm_componentes.controles_cat_pop_unificarProductos" %>
<%@ Register Src="~/controles/general/unificar.ascx" TagName="unificar" TagPrefix="uni" %>
<uni:unificar ID="uni_unificar" runat="server" a_bol_eliminarOrigen="false" a_bol_OpcionEliminarOrigen="true" a_str_tabla="cat_catalogo.producto" />
