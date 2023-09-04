<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_entregarRequisicion.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_entregarRequisicion" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="textoAvanzado" TagPrefix="uc2" %>

<table>
    <tr>
        <td>
            <asp:Label ID="lbl_bodega" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td>
            <uc1:busquedaAvanzada ID="bus_bodega" runat="server" a_str_tabla="gen_bodega" a_bol_postBack="true"
                a_bln_obligatorio="true" a_str_grupoValidacion="rq" />
        </td>
    </tr>
        
      <tr>
        <td>
            <asp:Label ID="lbl_usuario" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td>
            <uc1:busquedaAvanzada ID="bus_usuario" runat="server" a_str_tabla="seg_usuario" a_bol_postBack="true"
                a_str_grupoValidacion="rq" />
        </td>
    </tr>
   
    
    
    <tr>
        <td colspan="2">
            <asp:Label ID="lbl_bodegasDif" runat="server" CssClass="lbl_mensaje" Visible="false"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_salida" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td>
            <uc1:busquedaAvanzada ID="bus_salida" runat="server" a_bln_obligatorio="True" a_str_tabla="doc_subtipoDocumento"
                a_str_grupoValidacion="rq" />
        </td>
        <td>
            <asp:LinkButton ID="bti_limpiar" runat="server" />
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:GridView ID="grd_entrega" AllowSorting="true" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="item" ItemStyle-HorizontalAlign="Center" SortExpression="item"
                        HeaderText='<%$ Resources:res_campoGrilla,doc_itemdocumento_itemdocumento %>'>
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="referencia" ItemStyle-HorizontalAlign="Center" SortExpression="referencia"
                        HeaderText='<%$ Resources:res_campoGrilla,cat_catalogo_codigoinventario %>'>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="cantidadPlaneado" ItemStyle-HorizontalAlign="Center" SortExpression="cantidadPlaneado"
                        HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_cantidadplaneado %>">
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundField>
                    <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_cantidadejecutado %>"
                        SortExpression="cantidadEjecutado">
                        <ItemTemplate>
                            <asp:Label ID="lbl_ejecutado" runat="server" CssClass="lbl" Text='<%# eval("cantidadEjecutado") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ent" ItemStyle-HorizontalAlign="Center">
                        <HeaderTemplate>
                            <asp:Label runat="server" ID="lbl_entregar"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:TextBox ID="txt_entrega" runat="server" CssClass="txt_numero" Text='<%# IIf(Eval("cantidadPlaneado") - Eval("cantidadEjecutado") > 0, Eval("cantidadPlaneado") - Eval("cantidadEjecutado"), 0) %>'></asp:TextBox>
                            <act:filteredtextboxextender id='ftb_entrega' runat='server' targetcontrolid='txt_entrega'
                                filtertype='Numbers,Custom' />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,cat_catalogo_bodega_existencia %>">
                        <ItemTemplate>
                            <asp:Label ID="lbl_existencia" runat="server" CssClass="lbl" Text='<%# eval("existencia") %>'></asp:Label>
                            <asp:Label ID="lbl_id" runat="server" CssClass="invisible" Text='<%# eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,cat_catalogo_bodega_localizacion %>">
                        <ItemTemplate>
                            <asp:Label ID="lbl_localizacion" runat="server" CssClass="lbl" Text='<%# eval("localizacion") %>'></asp:Label>
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
    <asp:Label ID="lbl_observaciones" runat="server" CssClass="lbl"></asp:Label>
    </td>
    <td>
<asp:TextBox ID="txt_observaciones" runat="server" CssClass="txt_multilinea" TextMode="MultiLine" ></asp:TextBox>
    </td>
    </tr>
    <tr>
        <td colspan="2">
            <cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="~/images/botones/aceptar.jpg"
                ValidationGroup="rq" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
</table>
