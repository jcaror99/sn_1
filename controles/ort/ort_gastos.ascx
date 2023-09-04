<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="ort_gastos.ascx.vb" Inherits="website.samm_componentes.controles_ort_ort_gastos" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"

    TagPrefix="uc3" %>
<table cellpadding="0" cellspacing="0">
    <tr>
        
        <td class="tbl_marcoFormulario">
            <asp:RadioButtonList ID="rblFiltroGastos" runat="server" RepeatDirection="Horizontal"
                RepeatLayout="Flow" AutoPostBack="True"
                CssClass="rbl">
                <asp:ListItem Text="<%$Resources:res_etiquetas_ort,actPlaneadas %>" Selected="True" Value="1"></asp:ListItem>
                <asp:ListItem Text="<%$Resources:res_etiquetas_ort,actTodas %>" Value="0"></asp:ListItem>
            </asp:RadioButtonList>
         </td>   
    </tr>
    <tr>
        <td class="tbl_marcoFormulario">
            <uc3:busquedaavanzadamultiple id="busOtro" runat="server" a_str_tabla="cat_catalogo" a_str_campo="catalogo,codigInventario,id_subtipoCatalogo"
                     a_bln_obligatorio="False" />
        </td>
    </tr>
</table>
