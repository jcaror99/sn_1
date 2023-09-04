<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_atributosSubtipoDocumento.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_atributosSubtipoDocumento" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="pop" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>

<table>
<tr>
<td>
<asp:Label ID="lbl_atributo" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_atributo" runat="server" a_str_tabla="cat_atributo" a_bol_postBack="true" />
</td>
</tr>
</table>

<table>
    <tr>
        <td>
            <asp:GridView ID="grvDatos" runat="server" AutoGenerateColumns="False"
            BorderStyle="None" GridLines="Horizontal">
                <Columns>
                    <asp:TemplateField HeaderText="Atributo">
                        <ItemTemplate>
                            <asp:Label ID="lbl_id" runat="server" Text='<%#Eval("id") %>' Visible="false" ForeColor="Red"></asp:Label>
                            <asp:Label ID="lbl_tituloSeccion" runat="server" CssClass="lbl" Text='<%#Eval("cat_atributo_atributo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Predeterminado" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="lblIdAtributo" runat="server" Visible="false"></asp:Label><asp:TextBox ID="txtValor" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:TextBox ID="txlvalor" runat="server" TextMode="MultiLine" CssClass="txt_largo"
                                MaxLength="300"></asp:TextBox>                            <asp:CheckBoxList ID="chbValores" runat="server" CssClass="chk" RepeatColumns="2">
                            </asp:CheckBoxList><asp:TextBox ID="txtValorNumerico" runat="server" CssClass="txt_numero"></asp:TextBox>
                            <asp:DropDownList ID="drpValor" runat="server" CssClass="drp">
                            </asp:DropDownList><uc1:fechaavanzada id="fecValor" runat="server" a_bln_obligatorio='<%#Eval("obligatorio") %>'
                                a_str_grupovalidacion="atributo" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="" ItemStyle-Wrap="true">
                        <ItemTemplate>
                            <asp:RequiredFieldValidator ID="rfv_drpValor" runat="server" ValidationGroup="atributo" Enabled='<%#Eval("obligatorio") %>' ErrorMessage="*" ControlToValidate="drpValor"></asp:RequiredFieldValidator><asp:RequiredFieldValidator ID="rfv_txtValorNumerico" runat="server" ValidationGroup="atributo" Enabled='<%#Eval("obligatorio") %>' ErrorMessage="*" ControlToValidate="txtValorNumerico"></asp:RequiredFieldValidator><asp:RequiredFieldValidator ID="rfv_txtValor" runat="server" ValidationGroup="atributo" Enabled='<%#Eval("obligatorio") %>' ErrorMessage="*" ControlToValidate="txtValor"></asp:RequiredFieldValidator><asp:RequiredFieldValidator ID="rfv_txLValor" runat="server" ValidationGroup="atributo" Enabled='<%#Eval("obligatorio") %>' ErrorMessage="*" ControlToValidate="txlValor"></asp:RequiredFieldValidator>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Orden" HeaderStyle-HorizontalAlign="Center">
                        <ItemTemplate >
                            <asp:TextBox ID="txtOrden" runat="server" CssClass="txt_numero"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                     <asp:TemplateField HeaderText="Mostrar en API" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate >
                        <asp:CheckBoxList ID="chbMostrarApi" runat="server" CssClass="chk" RepeatColumns="2">
                            </asp:CheckBoxList>
                      
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="true" HeaderText="">
                        <ItemTemplate>
                            <asp:ImageButton ID="imbEliminar" runat="server" CausesValidation="False" CommandName="Delete"
                            ImageUrl="~/images/iconos/eliminar.gif" />
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
        <td colspan="2" align="center">
            <bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="false" ImageUrl="../../images/botones/aceptar.png" />
        </td>
    </tr>
</table>
