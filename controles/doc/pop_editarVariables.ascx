<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_editarVariables.ascx.vb" Inherits="website.samm_componentes.controles_doc_pop_editarVariables" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<table>
    <tr>
        <td>
            <asp:Label ID="lbl_fecha_filtroDesde" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td>
            <uc2:fechaAvanzada ID="ff_fechaFiltroDesde" runat="server" a_str_prefijo='fh' />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_fecha_filtroHasta" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td>
            <uc2:fechaAvanzada ID="ff_fechaFiltroHasta" runat="server" a_str_prefijo='fh' />
        </td>
        <td>
            <asp:ImageButton ID='imbGuardarFiltro' runat='server' ToolTip="Filtrar" ImageUrl='../../images/botones/buscarBA.gif'
                ValidationGroup='form' CssClass='imb' />
        </td>
    </tr>
</table>
<table>
    <tr>
        <td>
            <asp:Label ID="lbl_titulo" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="grd_variable" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
                        <ItemTemplate>
                            <asp:Label ID="id_variable" runat="server" Text='<%#eval("id") %>' Visible="false"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
                        <ItemTemplate>
                            <asp:Label ID="lbl_id" runat="server" Text='<%#eval("id_atributo") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle CssClass="invisible"></HeaderStyle>
                        <ItemStyle CssClass="invisible"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,cat_atributo_atributo %>">
                        <ItemTemplate>
                            <asp:Label ID="lbl_" runat="server" CssClass='<%# IIF(eval("esSeccion"),"lbl","")%>'
                                Text='<%#eval("cat_atributo_atributo") %>'> </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="<%$ Resources:res_nombrecolumna,valor %>">

                        <ItemTemplate>

                            <asp:TextBox ID="txt_valor" runat="server" CssClass='txt_numero' Text='<%#eval("ultimovalor") %>'></asp:TextBox>&nbsp;

                            <asp:RequiredFieldValidator ID='rfv_valor' runat='server' ControlToValidate='txt_valor'
                                ValidationGroup="form" SetFocusOnError='true' CssClass='lbl_mensaje' ForeColor="" Visible="false">*</asp:RequiredFieldValidator>

                            <asp:HiddenField ID="hid_id" runat="server" Value='<%#eval("id") %>' />
                        </ItemTemplate>
                        <HeaderStyle CssClass="gri_titulo" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField Visible="false" DataField="unidad" HeaderText="<%$ Resources:res_campoGrilla,cat_atributo_id_unidad %>" />
                    <asp:TemplateField Visible="false" HeaderText="<%$ Resources:res_nombrecolumna,maximo %>">
                        <ItemTemplate>
                            <asp:Label ID="lbl_vmx" runat="server" Text='<%#eval("cat_atributo_valormaximo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField Visible="false" HeaderText="<%$ Resources:res_nombrecolumna,minimo %>">
                        <ItemTemplate>
                            <asp:Label ID="lbl_vmn" runat="server" Text='<%#eval("cat_atributo_valorminimo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <%--<asp:BoundField DataField="cat_atributo_valorminimo" HeaderText="<%$ Resources:res_nombrecolumna,minimo %>" />--%><%--<asp:BoundField DataField="cat_atributo_valormaximo" HeaderText="<%$ Resources:res_nombrecolumna,maximo %>" />--%>
                    <asp:BoundField Visible="false" DataField="ultimo_valor" HeaderText="<%$ Resources:res_nombrecolumna,ultimo %>" />
                    <%--<asp:BoundField DataField="fecha_ff" DataFormatString="{0:dd/MM/yyyy}" HeaderText="<%$ Resources:res_nombrecolumna,fecha %>" />--%>
                    <asp:TemplateField HeaderText="<%$ Resources:res_nombrecolumna,fecha %>">
                        <ItemTemplate>
                            <%--<asp:TextBox ID="txt_fecha_ff" runat="server" CssClass='txt_numero' Text='<%#eval("fecha_ff") %>' style="width:105px"></asp:TextBox >&nbsp;--%>
                            <uc2:fechaAvanzada ID="txt_fecha_ff" runat="server" FechaSeleccionada='<%#eval("fecha_ff") %>' Visible="false" a_str_prefijo='fh' />
                            <asp:RequiredFieldValidator ID='rfv_valorff' runat='server' ControlToValidate='txt_fecha_ff'
                                ValidationGroup="form" SetFocusOnError='true' CssClass='lbl_mensaje' ForeColor="" Visible="false">*</asp:RequiredFieldValidator>
                        </ItemTemplate>
                        <ItemStyle Width="20%" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ID="imb_eliminarVariable" runat="server" ImageUrl="../../images/iconos/eliminar.gif" ToolTip="Eliminar" CommandName='<%#Eval("id")%>' CommandArgument='<%#Eval("id_Atributo")%>' Visible='<%# IIf(Eval("id_atributo").ToString() = "", False, True) %>' />
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
</table>

<table>
    <tr>
        <td style="padding-left: 100px"></td>
        <td></td>
        <td valign='middle' align='right'>
            <asp:ImageButton ID='imbGuardar' Visible="true" runat='server' ImageUrl='../../images/botones/aceptar.png'
                ValidationGroup='form' CssClass='imb' />
        </td>
    </tr>

</table>
<table>
    <tr>
        <td style="padding-left: 55px"></td>
        <td style="padding-left: 100px">
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje">
            </asp:Label>
        </td>
    </tr>
</table>
