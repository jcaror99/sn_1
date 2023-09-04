<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_generarOts.ascx.vb"
    Inherits="website.samm_componentes.controles_equ_pop_generarOts" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="uc2" %>
<table>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="<%$Resources:res_metadata,gen_tiposervicio_tiposervicio %>"></asp:Label>
        </td>
        <td>
            <uc1:busquedaAvanzada ID="busTiposervicio" runat="server" a_str_tabla="gen_tiposervicio" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="<%$Resources:res_metadata,equ_equipo_equipo %>"></asp:Label>
        </td>
        <td>
            <asp:RadioButtonList ID="rblTodosEquipos" runat="server" RepeatDirection="Horizontal"
                RepeatLayout="Flow">
                <asp:ListItem Text='<%$Resources:res_controles,todos %>' Value="0"></asp:ListItem>
                <asp:ListItem Text='<%$Resources:res_controles,seleccioneLista %>' Value="1"></asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="<%$Resources:res_metadata,gen_zona_zona %>"></asp:Label>
        </td>
        <td>
            <uc2:busquedaAvanzadaMultiple ID="bumZona" runat="server" a_bln_obligatorio="false" a_str_tabla="gen_zona" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="<%$Resources:res_metadata,ter_tercero_tercero %>"></asp:Label>
        </td>
        <td>
            <uc2:busquedaAvanzadaMultiple ID="bumTercero" runat="server" a_bln_obligatorio="false" a_str_tabla="ter_tercero" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label5" runat="server" Text="<%$Resources:res_metadata,equ_equipo_equipo %>"></asp:Label><asp:CheckBox
                ID="chbTodos" runat="server" CssClass="chb" Text='<%$Resources:res_controles,todos %>' /><asp:CheckBoxList
                    ID="cblEquipos" runat="server" CssClass="cbl" RepeatColumns="2">
                </asp:CheckBoxList>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <table>
                <tr>
                    <td colspan="2">
                        <asp:TreeView ID="trv_detalleTempario" runat="server" CssClass='trv' LineImagesFolder="../../images/treelineimages"
                            ShowLines="True" SkipLinkText="a" ShowCheckBoxes="all" EnableClientScript="false">
                            <SelectedNodeStyle CssClass="tre_seleccionado" />
                            <RootNodeStyle CssClass="tre_raiz" />
                            <NodeStyle CssClass="tre_nodo" />
                        </asp:TreeView>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.png"
                CausesValidation="False"></cc1:BotonImagen>
        </td>
    </tr>
</table>
