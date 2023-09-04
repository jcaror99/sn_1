<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_tareas.ascx.vb" Inherits="website.samm_componentes.controles_doc_inc_tareas" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<table style="width: 700px;">
<tr>
<td>
<bti:BotonImagen ID="bti_nuevo" runat="server" ImageUrl="../../images/botones/agregar.gif" OnClientClick="return false;" CausesValidation="false" />
<bti:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif" OnClientClick="return false;" CausesValidation="false" />
<bti:BotonImagen ID="bti_eliminar" runat="server" ImageUrl="../../images/botones/quitar.gif" CausesValidation="false" />
<bti:BotonImagen ID="bti_importar" runat="server" ImageUrl="../../images/botones/compartirclaro.gif" CausesValidation="false" />
<bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.gif" />
</td>
</tr>
<tr>
<td colspan="2">
<asp:Label ID='lbl_avance' runat='server' CssClass='lbl'> </asp:Label>
<gri:grilla ID="gri_tareas" runat="server" a_bln_paginacionNormal="true" />
</td>
</tr>
<tr>
<asp:Label ID='lbl_mensaje' runat='server' CssClass='lbl_mensaje'  > </asp:Label>
</tr>
</table>
