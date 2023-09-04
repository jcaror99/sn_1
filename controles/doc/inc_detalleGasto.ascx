<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_detalleGasto.ascx.vb" Inherits="website.samm_componentes.controles_doc_inc_detalleGasto" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
<tr>
<td>
<bti:BotonImagen ID="bti_agregar" runat="server" ImageUrl="~/images/botones/agregar.gif" />
<bti:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif" />
<bti:BotonImagen ID="bti_eliminar" runat="server" ImageUrl="../../images/botones/quitar.gif" />
<bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.gif" />
</td>
</tr>
<tr>
<td>
    <uc1:grilla ID="gri_detalle" runat="server" a_bln_paginacionNormal="true" />
</td>
</tr>
</table>