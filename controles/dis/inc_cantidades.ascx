<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_cantidades.ascx.vb"
Inherits="website.samm_componentes.controles_dis_inc_cantidades" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
<tr>
    <td class='td_lblFormulario'>
        <asp:Label ID="lbl_equipo" runat="server" Text='<%$Resources:res_metadata,cat_catalogo_catalogo %>'
            CssClass="lbl"></asp:Label>
    </td>
    <td class='td_controlesFormulario'>
        <uc1:busquedaAvanzada ID="bus_catalogo" runat="server" a_bol_postBack="true" a_str_tabla="cat_catalogo"
            a_str_campo="catalogo,codigoInventario" />
    </td>
</tr>
<tr>
    <td align="center" colspan="2">
        <cc1:BotonImagen ID="bti_eliminar" runat="server" CausesValidation="False" ImageUrl="~/images/botones/quitar.gif" />
    </td>
</tr>
<tr>
    <td align="center" colspan="2">
        <asp:GridView ID="grd_catalogo" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:CommandField ShowSelectButton="True" ItemStyle-CssClass="invisible" HeaderStyle-CssClass="invisible" />
                <asp:TemplateField HeaderText="id">
                    <ItemTemplate>
                        <asp:Label ID="lbl_id" runat="server" Text='<%#Eval("id")%>' CssClass="lbl"></asp:Label></td></ItemTemplate>
                    <ItemStyle CssClass="invisible" />
                    <HeaderStyle CssClass="invisible" />
                </asp:TemplateField>
                <asp:BoundField HeaderText='<%$ Resources:res_campoGrilla,cat_catalogo_catalogo %>'
                    DataField="catalogo" />
                <asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,dis_obra_catalogo_cantidad %>'>
                    <ItemTemplate>
                        <asp:TextBox ID="txt_cantidad" runat="server" CssClass='txt_numero' Text='<%# eval("cantidad")%>'
                            ValidationGroup="cat"></asp:TextBox><asp:RequiredFieldValidator ID="rfv_cantidad"
                                runat="server" ControlToValidate="txt_cantidad" CssClass="lbl_mensje" ValidationGroup="cat">*</asp:RequiredFieldValidator><act:filteredtextboxextender
                                    id='ftb_cantidad' runat='server' targetcontrolid='txt_cantidad' filtertype='Numbers,Custom' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,dis_obra_catalogo_valorunitario %>'>
                    <ItemTemplate>
                        <asp:TextBox ID="txt_valorUnitario" runat="server" CssClass='txt_numero' Text='<%# eval("valorUnitario")%>'
                            ValidationGroup="cat"></asp:TextBox><asp:RequiredFieldValidator ID="rfv_valorUnitario"
                                runat="server" ControlToValidate="txt_valorUnitario" CssClass="lbl_mensje" ValidationGroup="cat">*</asp:RequiredFieldValidator><act:filteredtextboxextender
                                    id='ftb_valorUnitario' runat='server' targetcontrolid='txt_valorUnitario' filtertype='Numbers,Custom' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,dis_obra_catalogo_promediodia %>'>
                    <ItemTemplate>
                        <asp:TextBox ID="txt_promediodia" runat="server" CssClass='txt_numero' Text='<%# eval("promediodia")%>'
                            ValidationGroup="cat"></asp:TextBox><asp:RequiredFieldValidator ID="rfv_promediodia"
                                runat="server" ControlToValidate="txt_promediodia" CssClass="lbl_mensje" ValidationGroup="cat">*</asp:RequiredFieldValidator><act:filteredtextboxextender
                                    id='ftb_promediodia' runat='server' targetcontrolid='txt_promediodia' filtertype='Numbers,Custom' />
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText='valorminimo'>
                    <ItemTemplate>
                        <asp:TextBox ID="txt_valorMinimo" runat="server" CssClass='txt_numero' Text='<%#Eval("minimo")%>'
                            ValidationGroup="cat"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText ='valormaximo'>
                    <ItemTemplate>
                        <asp:TextBox ID="txt_valorMaximo" runat="server" CssClass='txt_numero' Text='<%#Eval("maximo")%>'
                            ValidationGroup="cat"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <RowStyle CssClass="gri_item" />
            <SelectedRowStyle CssClass="gri_itemSeleccionado" />
            <PagerStyle CssClass="gri_paginacion" />
            <HeaderStyle CssClass="gri_titulo" />
            <AlternatingRowStyle CssClass="gri_itemAlterno" />
        </asp:GridView>
    </td>
</tr>
<tr>
    <td align="center" colspan="2">
        <cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
            ValidationGroup="cat" />
    </td>
</tr>
</table>
