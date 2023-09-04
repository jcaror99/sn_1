<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_tecnicos.ascx.vb"
    Inherits="website.samm_componentes.controles_ort_inc_tecnicos" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="uc3" %>
<table>
    <tr id="tr_tecnicos" runat="server">
        <td>
            <asp:Label ID="lblTecnicos" runat="server" Text="<%$Resources:res_etiquetas_ort,tecnicos %>"
                CssClass="lbl"></asp:Label></td>
        <td>
            <asp:RadioButtonList ID="rblFiltroTecnicos" runat="server" RepeatDirection="Horizontal"
                RepeatLayout="Flow" AutoPostBack="True"
                CssClass="rbl">
                <asp:ListItem Value="1" Text="<%$Resources:res_etiquetas_ort,opcionProgramados %>"></asp:ListItem>
                <asp:ListItem Value="2" Text="<%$Resources:res_etiquetas_ort,opcionTodos %>"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:CheckBoxList ID="cbl_tecnicos" runat="server" AutoPostBack="true">
            </asp:CheckBoxList>
            <uc3:busquedaavanzadamultiple id="busTecnicos" runat="server" a_str_tabla="seg_usuario" a_str_campo="usuario,usuario_codigo,nombre"
                a_str_filtros="id_cargo in (select id from seg_cargo where estecnico=1)" />
        </td>
    </tr>
    <tr>
        <td>
            <cc1:BotonImagen ID="bti_agregar" runat="server" ImageUrl="~/images/botones/agregar.gif"
                CausesValidation="false"/>
            <cc1:BotonImagen ID="bti_eliminar" runat="server" ImageUrl="~/images/botones/quitar.gif"
                CausesValidation="false"/>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <uc1:grilla ID="gri_tecnicos" runat="server" a_bln_paginacionNormal="true" />
        </td>
    </tr>
</table>
