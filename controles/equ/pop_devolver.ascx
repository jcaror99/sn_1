<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_devolver.ascx.vb"
    Inherits="website.samm_componentes.controles_equ_pop_devolver" %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='uc1' %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
    <tr>
        <td>
            <asp:Label ID='lbl_fechaPrestamo_ff' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID='lbl_fechaCompromiso_ff' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td></td>
    </tr>
</table>
<table>
    <tr>
        <td colspan="2">
            <asp:GridView ID="grd_horometro" runat="server" AutoGenerateColumns="False">
                <EmptyDataTemplate>
                    <asp:Label ID="lbl" runat="server" CssClass="lbl_mensaje" Text='<%$Resources:res_mensajes,grillaVacia %>'></asp:Label>
                </EmptyDataTemplate>
                <FooterStyle CssClass="gri_pie" />
                <RowStyle CssClass="gri_item" />
                <PagerStyle CssClass="gri_paginacion" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:CheckBox ID="chb_habilitar" Checked="true" runat="server" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="chb_habilitar" Checked="true" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText='<%$Resources:res_metadata,equ_equipo_equipo %>' DataField="equipo" />
                    <asp:TemplateField HeaderText='<%$Resources:res_metadata,equ_equipo_horometroactual %>'>
                        <ItemTemplate>
                            <asp:TextBox ID="txt_horometro" runat="server" CssClass='txt_numero' Text='<%# eval("horometro") %>'
                                ValidationGroup="horometro" Visible='<%# eval("manejaHorometro") %>'></asp:TextBox><asp:RequiredFieldValidator
                                    ID="rfv_horometro" runat="server" ControlToValidate="txt_horometro" CssClass="lbl_mensje"
                                    ValidationGroup="horometro" Enabled='<%# eval("manejaHorometro") %>'>*</asp:RequiredFieldValidator><act:FilteredTextBoxExtender
                                        ID='ftb_horometro' runat='server' TargetControlID='txt_horometro' FilterType='Numbers,Custom'
                                        Enabled='<%# eval("manejaHorometro") %>' />
                            <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="false"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text='<%$Resources:res_metadata,equ_prestamo_equipo_fechadevolucion_ff %>' CssClass="lbl"></asp:Label>
        </td>
        <td>

            <fec:fechaAvanzada ID="fec_fecha" runat="server" />


        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl2" runat="server" Text='<%$Resources:res_metadata,ter_sucursal_sucursal %>' CssClass="lbl"></asp:Label>

        </td>
        <td>

            <uc1:busquedaAvanzada ID="bus_sucursal" runat="server" a_bol_postBack="true"
                a_str_tabla="ter_sucursal" a_str_filtros="paraSoporte=1" />

        </td>
    </tr>
    <tr>
        <td></td>
        <td align="center">
            <bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="true" ValidationGroup="horometro"
                ImageUrl="../../images/botones/aceptar.png" />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
</table>
