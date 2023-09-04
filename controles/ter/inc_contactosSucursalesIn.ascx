<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_contactosSucursalesIn.ascx.vb" Inherits="website.samm_componentes.controles_ter_inc_contactosSucursalesIn" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>

<table>
<tr>
<td>
<bti:BotonImagen ID="bti_nuevo" runat="server" CausesValidation="false" ImageUrl="../../images/botones/agregar.gif" />
</td>
<td>
<bti:BotonImagen ID="bti_actualizar" runat="server" CssClass="imb" ImageUrl="~/images/botones/actualizar.png"
CausesValidation="false" />
</td>
<td>
<bus:busquedaAvanzada ID="bus_contactos" runat="server" a_str_tabla="ter_contacto"
a_str_campo="contacto" />
</td>
<td>
<bti:BotonImagen ID="bti_agregar" runat="server" CausesValidation="false" 
ImageUrl="../../images/botones/seleccionargrilla.gif" 
onclick="bti_agregar_Click" />
</td>
<td style="width:100%">
</td>
</tr>
<tr>
<td colspan="5">
<gri:grilla ID="gri_contactos" runat="server" a_bln_paginacionNormal="true"/>
</td>
</tr>
</table>

