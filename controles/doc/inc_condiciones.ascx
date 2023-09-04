<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_condiciones.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_inc_condiciones" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table border="0">
    <tr>
        <td colspan="3">
            <br />
        </td>
    </tr>
    <tr>
        <td align="right">
            &nbsp;
        </td>
        <td>
            <asp:GridView ID="grd_condiciones" runat="server" AutoGenerateColumns="false" BorderWidth="0px"
                BorderStyle="None" GridLines="None" CellPadding="3">
                <FooterStyle CssClass="gri_pie" />
                <RowStyle CssClass="gri_item" />
                <PagerStyle CssClass="gri_paginacion" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                <Columns>
                    <asp:TemplateField HeaderText="id" HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
                        <ItemTemplate>
                            <asp:Label ID="lbl_1" runat="server" Text='<%# eval("id")%>' CssClass="lbl_grilla"></asp:Label></ItemTemplate>
                        <HeaderStyle CssClass="invisible"></HeaderStyle>
                        <ItemStyle CssClass="invisible"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="lbl_condicionComercial" runat="server" CssClass="lbl_grilla" Text='<%# eval("condicion")%>'></asp:Label></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="condiciones">
                        <ItemTemplate>
                            <asp:TextBox ID="txt_condicion" runat="server" Visible="false" TextMode="MultiLine"
                                BorderStyle="None" CssClass="txt_formularioAvanzado"></asp:TextBox><asp:DropDownList
                                    ID="drp_condicion" runat="server" Visible="false" CssClass="drp">
                                </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField FooterStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td align="right">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="cbx_imprimir" runat="server" Checked="true" />
                                    </td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <FooterStyle HorizontalAlign="Center"></FooterStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="textoLibre" HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
                        <ItemTemplate>
                            <asp:Label ID="lbl_2" runat="server" Text='<%# eval("textoLibre")%>'></asp:Label>
                            <asp:CheckBox ID="chb_textoCondicion" runat="server" Checked='<%# eval("textoLibre")%>' />
                        </ItemTemplate>
                        <HeaderStyle CssClass="invisible"></HeaderStyle>
                        <ItemStyle CssClass="invisible"></ItemStyle>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
<table>
    <tr>
        <td align="right">
            &nbsp;
        </td>
        <td valign='middle' align='right'>
            <bti:BotonImagen ID="btiGuarda" runat="server" CssClass="imb" ImageUrl="../../images/botones/aceptar.png" />
        </td>
    </tr>
</table>
