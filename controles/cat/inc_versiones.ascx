<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_versiones.ascx.vb"
Inherits="website.samm_componentes.controles_cat_inc_versiones" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table>
<tr>
<td>
<bti:BotonImagen ID="btnNuevo" runat="server" CausesValidation="False" CssClass="imb" ImageUrl="~/images/botones/agregar.gif"></bti:BotonImagen>
<bti:BotonImagen ID="btn_editar" runat="server" CausesValidation="false" CssClass="imb" ImageUrl="~/images/botones/editar.gif"></bti:BotonImagen>
<bti:BotonImagen ID="btnEliminar" runat="server" CausesValidation="false" CssClass="imb" ImageUrl="~/images/botones/quitar.gif"></bti:BotonImagen>
<bti:BotonImagen ID="btn_equipos" runat="server" CausesValidation="false" CssClass="imb" ImageUrl="~/images/botones/equiposVersion.jpg"></bti:BotonImagen>
<bti:BotonImagen ID="btiCompartir" runat="server" CausesValidation="false" CssClass="imb" ImageUrl="~/images/botones/compartirclaro.gif"></bti:BotonImagen>
<bti:BotonImagen ID="btiActualizar" runat="server" CausesValidation="false" CssClass="imb" ImageUrl="~/images/botones/actualizar.gif"></bti:BotonImagen>
</td>
</tr>
<tr>
<td>
</td>
</tr>
<tr>
<td>
<gri:grilla ID="grd_version" runat="server" a_bln_paginacionNormal="true"></gri:grilla>
</td>
</tr>
</table>
