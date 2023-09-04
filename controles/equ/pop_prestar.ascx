<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_prestar.ascx.vb"
    Inherits="website.samm_componentes.controles_equ_pop_prestar" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register src="~/controles/general/busquedaAvanzada.ascx" tagname="busquedaAvanzada" tagprefix="uc1" %>
<table>
    <tr>
        <td align="center" colspan=2>
            <asp:Label ID="lbl" runat="server" CssClass="lbl" Text='<%$Resources:res_etiquetas_equ,prestar %>'></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="center" colspan=2>
            <asp:GridView ID="grd_horometro" runat="server" AutoGenerateColumns="False">
                <EmptyDataTemplate>
                    <asp:Label ID="lbl" runat="server" CssClass="lbl_mensaje" Text='<%$Resources:res_mensajes,grillaVacia %>'></asp:Label></EmptyDataTemplate>
                <FooterStyle CssClass="gri_pie" />
                <RowStyle CssClass="gri_item" />
                <PagerStyle CssClass="gri_paginacion" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                <Columns>
                    <asp:BoundField HeaderText='<%$Resources:res_metadata,equ_equipo_equipo %>' DataField="equipo" />
                    <asp:TemplateField HeaderText='<%$Resources:res_metadata,equ_equipo_horometroactual %>'>
                        <ItemTemplate>
                            <asp:TextBox ID="txt_horometro" runat="server" CssClass='txt_numero' Text='<%# eval("horometro") %>'
                                ValidationGroup="horometro" Visible='<%# eval("manejaHorometro") %>'></asp:TextBox><asp:RequiredFieldValidator
                                    ID="rfv_horometro" runat="server" ControlToValidate="txt_horometro" CssClass="lbl_mensaje"
                                    ValidationGroup="horometro" Enabled='<%# eval("manejaHorometro") %>'>*</asp:RequiredFieldValidator><act:filteredtextboxextender
                                        id='ftb_horometro' runat='server' targetcontrolid='txt_horometro' filtertype='Numbers,Custom'
                                        enabled='<%# eval("manejaHorometro") %>' /><asp:Label ID="lbl_id" runat="server"
                                            Text='<%# eval("id") %>' Visible="false"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lbl1" runat="server" Text='<%$Resources:res_metadata,ter_tercero_tercero %>' CssClass="lbl"></asp:Label>
    </td>
    <td>
        
        <uc1:busquedaAvanzada ID="bus_cliente" runat="server" a_str_tabla="ter_tercero" a_bol_postBack="true"/>
        
    </td>
    </tr>
        <tr>
        <td>
        <asp:Label ID="lbl2" runat="server" Text='<%$Resources:res_metadata,ter_sucursal_sucursal %>' CssClass="lbl"></asp:Label>
        
    </td>
    <td>
        
        <uc1:busquedaAvanzada ID="bus_sucursal" runat="server" a_bol_postBack="true"
            a_str_tabla="ter_sucursal" />
        
    </td>
    </tr>
    <tr>
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
