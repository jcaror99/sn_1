<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_resumenTercero.ascx.vb" Inherits="website.samm_componentes.controles_ter_inc_resumenTercero" %>
<asp:DataList ID="dtl" runat="server">
    <ItemStyle VerticalAlign="Top" />
    <ItemTemplate>
        <table>
            <tr>
                <td>
                    <asp:Label ID="lbl" runat="server" CssClass="td_titulo2"></asp:Label>
                </td>
            </tr>
            <tr valign="top">
                <td>
                    <asp:GridView ID="grd" runat="server" AutoGenerateColumns="false" BorderStyle="None"
                        GridLines="None" CellPadding="5">
                        <RowStyle CssClass="gri_item" />
                        <PagerStyle CssClass="" />
                        <AlternatingRowStyle CssClass="" BackColor="White" />
                        <SelectedRowStyle CssClass="" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowSelectButton="True" HeaderStyle-CssClass="invisible"
                                ItemStyle-CssClass="invisible" ControlStyle-CssClass="invisible" />
                            <asp:BoundField DataField="descripcion" ItemStyle-CssClass="lbl" />
                            <asp:TemplateField ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Right">
                                <ItemTemplate>
                                    <asp:HyperLink ID="link_eve" runat="server" CssClass='<%# iif(eval("link").gettype().tostring="System.DBNull","lbl_inf","lnk_subrayado") %>'
                                        NavigateUrl='<%# eval("link") %>' Text='<%# eval("dato1") %>' Visible='true'></asp:HyperLink>
                                        <asp:Label runat="server" CssClass="lbl_inf" Text='<%# eval("separador") %>'></asp:Label>
                                         <asp:HyperLink ID="HyperLink1" runat="server" CssClass='<%# iif(eval("link2").gettype().tostring="System.DBNull","lbl_inf","lnk_subrayado") %>'
                                        NavigateUrl='<%# eval("link2") %>' Text='<%# eval("dato2") %>' Visible='true'></asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>

   



