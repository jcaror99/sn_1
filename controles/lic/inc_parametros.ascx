<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_parametros.ascx.vb"
    Inherits="website.samm_componentes.controles_lic_inc_parametros" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table class="tbl_marcoFormulario" cellpadding="0" cellspacing="0">
    <tr>
        <td style="padding: 10px;">
            <br />
            <asp:GridView ID="grvValores" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField HeaderText="Clave" DataField="parametro" />
                    <asp:TemplateField HeaderText="Valor">
                        <ItemTemplate>
                            <asp:Label ID="lbl_id" runat="server" CssClass="invisible" Text='<%# bind("id") %>'></asp:Label>
                            <asp:TextBox ID="txtValor" runat="server" CssClass="txt" Text='<%#bind("valor") %>'>&quot;&gt;</asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField  >
                        <ItemTemplate >
                            <asp:CheckBox ID="chk_esParteSerial" runat="server" CssClass="chk" Text='<%#bind("txt_chk") %>' Checked='<%# eval("esparte") %>' /></asp:CheckBox>
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
        <td style="padding-left: 150px; padding-bottom: 2px;">
        </td>
    </tr>
    <tr>
        <td align="center" style="padding-bottom: 2px;">
            <asp:Label ID="lbl_mensaje" runat="server"></asp:Label>
            <bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="false" ImageUrl="../../images/botones/aceptar.png" />
        </td>
    </tr>
</table>
