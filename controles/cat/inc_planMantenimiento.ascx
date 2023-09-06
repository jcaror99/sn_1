<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_planMantenimiento.ascx.vb" Inherits="website.samm_componentes.controles_cat_inc_planMantenimiento" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
    <tr>
        <td >
            <asp:Label ID="Label1" runat="server" Text="<%$ Resources:res_etiquetas_cat,agregarTemparios %>" CssClass="lbl"></asp:Label>
            <uc1:busquedaavanzadamultiple id="bumTemparios" runat="server" a_str_tabla="cat_catalogo.tempario" a_str_campo="catalogo.tempario,cat_catalogo_tempario_catalogo_codigo">

            </uc1:busquedaavanzadamultiple></td>
           <td >
            <bti:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif" CausesValidation="false" OnClientClick="return false;" />
               <bti:BotonImagen ID="bti_eliminar" runat="server" ImageUrl="../../images/botones/quitar.gif" CausesValidation="false" />

           </td>
       

    </tr>
 <%--   <tr>
        <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>--%>

</table>
<table>
        <td>&nbsp;</td>
    <tr>
        <td >
            <gri:grilla ID="gri_temparios" runat="server" a_bln_paginacionNormal="true" />
        </td>
    </tr>
</table>
