<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_campoReporte.ascx.vb"
    Inherits="website.samm_componentes.controles_rep_inc_campoReporte" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_nuevo" runat="server" ImageUrl="../../images/botones/agregar.gif"
                CausesValidation="false" />
            <bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.gif"
                CausesValidation="false" />
            <bti:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif"
                CausesValidation="false" />
            <bti:BotonImagen ID="bti_eliminar" runat="server" ImageUrl="../../images/botones/quitar.gif"
                CausesValidation="false" />
            <td>
            </td>
    </tr>
    <tr>
        <asp:GridView ID="gri_campos" runat="server" AllowPaging="true" AutoGenerateColumns="false"
            ShowHeader='true'>
            <Columns>
                <asp:TemplateField Visible="false">
                    <ItemTemplate>
                        <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="false"> </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="res_metadata,rep_camporeporte_camporeporte">
                    <ItemTemplate>
                        <asp:Label ID="lbl_campoReporte" runat="server" Text='<%# bind("campoReporte") %>'> </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="res_metadata,rep_camporeporte_tabla">
                    <ItemTemplate>
                        <asp:Label ID="lbl_tabla" runat="server" Text='<%# bind("tabla") %>'> </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="res_metadata,rep_camporeporte_id_tipocamporeporte">
                    <ItemTemplate>
                        <asp:Label ID="lbl_tipoCampo" runat="server" Text='<%# bind("tipocampoReporte") %>'> </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="res_metadata,rep_camporeporte_camporeporte_codigo">
                    <ItemTemplate>
                        <asp:Label ID="lbl_campoReporte_codigo" runat="server" Text='<%# bind("camporeporte_codigo") %>'> </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="res_metadata,rep_camporeporte_esparametro">
                    <ItemTemplate>
                        <asp:Label ID="lbl_esParametro" runat="server" Text='<%#IIF(cbool(eval("esParametro")),"Si","No") %>'> </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="res_metadata,rep_camporeporte_esserie">
                    <ItemTemplate>
                        <asp:Label ID="lbl_esSerie" runat="server" Text='<%#IIF(cbool(eval("esSerie")),"Si","No") %>'> </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="res_metadata,rep_camporeporte_parametroTotal">
                    <ItemTemplate>
                        <asp:Label ID="lbl_parametroTotal" runat="server" Text='<%# bind("parametroTotal") %>'> </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle CssClass="gri_pie" />
            <RowStyle CssClass="gri_item" />
            <PagerStyle CssClass="gri_paginacion" />
            <HeaderStyle CssClass="gri_titulo" />
            <AlternatingRowStyle CssClass="gri_itemAlterno" />
            <SelectedRowStyle CssClass="gri_itemSeleccionado" />
        </asp:GridView>
    </tr>
</table>
