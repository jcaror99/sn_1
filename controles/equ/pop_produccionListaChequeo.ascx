<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_produccionListaChequeo.ascx.vb"
    Inherits="website.samm_componentes.controles_equ_pop_produccionListaChequeo" %>
    
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src="~/controles/general/adjuntos.ascx" TagName="adjuntos" TagPrefix="uc4" %>

<table>
    <tr>
        <td colspan="2">
         <asp:GridView ID="dtlDatos" runat="server" ShowHeader="False" GridLines="None" 
                AutoGenerateColumns="false" style="font-style: italic">
                <Columns>
                    <asp:TemplateField ItemStyle-VerticalAlign="Top" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <table style="width: 100%">
                                <tr>
                                    <td id="tdIzq" runat="server">
                                        <asp:Label ID="lbl_atributo" runat="server" CssClass="lbl" Text='<%# eval("cat_atributo_atributo") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr id="trSeccion" runat="server">
                                    <td style="width: 100%">
                                        <hr />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-VerticalAlign="Top" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:TextBox ID="lblID" runat="server" Visible="FALSE"></asp:TextBox><table style="width: 100%"
                                cellpadding="0" cellspacing="0">
                                <tr>
                                    <td id="tdDer" runat="server">
                                        <asp:Label ID="lblIdAtributo" runat="server" Visible="false"></asp:Label><asp:TextBox
                                            ID="txtValor" runat="server" CssClass="txt"></asp:TextBox><asp:CheckBoxList ID="chbValores"
                                                runat="server" CssClass="chk" RepeatColumns="2">
                                            </asp:CheckBoxList>
                                        <asp:TextBox ID="txtValorNumerico" runat="server" CssClass="txt_numero"></asp:TextBox><act:FilteredTextBoxExtender
                                            ID='ftbValorNumerico' runat='server' TargetControlID='txtValorNumerico' FilterType='Numbers,Custom' />
<%--                                       <taz:textoAvanzado runat="server" ID="txt_largo" a_int_maxLength ="1000" CssClass ="txt_formulario" />
--%>                                        <asp:DropDownList ID="drpValor" runat="server" CssClass="drp">
                                        </asp:DropDownList>
                                        <uc1:fechaAvanzada ID="fecValor" runat="server" a_str_grupoValidacion='atr' a_bln_obligatorio='<%# eval("obligatorio") %>' />
                                        <asp:HyperLink ID="archivo_link"  runat="server"  target="_blank"  ></asp:HyperLink>
                                                                                 
                                        <asp:RequiredFieldValidator ID="rfv_num" runat="server" Enabled='<%# eval("obligatorio") %>'
                                            ControlToValidate='txtValorNumerico' ErrorMessage="" CssClass='lbl_mensaje' ValidationGroup='atr'>*</asp:RequiredFieldValidator><asp:RequiredFieldValidator
                                                ID="rfv_drp" runat="server" Enabled='<%# eval("obligatorio") %>' ControlToValidate='drpValor'
                                                ErrorMessage="" CssClass='lbl_mensaje' ValidationGroup='atr'>*</asp:RequiredFieldValidator><asp:RequiredFieldValidator
                                                    ID="rfv_texto" runat="server" Enabled='<%# eval("obligatorio") %>' ControlToValidate='txtValor'
                                                    ErrorMessage="" CssClass='lbl_mensaje' ValidationGroup='atr'>*</asp:RequiredFieldValidator>
                                                    
                                         
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <table style="width: 100%">
                                <tr>
                                    <td id="td_tomaDato" runat="server">
                                        <uc1:fechaAvanzada ID="fecTomaDato" runat="server" a_str_prefijo="ff" a_bln_obligatorio="false" />
                                    </td>
                                    <td>
                                            <asp:Label ID="lblDescList" runat="server" Visible="false"></asp:Label><asp:TextBox
                                            ID="txtDescList" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            <img alt="" height="1" src="../../images/interfaz/spacer.gif" width="50" />
        </td>
        <td>
            <cc1:BotonImagen ID="btiAceptar" runat="server" ImageUrl="../../images/botones/aceptar.png"
                ValidationGroup='atr' />
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
            <asp:Label ID="lbl_mensaje_id_reporte" runat="server" CssClass="lbl_mensaje"></asp:Label>
            
        </td>
    </tr>
</table>