<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_detalle.ascx.vb" Inherits="website.samm_componentes.controles_cat_inc_detalle" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
    <tr>
        <td>
            <asp:Label ID="lbl_repuesto" runat="server" CssClass="lbl" Text='<%$ Resources:res_etiquetas_cat,sel_repuesto %>'></asp:Label>
        </td>
        <td>
            <bus:busquedaAvanzada ID="bus_repuestos" runat="server" a_bln_obligatorio="true"
                a_str_grupoValidacion="repue" a_str_tabla="cat_catalogo.repuesto" a_str_campo="catalogo.repuesto,cat_catalogo_repuesto_catalogo_codigo " />
        </td>
        <td>
            <bti:BotonImagen ID="bti_agregar" runat="server" ImageUrl="../../images/botones/seleccionargrilla.gif"
                CausesValidation="true" ValidationGroup="repue" />
        </td>
    </tr>
    <tr>
        <td colspan="3" align="center">
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
</table>
<table>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_eliminar" runat="server" CausesValidation="False" ImageUrl="~/images/botones/quitar.gif" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="gri_repuestos" runat="server" AllowPaging="True" AutoGenerateColumns="False">
                <Columns>
                    <asp:CommandField ButtonType="image" ShowSelectButton="True" SelectImageUrl="../../images/botones/seleccionargrilla.gif"></asp:CommandField>
                    <asp:BoundField HeaderText='<%$Resources: res_campoGrilla,cat_catalogo_repuesto_catalogo_repuesto_hijo %>'
                        DataField='cat_catalogo.repuesto_hijo_catalogo.repuesto' HeaderStyle-CssClass="gri_titulo"
                        ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField HeaderText='<%$Resources: res_campoGrilla,cat_catalogo_codigoInventario %>'
                        DataField='cat_catalogo_repuesto_hijo_codigoInventario' HeaderStyle-CssClass="gri_titulo"
                        ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField HeaderText='<%$Resources: res_campoGrilla,cat_catalogo_catalogo_codigo %>'
                        DataField='cat_catalogo_repuesto_hijo_catalogo_codigo' HeaderStyle-CssClass="gri_titulo"
                        ItemStyle-HorizontalAlign="Center" />
                    <asp:TemplateField HeaderText="Cantidad" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:Label ID="lbl_id" runat="server" Visible="false" Text='<%#eval("id") %>'></asp:Label><asp:TextBox
                                ID="txt_cantidad" runat="server" Text='<%# eval("cantidad") %>' CssClass='txt_numero'></asp:TextBox>
                            <act:FilteredTextBoxExtender ID='ftb_cantidad' runat='server' TargetControlID='txt_cantidad' FilterType='Numbers,Custom' />
                            <asp:RangeValidator ID="rnv_cant" MinimumValue="1" MaximumValue="9999999999999" ControlToValidate="txt_cantidad" runat="server" CssClass="lbl_mensaje" ValidationGroup="rep">*</asp:RangeValidator>
                            <asp:RequiredFieldValidator
                                ID='rfv_cantidad' runat='server' ControlToValidate='txt_cantidad' ValidationGroup="rep"
                                SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                        </ItemTemplate>
                        <HeaderStyle CssClass="gri_titulo" />
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <asp:Label ID="lbl_vacia" runat="server" CssClass="lbl_mensaje" Text='<%$Resources: res_mensajes,grillaVacia %>'></asp:Label>
                </EmptyDataTemplate>
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
            <asp:ValidationSummary ID='vlsGrilla' runat='server' ValidationGroup='rep' CssClass='lbl_mensaje' ForeColor='' />
        </td>
    </tr>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.png"
                CausesValidation="true" ValidationGroup="rep" />
        </td>
    </tr>
</table>
