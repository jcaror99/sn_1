<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_descuento.ascx.vb"
    Inherits="website.samm_componentes.controles_cat_inc_descuento" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
    <tr>
        <td>
            <asp:GridView ID="grd_tipocatalogo" runat="server" AutoGenerateColumns="False">
                <EmptyDataTemplate>
                    <asp:Label ID="lbl" runat="server" CssClass="lbl_mensaje" Text='<%$Resources:res_mensajes,grillaVacia %>'></asp:Label>
                </EmptyDataTemplate>
                <Columns>
                    <asp:TemplateField HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
                        <ItemTemplate>
                            <asp:Label ID="lbl_id" runat="server" Text='<%#eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla, cat_tipocatalogo_tipocatalogo%>'
                        DataField="cat_tipocatalogo_tipocatalogo" ItemStyle-HorizontalAlign="Center" />
                    <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,cat_tipocatalogo_listaprecio_porcentaje %>'
                        ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:TextBox ID="txt_porcentaje" runat="server" Text='<%# IIF(eval("active"),eval("porcentaje"),"")  %>'
                                ValidationGroup="porcentaje"></asp:TextBox>
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
        </td>
    </tr>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="false" ImageUrl="../../images/botones/aceptar.png"
                ValidationGroup="porcentaje" />
        </td>
    </tr>
</table>
