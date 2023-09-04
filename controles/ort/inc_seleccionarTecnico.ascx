<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_seleccionarTecnico.ascx.vb" Inherits="website.samm_componentes.controles_ort_inc_seleccionarTecnico" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="uc5" %>

<table>
<tr>
    <td colspan="2">
        <asp:Label ID="Label3" runat="server" CssClass="lbl" Text='<%$Resources:res_etiquetas_ort,seleccioneTecnicoProgramar %>'>
        </asp:Label>
    </td>
</tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID ="lbl_usuario" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <uc5:busquedaAvanzadaMultiple ID="busTecnicos" runat="server" 
                a_str_tabla="seg_usuario" a_str_campo="nombre"  a_bol_postBack="true"
                
                a_str_camposGrilla="id,multiempresa,nombre,id_grupo,id_cargo,seg_grupo_grupo,seg_cargo_cargo"/>
        </td>
    </tr>
    <tr>
    <td colspan ="2"><hr /></td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID ="lbl_cargo" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <uc1:busquedaAvanzada ID="bus_cargo" runat="server" a_bol_postBack="true"
                a_str_tabla="seg_cargo" CssClass="_bus" />
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID ="lbl_grupo" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <uc1:busquedaAvanzada ID="bus_grupo" runat="server" a_bol_postBack="true"
                a_str_tabla="seg_grupo" CssClass="_bus" />
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID ="lbl_zona" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <uc1:busquedaAvanzada ID="bus_zona" runat="server" a_bol_postBack="true"
                a_str_tabla="gen_zona" CssClass="_bus" />
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
<asp:Label ID='lbl_habilitado' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
        <asp:RadioButtonList ID='rbl_habilitado' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
RepeatLayout='Flow' AutoPostBack="true">
<asp:ListItem Value='1' Selected="True"></asp:ListItem>
<asp:ListItem Value='0'></asp:ListItem>
</asp:RadioButtonList>
        </td>
    </tr>
      <tr>
        <td class='td_lblFormulario'>
<asp:Label ID='lbl_competente' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
        <asp:RadioButtonList ID='rbl_competente' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
RepeatLayout='Flow' AutoPostBack="true" OnSelectedIndexChanged="rbl_habilitado_SelectedIndexChanged" >
<asp:ListItem Value='1' Selected="True"></asp:ListItem>
<asp:ListItem Value='0'></asp:ListItem>
</asp:RadioButtonList>
        </td>
    </tr>
</table>