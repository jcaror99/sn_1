<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="atributos.ascx.vb" Inherits="website.samm_componentes.controles_general_atributos" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<asp:Label id="lbl_modo" runat="server" Visible="false" CssClass="lbl_estadoFormulario"></asp:Label>
<table>
    <tr>
        <td>
            <asp:GridView ID="grvDatos" runat="server" AutoGenerateColumns="False" ShowHeader="false"
                BorderStyle="None" GridLines="None">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="lbl_id" runat="server" Text='<%#eval("id") %>' Visible="false" ForeColor="Red">
                            </asp:Label><asp:Label ID="lbl_tituloSeccion" runat="server" CssClass="lbl" Text='<%# eval("cat_atributo_atributo") %>'>
                            </asp:Label>
                            
                        </ItemTemplate>
                    </asp:TemplateField>
                   
                    <asp:TemplateField>
                        <ItemTemplate>
                             <asp:Label ID="lblIdAtributo" runat="server" Visible="false"></asp:Label>
                                        <asp:TextBox ID="txtValor" runat="server" CssClass="txt"></asp:TextBox>
                                        <asp:HyperLink ID="hypLink" runat="server" ImageUrl="../../images/botones/btn_url.png" Target="_blank"></asp:HyperLink>
                                        <asp:TextBox ID="txlvalor" runat ="server" TextMode="MultiLine" CssClass ="txt_largo" MaxLength="300"></asp:TextBox>
                                        <asp:CheckBoxList ID="chbValores" runat="server" CssClass="chk" RepeatColumns="2">
                                        </asp:CheckBoxList>
                                        <asp:TextBox ID="txtValorNumerico" runat="server" CssClass="txt_numero"></asp:TextBox>
                                        <asp:DropDownList ID="drpValor" runat="server" CssClass="drp">
                                        </asp:DropDownList>
                                        <uc1:fechaavanzada id="fecValor" runat="server" a_bln_obligatorio='<%# eval("obligatorio") %>'
                                            a_str_grupovalidacion="atributo" />
                                            <asp:TextBox
                                            ID="txtDescList" runat="server" CssClass="txt"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField>
                        <ItemTemplate>
<asp:RequiredFieldValidator ID='rfv_drpValor' runat='server' ControlToValidate='drpValor' ValidationGroup="atributo" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>

<asp:RequiredFieldValidator ID="rfv_txtValorNumerico" runat="server" ValidationGroup="atributo" Enabled='<%# eval("obligatorio") %>' ErrorMessage="*" ControlToValidate="txtValorNumerico"></asp:RequiredFieldValidator>

<%--<asp:RequiredFieldValidator ID="rfv_chbValores" runat="server" ValidationGroup="atributo" Enabled='<%# eval("obligatorio") %>
' ErrorMessage="*" ControlToValidate="chbValores"></asp:RequiredFieldValidator>--%>

<asp:RequiredFieldValidator ID="rfv_txtValor" runat="server" ValidationGroup="atributo" Enabled='<%# eval("obligatorio") %>' ErrorMessage="*" ControlToValidate="txtValor"></asp:RequiredFieldValidator>


<asp:RequiredFieldValidator ID='rfv_txLValor' runat='server' ValidationGroup="atributo" Enabled='<%# eval("obligatorio") %>'  ControlToValidate='txlValor'  SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>

                            
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField>
                        <ItemTemplate>
                        
                            <td id="td_boton" runat="server">
                                        <asp:Label ID="lbl_unidad" runat="server" CssClass="lbl_inf"></asp:Label> 
                                          
                          </td>
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField>
                        <ItemTemplate>
                           <cc1:BotonImagen id="bti_cargarTodo" runat="server"  ImageUrl="~/images/botones/equ_cargarDefectoTodos.jpg" Visible="false"/>
                            <cc1:BotonImagen id="bti_cargar" runat="server"  ImageUrl="~/images/botones/equ_cargarDefecto.jpg" />
                            
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField>
                        <ItemTemplate>
                        
                             <asp:TextBox ID="txt_valorDef" runat="server" CssClass="txt" Enabled="false"></asp:TextBox>
                                <asp:TextBox ID="txl_valorDef" runat ="server" TextMode="MultiLine" CssClass ="txt_largo" Enabled="false" MaxLength="300" ></asp:TextBox>
                                        <asp:CheckBoxList ID="chb_ValoresDef" runat="server" CssClass="chk" RepeatColumns="2" Enabled="false"></asp:CheckBoxList>
                                        <asp:TextBox ID="txt_ValorNumericoDef" runat="server" CssClass="txt_numero" Enabled="false"></asp:TextBox>
                                        <asp:DropDownList ID="drp_valorDef" runat="server" CssClass="drp" Enabled="false"></asp:DropDownList>
                                        <uc1:fechaavanzada id="fec_valorDef" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td style="padding-left: 100px" align="right">
        
        
        <asp:Label ID="lbl_MensajeObli" runat="server" CssClass="lbl_mensaje"></asp:Label>
        <asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='atributo' CssClass='lbl_mensaje'
ForeColor='' DisplayMode="SingleParagraph" />
        
        </td>
        <td>
            <cc1:botonimagen id="btiAceptar" runat="server" imageurl="../../images/botones/aceptar.png"
                validationgroup="atributo" />
        </td>
    </tr>
    <tr>
        <td style="padding-left: 100px">
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
</table>
