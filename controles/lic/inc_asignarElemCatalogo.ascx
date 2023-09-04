<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_asignarElemCatalogo.ascx.vb" Inherits="website.samm_componentes.controles_cat_inc_asignarElemCatalogo" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
    <tr>
        <td colspan="3">
            <asp:Label ID="lblInfo" runat="server" 
                Text="<%$ Resources:res_etiquetas_lic,agregarCatalogo %>" CssClass="lbl"></asp:Label>
            <uc1:busquedaavanzadamultiple id="bus_bumElmCata" runat="server" a_str_tabla="cat_catalogo" ></uc1:busquedaavanzadamultiple>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>
             <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td colspan="3">
          
          <gri:grilla ID="gri_catalogos" runat="server" a_bln_paginacionNormal="true" />
          
            
        </td>
    </tr>
    <tr> <%--<bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.png"
                CausesValidation="false" />--%>
                
                </tr>
    
</table>