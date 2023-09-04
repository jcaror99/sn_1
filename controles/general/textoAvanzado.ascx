<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="textoAvanzado.ascx.vb" Inherits="website.samm_controles.controles_general_textoAvanzado" %>

<asp:TextBox ID="txt_texto" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox><asp:Image
    ID="img_textos" runat="server" ImageUrl="~/images/iconos/txtdef.gif" />
    <asp:RequiredFieldValidator ID="rfv_texto" runat="server" ControlToValidate="txt_texto" Enabled="false">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="rev_texto" runat="server" ControlToValidate="txt_texto" CssClass='lbl_mensaje' Display="Dynamic" enabled="false" >*</asp:RegularExpressionValidator>
<div id="divTextoDefecto" runat="server" style="z-index: 101; left: -500px; position: absolute;
    top: 500px; display: none;">
    <asp:GridView ID="grvTextoDefecto" runat="server" ShowHeader="False">
        <Columns>
            <asp:CommandField ShowSelectButton="True" ItemStyle-CssClass="invisible" />
            <asp:TemplateField Visible="false">
                <ItemTemplate>
                    <asp:Label ID="lbl_id" runat="server" Visible="false" Text='<%# eval("id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <RowStyle CssClass="gri_item" />
        <AlternatingRowStyle CssClass="gri_itemAlterno" />
    </asp:GridView>
</div>