<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_pendientes.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_pendientes" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/sugeridos.ascx" TagName="sugeridos" TagPrefix="uc4" %>
<table>
    <tr>
        <td></td>
        <td>
            <asp:Label ID="lblDocumentos" runat="server" CssClass="lbl">
            </asp:Label>
        </td>
        <td></td>
    </tr>
    <tr runat='server' id='tr_lbl_otsGarantia'>
        <td></td>
        <td>
            <asp:Label ID="lbl_otsGarantia" runat="server" CssClass="lbl">
            </asp:Label>
        </td>
        <td></td>
    </tr>
    <tr runat='server' id='tr_drp_otsGarantia'>
        <td></td>
        <td>
            <asp:DropDownList ID="drp_otsGarantia" runat="server" CssClass='drp'>
            </asp:DropDownList>
        </td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>
            <uc4:sugeridos ID="sugeridos" runat="server" />
        </td>
        <td></td>
    </tr>

    <tr>
        <td></td>
        <td>
            <hr />
        </td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Label ID="lblComentarios" runat="server" CssClass="lbl">
            </asp:Label>
        </td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:GridView ID="grvComentarios" runat="server" AutoGenerateColumns="False">
                <FooterStyle CssClass="gri_pie" />
                <RowStyle CssClass="gri_item" />
                <PagerStyle CssClass="gri_paginacion" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:CheckBox ID="chb_seleccionar" runat="server" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="chb_seleccionar" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='res_campoGrilla,doc_documentocomentario_comentario'>
                        <ItemTemplate>
                            <asp:Label ID="lblComentario" runat="server" ToolTip='<%#eval("comentario")%>'>
                            </asp:Label>
                            <asp:Label ID="lblId" runat="server" Text='<%#eval("id") %>' Visible="false">
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='res_campoGrilla,cnt_visitafija_fechacreada_ff'>
                        <ItemTemplate>
                            <asp:Label ID="fechaComentarios" runat="server" Text='<%#eval("fechaCreacion") %>'
                                CssClass="lbl">
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='res_campoGrilla,doc_documento_documento'>
                        <ItemTemplate>
                            <asp:Label ID="lbl_documento" runat="server" Text='<%#eval("documento") %>' CssClass="lbl">
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:CheckBox ID="chkDescartarComentarios" runat="server" />
        </td>
        <td></td>
        <td>&nbsp;
        </td>
    </tr>


    <tr>
        <td></td>
        <td>
            <bti:BotonImagen ID="imbGuardar" runat="server" CssClass="imb" ImageUrl="../../images/botones/aceptar.png"
                CausesValidation="false"></bti:BotonImagen>
        </td>
        <td></td>
    </tr>

</table>
