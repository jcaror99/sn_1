<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_checkListOT.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_inc_checkListOT" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src="~/controles/general/adjuntos.ascx" TagName="adjuntos" TagPrefix="uc4" %>
<table>
    <tr>
        <td>
            <asp:Label ID="lbl_check" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,cat_pruebachecklist_pruebachecklist %>'></asp:Label><asp:DropDownList
                ID="drp_check" runat="server" CssClass="drp" AutoPostBack="true" DataTextField="lista"
                DataValueField="id">
            </asp:DropDownList>
            <asp:CheckBox ID="chb_mostrarSugeridos" runat="server" AutoPostBack="True" CssClass="chb" />
        </td>
    </tr>
    <tr>
        <td>
            <uc2:grilla ID="gri_check" runat="server" a_bln_paginacionNormal="true" />
        </td>
    </tr>
    <tr>
        <td>
            <cc1:BotonImagen ID="bti_eliminar" runat="server" CausesValidation="False" ImageUrl="~/images/botones/quitar.gif" /><cc1:BotonImagen
                ID="btiImprimir" runat="server" CausesValidation="False" ImageUrl="~/images/botones/print.gif" />
        </td>
    </tr>
    <tr>
        <td>          
            <uc1:fechaAvanzada ID="FechaCopia" runat="server" a_str_prefijo="ff" a_bln_obligatorio="false" />
            <asp:CheckBox ID="chb_fechas" runat="server" AutoPostBack="false" CssClass="chb" />
        </td>
    </tr>
</table>
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
                                        <asp:Label ID="lbl_atributo" runat="server" CssClass="lbl" Text='<%#Eval("cat_atributo_atributo") %>'></asp:Label>
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
                                        <uc1:fechaAvanzada ID="fecValor" runat="server" a_str_grupoValidacion='atr' a_bln_obligatorio='<%#Eval("obligatorio") %>' />
                                        <asp:HyperLink ID="archivo_link"  runat="server"  target="_blank"  ></asp:HyperLink>
                                                                                 
                                        <asp:RequiredFieldValidator ID="rfv_num" runat="server" Enabled='<%#Eval("obligatorio") %>'
                                            ControlToValidate='txtValorNumerico' ErrorMessage="" CssClass='lbl_mensaje' ValidationGroup='atr'>*</asp:RequiredFieldValidator><asp:RequiredFieldValidator
                                                ID="rfv_drp" runat="server" Enabled='<%#Eval("obligatorio") %>' ControlToValidate='drpValor'
                                                ErrorMessage="" CssClass='lbl_mensaje' ValidationGroup='atr'>*</asp:RequiredFieldValidator><asp:RequiredFieldValidator
                                                    ID="rfv_texto" runat="server" Enabled='<%#Eval("obligatorio") %>' ControlToValidate='txtValor'
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
