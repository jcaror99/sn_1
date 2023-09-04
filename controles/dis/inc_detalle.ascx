<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_detalle.ascx.vb"
    Inherits="website.samm_componentes.controles_dis_inc_detalle" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<style>
.lbl_valor{
text-align :right;
 font-size: 9px;
    font-weight: bold;
    color: #28679d;
    font-family: Verdana, Arial, Helvetica, sans-serif;
    text-decoration: none;
    cursor: default;
    border-top-style: none;
    border-right-style: none;
    border-left-style: none;
    border-bottom-style: none;
    background-color: transparent;
}
</style>
<table>
    <tr>
        <td align="center" colspan="2">
            <asp:GridView ID="grd_catalogo" runat="server" AutoGenerateColumns="False">
<Columns>
<asp:CommandField ShowSelectButton="True">
<HeaderStyle CssClass="invisible" />
<ItemStyle CssClass="invisible" />
</asp:CommandField>
<asp:TemplateField HeaderText="id">
<ItemTemplate>
<asp:Label ID="lbl_id" runat="server" Text='<%# eval("id")%>' CssClass="lbl"></asp:Label>
<asp:Label ID="lbl_idcatalogo" runat="server" Text='<%# eval("id_catalogo")%>' CssClass="lbl"></asp:Label>
<asp:Label ID="lbl_idObra" runat="server" Text='<%# eval("idObra")%>' CssClass="lbl"></asp:Label>
</ItemTemplate>
<ItemStyle CssClass="invisible" />
<HeaderStyle CssClass="invisible" />
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,cat_catalogo_catalogo%>'>
<ItemTemplate>
<asp:Label ID="txt_catalogo" runat="server" CssClass='lbl' Text='<%# eval("catalogo")%>'
Visible='<%# IIF(eval("id")>=0,true,false) %>'></asp:Label>
<asp:Label ID="Label1" runat="server" CssClass='lbl_mensaje' Text='<%# eval("catalogo")%>'
Visible='<%# IIF(eval("id")>=0,false,true) %>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,dis_evento_catalogo_cantidad %>'>
<ItemTemplate>
<asp:TextBox ID="txt_cantidad" runat="server" CssClass='txt_numero' Text='<%# eval("cantidad")%>'
ValidationGroup="cat" Visible='<%# IIF(eval("id")>=0,true,false) %>'></asp:TextBox><asp:RangeValidator ID ="rnv_cantidad" ControlToValidate="txt_cantidad" runat ="server" CssClass="lbl_mensaje"  ErrorMessage="*"  ValidationGroup="cat">
</asp:RangeValidator><asp:RequiredFieldValidator ID="rfv_cantidad" Enabled="false" 
runat="server" ControlToValidate="txt_cantidad" CssClass="lbl_mensaje" ValidationGroup="cat">*</asp:RequiredFieldValidator>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,dis_evento_catalogo_valorunitario %>' ItemStyle-HorizontalAlign="Right">
<ItemTemplate >
<asp:TextBox ID="txt_valorUnitario" runat="server"  Text='<%# Formatcurrency(IIF( cstr(eval("valorUnitario"))="",0.0,eval("valorUnitario")),2)%>' CssClass="lbl_valor"   
ValidationGroup="cat"  Visible='<%# IIF(eval("id")>=0,true,false) %>' Enabled="false"  ></asp:TextBox><%-- <asp:RequiredFieldValidator ID="rfv_valorUnitario"
runat="server" ControlToValidate="txt_valorUnitario" CssClass="lbl" ValidationGroup="cat">*</asp:RequiredFieldValidator>
<act:FilteredTextBoxExtender ID='ftb_valorUnitario' runat='server' TargetControlID='txt_valorUnitario' FilterType='Numbers,Custom' Enabled='<%# IIF(eval("id")>=0,true,false) %>'/>--%>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,dis_evento_catalogo_equipoauxiliar%>'>
<ItemTemplate>
<asp:CheckBox ID="chb" runat="server" Checked='<%# eval("equipoauxiliar") %>' Text="" Visible='<%# IIF(eval("id")>=0,true,false) %>' /></ItemTemplate>
</asp:TemplateField>
 <asp:TemplateField HeaderText='res_campoGrilla,dis_evento_catalogo_observaciones'>
                        <ItemTemplate>
                            <asp:TextBox ID="txt_observaciones" runat="server" CssClass='txt' Text='<%# eval("observaciones")%>'
                                ValidationGroup="cat" Visible='<%# IIF(eval("id")>=0,true,false) %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
</Columns>
<RowStyle CssClass="gri_item" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
</asp:GridView>
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg" CausesValidation="true"
                ValidationGroup="cat" />
        </td>
    </tr>
</table>
