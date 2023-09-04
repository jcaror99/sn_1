<%@ Page Language="VB" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master" AutoEventWireup="false" CodeBehind="consecutivos.aspx.vb" Inherits="website.samm_web.forms_doc_consecutivos" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc1" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" runat="Server">
    <asp:Label ID="lbTitulo" runat="server" Text="<%$ Resources:res_titulopagina,forms_doc_consecutivos %>"
        CssClass="lbl_titulo"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" runat="Server">
    <table class="tbl_marcoFormulario">
        <tr>
            <td>
                <asp:GridView ID="grd_consecutivos" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_subtipodocumento_subtipodocumento %>'>
                            <ItemTemplate>
                                <asp:Label ID="lbl_id" runat="server" Visible="false" Text='<%#eval("id") %>'></asp:Label>
                                <asp:Label ID="lbl_id_TD" runat="server" Visible="false" Text='<%#eval("id_tipodocumento") %>'></asp:Label>
                                <asp:Label ID="lbl_subtipo" runat="server" Text='<%# eval("subtipoDocumento") %>'
                                    CssClass='<%# IIF(eval("id_tipodocumento")>0,"","lbl_resaltado") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla, doc_subtipodocumento_prefijo%>' ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="lbl_prefijo" runat="server" Text='<%# eval("prefijo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_subtipodocumento_consecutivo %>' ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="lbl_consecutivo" runat="server" Text='<%# eval("consecutivo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_subtipodocumento_prefijo %>' ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:TextBox ID="txt_prefijo" runat="server" Text='<%# eval("prefijo") %>'
                                CssClass='<%# IIF(eval("id_tipodocumento")>=0,"txt_formulario","invisible") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv_prefijo" runat="server" ControlToValidate="txt_prefijo"
                                    CssClass="lbl_mensje" ValidationGroup="consecutivo" Visible='<%# IIF(eval("id_tipodocumento")>=0,true,false) %>'>*</asp:RequiredFieldValidator>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla, doc_subtipodocumento_consecutivo%>' ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:TextBox ID="txt_consecutivo" runat="server" Text='<%# eval("consecutivo") %>'
                                CssClass='<%# IIF(eval("id_tipodocumento")>=0,"txt_numero","invisible") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv_consecutivo" runat="server" ControlToValidate="txt_consecutivo"
                                    CssClass="lbl_mensje" ValidationGroup="consecutivo" Visible='<%# IIF(eval("id_tipodocumento")>=0,true,false) %>'>*</asp:RequiredFieldValidator>
                                <act:FilteredTextBoxExtender ID='ftb_consecutivo' runat='server' TargetControlID='txt_consecutivo'
                                    FilterType='Numbers,Custom' Enabled='<%# IIF(eval("id_tipodocumento")>=0,true,false) %>' />
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
                <bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                    ValidationGroup="consecutivo" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:ValidationSummary ID="vds_consecutivo" runat="server" ValidationGroup="consecutivo"
                    HeaderText='<%$Resources:res_mensajes,camposObligatorios %>' />
                <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
            </td>
        </tr>
    </table>
    <uc1:popup ID='popup1' runat='server' a_bol_visible='false' />
</asp:Content>
