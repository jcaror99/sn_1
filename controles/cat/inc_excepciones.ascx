<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_excepciones.ascx.vb"
    Inherits="website.samm_componentes.controles_cat_inc_excepciones" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="bus" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
    <tr>
        <td>
            <bus:busquedaAvanzadaMultiple ID="bus_catalogo" runat="server" a_bln_obligatorio="false"
                a_str_tabla="cat_catalogo" a_str_campo="catalogo,codigoInventario,id_subtipoCatalogo" />
        </td>
    </tr>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_eliminar" runat="server" ImageUrl="../../images/botones/quitar.gif"
                CausesValidation="false" />
        </td>
        </td></tr>
    <tr>
        <td>
            <asp:GridView ID="grd_catalogo" runat="server" AutoGenerateColumns="False">
                <EmptyDataTemplate>
                    <asp:Label ID="lbl" runat="server" CssClass="lbl_mensaje" Text='<%$Resources:res_mensajes,grillaVacia %>'></asp:Label></EmptyDataTemplate>
                <Columns>
                    <asp:CommandField ShowSelectButton="True" SelectImageUrl="~/images/botones/seleccionarGrilla.gif"
                        ButtonType="Image" />
                    <asp:BoundField HeaderText='res_campoGrilla,cat_catalogo_catalogo'
                        DataField="cat_catalogo_catalogo" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="cat_catalogo_catalogo_codigo" HeaderText='res_campoGrilla,cat_catalogo_catalogo_codigo'
                        ItemStyle-HorizontalAlign="Center" />
                    <%--<asp:BoundField HeaderText="tipocatalogo" DataField=""/>--%><asp:TemplateField
                        HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
                        <ItemTemplate>
                            <asp:Label ID="lbl_id" runat="server" Text='<%#eval("id_catalogo") %>'></asp:Label><asp:Label
                                ID="lbl_idAct" runat="server" Text='<%#eval("id") %>'></asp:Label></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='res_campoGrilla,cat_catalogo_listaprecio_precioventa'
                        ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:TextBox ID="txt_precio" runat="server" CssClass='txt_precio' Text='<%# eval("precioventa") %>'
                                ValidationGroup="precio"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="txt_precio"
                                CssClass="lbl_mensje" ValidationGroup="precio">*</asp:RequiredFieldValidator><act:FilteredTextBoxExtender
                                    ID='ftb_precio' runat='server' TargetControlID='txt_precio' FilterType='Numbers,Custom' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText='res_campoGrilla,cat_catalogo_listaprecio_catalogo_listaprecio'
                        ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:TextBox ID="txt_descripcion" runat="server" CssClass='txt' Text='<%# eval("descripcion") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                                 
                    <asp:TemplateField HeaderText='res_campoGrilla,cat_catalogo_porcDto'
                        ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:TextBox ID="txt_porcDto" runat="server" CssClass='txt_precio' Text='<%# eval("porcDto") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv_porcDto" runat="server" ControlToValidate="txt_porcDto"
                                CssClass="lbl_mensje" ValidationGroup="precio">*</asp:RequiredFieldValidator><act:FilteredTextBoxExtender
                                    ID='ftb_porcDto' runat='server' TargetControlID='txt_porcDto' FilterType='Numbers,Custom' />
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
            <bti:BotonImagen ID="btn_aceptar" runat="server" CausesValidation="true" ImageUrl="../../images/botones/aceptar.png"
                ValidationGroup="precio" />
        </td>
    </tr>
</table>
