<%@ Page Language="VB" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master" AutoEventWireup="false" CodeBehind="enviarMail.aspx.vb" Inherits="website.samm_web.forms_general_enviarMail"  %>

<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>

<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="textoAvanzado"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" Runat="Server">
<asp:Label ID="lbl_titulo" CssClass="lbl_titulo" runat="server" Text="<%$ Resources:res_tituloPagina, forms_general_enviarmail %>"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" Runat="Server">
    <table class="tbl_marcoFormulario">
        <tr>
            <td><asp:Label id="Label4" runat="server" 
                    Text="<%$ Resources:res_etiquetas, agregarEn %>" CssClass="lbl"></asp:Label></td>
            <td>
                <asp:RadioButtonList id="rblEnDonde" runat="server" 
                    RepeatDirection="Horizontal" CssClass="rbl">
                    <asp:ListItem value="para" text="<%$ Resources:res_etiquetas, para %>"></asp:ListItem>
                    <asp:ListItem text="<%$ Resources:res_etiquetas, cc %>" value="cc"></asp:ListItem>
                </asp:RadioButtonList></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label id="lblContacto" runat="server" 
                    Text="<%$ Resources:res_metadata, ter_contacto_contacto %>" CssClass="lbl"></asp:Label></td>
            <td>
                <uc2:busquedaAvanzadaMultiple ID="bum_contactos" runat="server" 
                    a_str_tabla="ter_contacto" a_bln_obligatorio="True" 
                    a_str_grupoValidacion="1" />
            </td>
            <td>
            </td>
        </tr>
          <tr>
            <td>
                <asp:Label id="lblUsuario" runat="server" 
                    Text="<%$ Resources:res_metadata, seg_usuario_usuario %>" CssClass="lbl"></asp:Label></td>
            <td>
            <uc2:busquedaAvanzadaMultiple ID="bum_usuarios" runat="server" a_str_campo="email,usuario"
                    a_str_tabla="seg_usuario" a_bln_obligatorio="True" 
                    a_str_grupoValidacion="1" /></td>
            
            <td>
            </td>
        </tr>
          <tr>
            <td colspan="3">
                <hr /></td>
        </tr>
        <tr>
            <td>
                <asp:Label id="lblPara" runat="server" 
                    Text="<%$ Resources:res_etiquetas, para %>" CssClass="lbl"></asp:Label>&nbsp;</td>
            <td>
                <asp:TextBox id="txtPara" runat="server" CssClass="txt"></asp:TextBox>&nbsp;
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtPara" CssClass="lbl_mensaje" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label id="Label1" runat="server" Text="<%$ Resources:res_etiquetas, CC %>" 
                    CssClass="lbl"></asp:Label></td>
            <td>
                <asp:TextBox id="txtCC" runat="server" CssClass="txt"></asp:TextBox>
                
            <td>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label id="Label3" runat="server" 
                    Text="<%$ Resources:res_etiquetas, asunto %>" CssClass="lbl"></asp:Label></td>
            <td>
                <asp:TextBox id="txtAsunto" runat="server" CssClass="txt_largo">
                </asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtAsunto" CssClass="lbl_mensaje" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td valign="top"><asp:Label id="Label2" runat="server" 
                    Text="<%$ Resources:res_etiquetas, mensaje %>" CssClass="lbl"></asp:Label></td>
            <td>
                <uc1:textoAvanzado ID="texMensaje" runat="server" a_bln_obligatorio="True"/>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
    <cc1:botonimagen id="btiAceptar" runat="server" imageurl="~/images/botones/aceptar.png"></cc1:botonimagen></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
    <asp:label id="lbl_mensaje" runat="server" cssclass="lbl_mensaje"></asp:label>
    </td> 
            <td>
            </td>
        </tr>
    </table>
     <uc1:popup ID='popup1' runat='server' a_bol_visible='false' />
</asp:Content>

