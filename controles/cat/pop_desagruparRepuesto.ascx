<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_desagruparRepuesto.ascx.vb" Inherits="website.samm_componentes.controles_cat_pop_desagruparRepuesto" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
    <tr>
        <td align="center">
            <bus:busquedaAvanzada ID="bus_bodegaDestino" runat="server" a_str_tabla="gen_bodega" a_bol_postBack="true" a_bln_obligatorio="true" a_str_grupoValidacion="cantidad" />
        </td>
        <td></td>
    </tr>
    <tr>
        <td align="center">
            <asp:Label ID="lbl_cantidadConformar" runat="server" Text='<%$Resources: res_etiquetas_cat,cantidadConformar %>' CssClass='lbl'></asp:Label><asp:TextBox ID="txt_cantidadConformar" runat="server" CssClass='txt_numero'></asp:TextBox><br />
            <asp:Label ID="lbl_maximo" runat="server" CssClass='lbl'></asp:Label></td>
        <td align="center">
            <act:FilteredTextBoxExtender ID='ftb_cantidad' runat='server' TargetControlID='txt_cantidadConformar' FilterType='Numbers,Custom' />
            <asp:RequiredFieldValidator ID='rfv_cantidad' runat='server' ControlToValidate='txt_cantidadConformar' ValidationGroup="cantidad" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td align="center">
            <bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="true" ValidationGroup="cantidad" ImageUrl="../../images/botones/aceptar.png" /></td>
    </tr>
    <tr>
        <td align="center">
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label></td>
    </tr>
    <tr>
        <td align="center">
            <asp:GridView ID="gri_repuestos" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField HeaderText='<%$Resources: res_campoGrilla,cat_catalogo_catalogo_codigo %>' DataField='cat_catalogo_repuesto_hijo_catalogo_codigo' HeaderStyle-CssClass="gri_titulo" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField HeaderText='<%$Resources: res_campoGrilla,cat_catalogo_repuesto_catalogo_repuesto_hijo %>' DataField='cat_catalogo.repuesto_hijo_catalogo.repuesto' HeaderStyle-CssClass="gri_titulo" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField HeaderText='<%$Resources: res_campoGrilla,cat_detallerepuesto_cantidad %>' DataField='cantidad' HeaderStyle-CssClass="gri_titulo" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField HeaderText='<%$Resources: res_campoGrilla,cat_catalogo_bodega_existencia %>' DataField='existencia' HeaderStyle-CssClass="gri_titulo" ItemStyle-HorizontalAlign="Center" />
                </Columns>
                <FooterStyle CssClass="gri_pie" />
                <RowStyle CssClass="gri_item" />
                <PagerStyle CssClass="gri_paginacion" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                <EmptyDataTemplate>
                    <asp:Label ID="lbl_vacia" runat="server" CssClass="lbl_mensaje" Text='<%$Resources: res_mensajes,grillaVacia %>'></asp:Label></EmptyDataTemplate>
            </asp:GridView>
        </td>
        <td></td>
    </tr>
</table>
