<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_prioridadTipoDocumento.ascx.vb"
Inherits="website.samm_componentes.controles_doc_inc_prioridadTipoDocumento" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
<tr>
<td>
<bti:BotonImagen ID="bti_nuevo" runat="server" ImageUrl="../../images/botones/agregar.gif"
OnClientClick="return false;" CausesValidation="false" /><bti:BotonImagen ID="bti_editar"
runat="server" ImageUrl="../../images/botones/editar.gif" OnClientClick="return false;"
CausesValidation="false" /><bti:BotonImagen ID="bti_eliminar"
runat="server" ImageUrl="../../images/botones/quitar.gif" OnClientClick="return false;"
CausesValidation="false" /><bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.gif" />
</td>
</tr>
<tr>
<td colspan="2">
<gri:grilla ID="gri_prioridad" runat="server" a_bln_paginacionNormal="true" />
</td>
</tr>
<tr>
<asp:Label ID='lbl_mensaje' runat='server' CssClass='lbl_mensaje'  > </asp:Label>
</tr>
</table>
