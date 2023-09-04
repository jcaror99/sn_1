<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_pendientes.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_inc_pendientes" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table>
    <tr>
        <td>
            <asp:Label ID="lbl_modelo" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="drp_modelos" runat="server" CssClass="drp" AutoPostBack="true">
            </asp:DropDownList>
        </td>
        <td></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="<%$Resources:res_campoGrilla,cat_catalogo_catalogo %>"
                CssClass="lbl"></asp:Label>
        </td>
        <td>
            <uc1:busquedaAvanzada ID="busCatalogo" runat="server" a_bol_postBack="false" a_str_campo="catalogo,codigoInventario,cat_subtipocatalogo_id_tipoCatalogo"
                a_str_tabla="cat_catalogo" a_bln_obligatorio="true" a_str_grupoValidacion="pendDoc"
                a_str_camposDrop="codigoInventario,catalogo" />
        </td>
        <td></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="<%$Resources:res_campoGrilla,doc_tipodocumento_tipodocumento %>"
                CssClass="lbl"></asp:Label>
        </td>
        <td>
            <uc1:busquedaAvanzada ID="busTipoDocumento" runat="server" a_bol_postBack="false"
                a_str_tabla="doc_tipoDocumento" a_bln_obligatorio="true" a_str_grupoValidacion="pendDoc" />
        </td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>
            <bti:BotonImagen ID="imbGuardar" runat="server" CssClass="imb" ImageUrl="../../images/botones/aceptar.png"
                ValidationGroup="pendDoc"></bti:BotonImagen>
        </td>
        <td></td>
    </tr>
    <tr>
        <%--<td>
            <bti:BotonImagen ID="bti_eliminar" runat="server" Visible="false" CausesValidation="False"
                ImageUrl="~/images/botones/quitar.gif" />
        </td>--%>
        <td>
            <asp:Label ID="lblMensaje" runat="server" CssClass="lbl_mensaje"></asp:Label><asp:ValidationSummary
                ID="ValidationSummary1" runat="server" CssClass="lbl_mensaje" ValidationGroup="pendDoc" />
        </td>
        <td></td>
    </tr>
</table>
<table>
    <tr>
        <td colspan="2">
            <asp:GridView ID="grvElementos" runat="server" AutoGenerateColumns="False">
                <FooterStyle CssClass="gri_pie" />
                <RowStyle CssClass="gri_item" />
                <PagerStyle CssClass="gri_paginacion" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ItemStyle-CssClass="invisible" HeaderStyle-CssClass="invisible" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Image ID="img_seleccionar" runat="server" ImageUrl="../../images/botones/seleccionarGrilla.gif" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="<%$Resources:res_campoGrilla,doc_tipodocumento_tipodocumento %>"
                        DataField="doc_tipodocumento_tipodocumento" />
                    <asp:BoundField HeaderText="<%$Resources:res_campoGrilla,cat_tipocatalogo_tipocatalogo %>"
                        DataField="cat_tipocatalogo_tipocatalogo" />
                    <asp:BoundField HeaderText="<%$ Resources:res_campoGrilla,cat_catalogo_codigoinventario %>"
                        DataField="codigo" />
                    <asp:BoundField HeaderText="<%$Resources:res_campoGrilla,cat_catalogo_catalogo %>"
                        DataField="cat_catalogo_Catalogo" />
                    <asp:TemplateField HeaderText="<%$Resources:res_campoGrilla,doc_pendientedocumento_cantidad %>">
                        <ItemTemplate>
                            <asp:TextBox ID="txtCantidad" runat="server" CssClass="txt_numero" Text='<%#Eval("cantidad") %>'></asp:TextBox><asp:Label
                                ID="lblId" runat="server" Text='<%#eval("id") %>' Visible="false"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="<%$Resources:res_campoGrilla,doc_pendientedocumento_olvidar %>">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# eval("olvidar") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="lbl_clasificacion" runat="server" Text="<%$Resources:res_campoGrilla,ter_tercero_clasificacion %>"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="drp_clasificacion" runat="server" CssClass="drp">
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField ShowHeader="False">
                        <HeaderTemplate>
                            <asp:Label ID="lbl_observacion" runat="server" Text="<%$Resources:res_campoGrilla,doc_documento_requisicion_observaciones %>"></asp:Label>
                        </HeaderTemplate>

                        <ItemTemplate>
                            <asp:TextBox ID="txt_descripcion" runat="server" CssClass="txt" Text='<%# eval("pendienteDocumento") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="lbl_uso" runat="server" Text="<%$Resources:res_campoGrilla,cat_seccionatributo_id_usoseccionatributo %>"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_documentoOrigen" runat="server" Text='<%# eval("uso") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="true" HeaderText="">
                        <ItemTemplate>
                            <asp:ImageButton ID="imbEliminar" runat="server" CausesValidation="False" CommandName="Delete"
                                ImageUrl="~/images/iconos/eliminar.gif" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>
            <bti:BotonImagen ID="btiGuardar" runat="server" CssClass="imb" ImageUrl="../../images/botones/aceptar.png" ValidationGroup='form' />
        </td>
    </tr>
</table>
