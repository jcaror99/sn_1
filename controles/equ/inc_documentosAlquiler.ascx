<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_documentosAlquiler.ascx.vb" Inherits="website.samm_componentes.controles_equ_inc_documentosAlquiler" %>
<asp:GridView
                ID="grd_documentos" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="id" HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
                        <ItemTemplate>
                            <asp:Label ID="lbl_1" runat="server" Text='<%# eval("id")%>' CssClass="lbl_grilla"></asp:Label></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_documento_documento_numero %>'>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# eval("numero")%>' NavigateUrl='<%# eval("lnk") %>'
                                Visible='<%# IIF(eval("lnk")="",false,true) %>' CssClass="lnk"></asp:HyperLink></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_documento_documento %>'>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# eval("documento")%>' NavigateUrl='<%# eval("lnk") %>'
                                CssClass='<%# IIF(eval("numero")="","lbl_resaltado","lnk") %>' ToolTip='<%# eval("documento_todo")%>'></asp:HyperLink></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_estadotipodocumento_estadotipodocumento %>'>
                        <ItemTemplate>
                            <asp:Label ID="lbl_4" runat="server" Text='<%# eval("estado")%>' CssClass="lbl_grilla"></asp:Label></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_prioridaddocumento_prioridaddocumento %>'>
                        <ItemTemplate>
                            <asp:Label ID="lbl_5" runat="server" Text='<%# eval("prioridad")%>' CssClass="lbl_grilla"></asp:Label></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_documento_fecha_fh %>'>
                        <ItemTemplate>
                            <asp:Label ID="lbl_7" runat="server" Text='<%# eval("fecha")%>' CssClass="lbl_grilla"></asp:Label></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,doc_documento_fechacierre_ff %>'>
                        <ItemTemplate>
                            <asp:Label ID="lbl_6" runat="server" Text='<%# eval("fechaCierre")%>' CssClass="lbl_grilla"></asp:Label></ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <RowStyle CssClass="gri_item" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                <PagerStyle CssClass="gri_paginacion" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
            </asp:GridView>