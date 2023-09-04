<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inventario.ascx.vb" Inherits="website.samm_controles.controles_cat_inventario" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<table style="padding: 10px;">
    <tr>
        <td>
            <asp:GridView ID="grd_inventario" runat="server" AutoGenerateColumns="False" >
                <EmptyDataTemplate>
                    <asp:Label ID="lbl" runat="server" CssClass="lbl_mensaje" Text='res_mensajes,grillaVacia'></asp:Label></EmptyDataTemplate>
                <Columns>
                    <asp:TemplateField HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
                        <ItemTemplate>
                            <asp:Label ID="lbl_id" runat="server" Text='<%#eval("id") %>'></asp:Label></ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText='res_campoGrilla,gen_bodega_bodega' DataField="Bodega"
                        ItemStyle-HorizontalAlign="Center" />
                    <asp:TemplateField HeaderText='res_campoGrilla,cat_catalogo_bodega_localizacion'>
                        <ItemTemplate>
                            <asp:TextBox ID="txt_localizacion" CssClass="txt" runat="server" Text='<%#eval("localizacion") %>'></asp:TextBox></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='res_campoGrilla,cat_catalogo_bodega_existenciaminima'>
                        <ItemTemplate>
                            <asp:TextBox ID="txt_existenciamin" CssClass="txt_numero" runat="server" Text='<%#eval("existenciaminima") %>'></asp:TextBox></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='res_campoGrilla,cat_catalogo_bodega_existenciamaxima'>
                        <ItemTemplate>
                            <asp:TextBox ID="txt_existenciamax" CssClass="txt_numero" runat="server" Text='<%#eval("existenciamaxima") %>'></asp:TextBox></ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText='res_campoGrilla,cat_catalogo_bodega_existencia'
                        DataField="existencia" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField HeaderText='res_campoGrilla,cat_catalogo_bodega_reservado'
                        DataField="reservado" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField HeaderText='res_campoGrilla,cat_catalogo_bodega_enordenes'
                        DataField="enOrdenes" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField HeaderText='res_campoGrilla,cat_catalogo_bodega_disponible'
                        DataField="disponible" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField HeaderText='res_campoGrilla,cat_catalogo_bodega_costo'
                        DataField="costo_total" ItemStyle-HorizontalAlign="right" />
                     <asp:TemplateField >
                        <ItemTemplate>
                       <cc1:BotonImagen ID="bti_local" runat="server" ImageUrl="../../images/botones/localizar.jpg" CommandArgument ='<%#eval("Bodega")&"|"& eval("id")  %>' CommandName ='local' Visible='<%# CBool(eval("local")) %>' />
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
            <asp:GridView ID="grd_movimiento" runat="server" AutoGenerateColumns="False"  AllowPaging ="true"  >
                <EmptyDataTemplate>
                    <asp:Label ID="lbl" runat="server" CssClass="lbl_mensaje" Text='res_mensajes,grillaVacia'></asp:Label></EmptyDataTemplate>
                <Columns>
                    <asp:BoundField HeaderText ="res_metadata,equ_alquiler_alquiler" DataField ="alquiler" />
                    <asp:BoundField HeaderText ="res_metadata,ter_tercero_tercero" DataField ="tercero" />
                   <%-- <asp:BoundField HeaderText ="res_metadata,doc_documento_fechacierre_ff" DataField ="fechacierre_ff" />--%>
                    <asp:BoundField HeaderText ="res_etiquetas_alq,calq" DataField ="calq" />
                    <%-- <asp:BoundField HeaderText ="res_metadata,gen_bodega_bodega" DataField ="bodega" />--%>
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
        <td style="text-align: center">
            <cc1:BotonImagen ID="bti_guardar" runat="server" ImageUrl="../../images/botones/aceptar.jpg" />
        </td>
    </tr>
</table>
