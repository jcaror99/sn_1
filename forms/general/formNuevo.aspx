<%@ Page Language="VB" MasterPageFile="~/master/master/mas_formularioNuevo.master"
    AutoEventWireup="false" CodeBehind="formNuevo.aspx.vb" Inherits="website.samm_web.forms_general_frm_nuevo" %>
<%@ Register Src="~/controles/general/cargando.ascx" TagName="cargando" TagPrefix="uc4" %>
<%@ Register Src="~/controles/general/cargueArchivos.ascx" TagName="cargueArchivos"
    TagPrefix="car" %>   
<asp:Content ID="cntGeneral" ContentPlaceHolderID="cph_general" runat="server">
    <asp:UpdateProgress ID="UpdateProgress1" runat="server" DisplayAfter="1">
        <ProgressTemplate>
            <uc4:cargando ID="Cargando1" runat="server"></uc4:cargando>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:UpdatePanel runat="server">
    <ContentTemplate>
        <asp:Panel ID="pnl_formulario" runat="server" Height="100%" Width="100%">
        </asp:Panel>
    </ContentTemplate>
    </asp:UpdatePanel>
    <asp:Panel ID="pnl_formNoAjax" runat="server" Height="100%" Width="100%">
    </asp:Panel>
        <asp:Panel ID="Pnl_archivos" runat="server" Height="100%" Width="100%">
        <table cellpadding="0" cellspacing="0" class="tbl_marcoFormulario"> 
        <tr runat="server" class="lbl_titulo1">
        <td colspan="2">
        <asp:Label ID="lbl_titulo" runat="server" CssClass="lbl_titulo1"></asp:Label>
        </td>
        </tr>
        <tr>
        <td colspan="2">
        <asp:GridView ID="grv_docs" runat="server" AutoGenerateColumns="false">
        <Columns>
        <asp:TemplateField HeaderText="Tipo documento" >
        <ItemTemplate >
        <asp:Label ID="lnk_tipo" runat="server" Text='<%# eval("tipo")%>'
                                        Visible='<%# IIF(eval("lnk")="",false,true) %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField  HeaderText="Documento" >
        <ItemTemplate >
        <asp:label ID="lnk_documento" runat="server" Text='<%# eval("documento")%>'
                                        Visible='<%# IIF(eval("lnk")="",false,true) %>'></asp:label>
        </ItemTemplate>
        </asp:TemplateField>
        <%--<asp:TemplateField  HeaderText="Tipo relacion" >
        <ItemTemplate >
        <asp:HyperLink ID="lnk_relacion" runat="server" Text='<%# eval("tipo_relacion")%>' NavigateUrl='<%# eval("lnk") %>'
                                        Visible='<%# IIF(eval("lnk")="",false,true) %>' CssClass="lnk"></asp:HyperLink>
        </ItemTemplate>
        </asp:TemplateField>--%>
        <asp:TemplateField HeaderText="Archivo" >
        <ItemTemplate >
        <asp:HyperLink ID="hpl_descarga" runat="server" NavigateUrl='<%# eval("lnk") %>' Visible='<%# IIF(eval("lnk")="",false,true) %>' CssClass="lnk center">
            <span style="color:#28679d"><i class="fa fa-download fa-lg" aria-hidden="true"></i></span>
        </asp:HyperLink>
        
        <asp:HyperLink ID="lnk_archivo" runat="server" Text='<%# eval("archivo_doc")%>' NavigateUrl='<%# eval("lnk") %>'
                                        Visible='false' CssClass="lnk"></asp:HyperLink>
        </ItemTemplate>
        </asp:TemplateField>
        </Columns>
        <FooterStyle CssClass="gri_pie" />
        <RowStyle CssClass="gri_item" />
        <PagerStyle CssClass="gri_paginacion" />
        <HeaderStyle CssClass="gri_titulo" />
        <SelectedRowStyle CssClass="gri_itemSeleccionado" />
        <AlternatingRowStyle CssClass="gri_itemAlterno" />
    </asp:GridView>
        </td>
        </tr>
        </table>    
    </asp:Panel>
</asp:Content>
