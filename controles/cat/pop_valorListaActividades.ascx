<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_valorListaActividades.ascx.vb" Inherits="website.samm_componentes.controles_cat_pop_valorListaActividades" %>
<%@ Register Src="~/controles/general/valorLista.ascx" TagName="valorLista" TagPrefix="val" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="bus" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
    <tr>
        <td>
            <asp:GridView ID="grd_catalogo" runat="server" AutoGenerateColumns="False">
                <EmptyDataTemplate>
                    <asp:Label ID="lbl" runat="server" CssClass="lbl_mensaje" Text='<%$Resources:res_mensajes,grillaVacia %>'></asp:Label></EmptyDataTemplate>
                <Columns>                 
                  <asp:TemplateField
                        HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
                        <ItemTemplate>
                            <asp:Label ID="lbl_id" runat="server" Text='<%#eval("id_catalogo") %>'></asp:Label><asp:Label
                                ID="lbl_idAct" runat="server" Text='<%#eval("id") %>'></asp:Label></ItemTemplate>
                    </asp:TemplateField>
                    
               
                    <asp:BoundField HeaderText="res_campoGrilla,ter_sucursal_id_listaprecio" DataField='cat_listaPrecio_listaPrecio'>
                    
                    </asp:BoundField>
                     <asp:BoundField HeaderText="res_campoGrilla,cat_listaprecio_id_moneda" DataField='moneda'>
                    
                    </asp:BoundField>
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


<%--<table style="padding: 10px;"><tr><td><val:valorLista ID="vlr_repuesto" runat="server" />
</td></tr></table>--%>