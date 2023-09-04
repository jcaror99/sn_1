<%@ Page Language="VB" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master"
AutoEventWireup="false" CodeBehind="cambiarClave.aspx.vb" Inherits="website.samm_web.forms_general_cambiarClave" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName="tabs"
TagPrefix="tab" %>
<%@ Register src="~/controles/paginaInicio/apariencia.ascx" tagname="apariencia" tagprefix="uc1" %>
<asp:Content ID="content1" ContentPlaceHolderID="cph_general" runat="server">
<script type='text/javascript'>
function initKeyValues()
{
document.getElementById('C').value="<%=GetChallenge()%>";
document.getElementById('E').value="<%=GetRSA_E()%>";
document.getElementById('M').value="<%=GetRSA_M()%>";

}
</script>
<table cellpadding="0" cellspacing="0">
<tr>
<td>
<tab:tabs ID='Tabs' runat="server" />
</td>
</tr>
</table>
<asp:MultiView ID="mvw_modulos" runat="server">
<asp:View ID="svw_informacion" runat="server">
<table class="tbl_marcoFormularioExt"  width="330">
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_usuario_i' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_usuario_1' runat='server' MaxLength='100' CssClass='txt_formulario_blo'
Enabled="false" ReadOnly="True"></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_usuario' runat='server' ControlToValidate='txt_usuario_1'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_usuario_codigo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_usuario_codigo' runat='server' MaxLength='100' 
CssClass='txt_formulario_blo' ReadOnly="True"></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_perfil' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='lbl_perfil' runat='server' CssClass='txt_formulario_blo' ReadOnly="True"></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_cargo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='lbl_cargo' runat='server' CssClass='txt_formulario_blo' ReadOnly="True"></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_grupo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='lbl_grupo' runat='server' CssClass='txt_formulario_blo' ReadOnly="True"></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_zona' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='lbl_zona' runat='server' CssClass='txt_formulario_blo' ReadOnly="True"></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_nombre' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_nombre' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_identificacion' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_identificacion' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_profesion' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_profesion' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_email' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_email' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_email' runat='server' ControlToValidate='txt_email'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="rev_email" runat="server" ControlToValidate="txt_email"
CssClass="lbl_mensaje" ErrorMessage='<%$Resources:res_mensajes,emailNoValido %>'
ForeColor="" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
ValidationGroup="form" Text="*"></asp:RegularExpressionValidator>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_direccion' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_direccion' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_telefono' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_telefono' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_sexo' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_sexo' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
RepeatLayout='Flow'>
<asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,masculino %>'></asp:ListItem>
<asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,femenino %>'></asp:ListItem>
</asp:RadioButtonList>
&nbsp;&nbsp;<asp:HyperLink runat="server" ID="hpr_archivos" Text=""></asp:HyperLink>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_sexo' runat='server' ControlToValidate='rbl_sexo'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td colspan="4">
<table id='tbl_guardarformulario'>
<tr>
<td>
<asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje'
ForeColor='' />
</td>
<td>
<asp:Label ID="lbl_mansajeError" runat="server" Text="" CssClass="lbl_mensaje"></asp:Label>
</td>
<td valign='middle' align='right'>
<bti:BotonImagen ID='imbGuardar' runat='server' ImageUrl='../../images/botones/aceptar.png'
ValidationGroup='form' CssClass='imb' />
</td>
</tr>
</table>
</td>
</tr>
</table>
</asp:View>
<asp:View ID="svw_clave" runat="server" >
<asp:Panel ID='pan_formulario' runat='server' DefaultButton='btn_guardar'>

<input type="hidden" id="posx" name="posx">
<input type="hidden" id="posy" name="posy">
<input type="hidden" id="challenge" name="challenge">
<input type="hidden" id="C" name="C">
<input type="hidden" id="E" name="E">
<input type="hidden" id="M" name="M">
<table class="tbl_marcoFormularioExt" width="330">
<tr>
<td>
<asp:Label ID="lbl_usuario" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<asp:TextBox ID="txt_usuario" runat="server" Enabled="false" CssClass="txt">
</asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_claveAnterior" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<asp:TextBox ID="txt_claveAnterior" runat="server" TextMode="Password" CssClass="txt">
</asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID="rfv_claveAnterior" runat="server" ControlToValidate="txt_claveAnterior"
CssClass="lbl_mensaje" ForeColor="" ValidationGroup="inc_genClave" >*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_nuevaClave" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<asp:TextBox ID="txt_nuevaClave" runat="server" TextMode="Password" CssClass="txt">
</asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID="rfv_nuevaClave" runat="server" ControlToValidate="txt_nuevaClave"
CssClass="lbl_mensaje" ForeColor="" Display="Dynamic" ErrorMessage="*" SetFocusOnError="True" ValidationGroup="inc_genClave">*</asp:RequiredFieldValidator>

<asp:RegularExpressionValidator ID="revContrasenaSegura" runat="server" ControlToValidate="txt_nuevaClave"
CssClass="lbl_mensaje" ForeColor="" ValidationGroup="inc_genClave">*</asp:RegularExpressionValidator>

</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_confirmarClave" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<asp:TextBox ID="txt_confirmarClave" runat="server" TextMode="Password" CssClass="txt">
</asp:TextBox>
</td>
<td>
<asp:CompareValidator ID="cmv_confirmarClave" runat="server" ControlToCompare="txt_nuevaClave"
ControlToValidate="txt_confirmarClave" CssClass="lbl_mensaje" ForeColor=""   ValidationGroup="inc_genClave">*</asp:CompareValidator>
                
</td>
</tr>

<tr>
        <td>
        </td>
        <td>
            <asp:ValidationSummary ID="vlsCambio" runat="server" CssClass="lbl_mensaje" ForeColor=""
                ValidationGroup="inc_genClave" DisplayMode="List" />
            </td>
    </tr>
    
<tr>
<td>
</td>
<td colspan="1">
<bti:BotonImagen ID="btn_guardar" runat="server" CssClass="imb" ImageUrl="~/images/botones/aceptar.png"  ValidationGroup="inc_genClave"/>
</td>
</tr>
<tr>
<td>
</td>
<td colspan="1">
<asp:Label ID="lbl_claveIncorrecta" runat="server" CssClass="lbl_mensaje"></asp:Label>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="lbl_mensaje"
ForeColor="" />
</td>
</tr>
</table>

</asp:Panel>
</asp:View>
<asp:View ID="view_preferencias" runat="server" >
<table class="tbl_marcoFormularioExt"  width="330">
<tr>
<td>
<uc1:apariencia ID="apariencia1" runat="server" />
</td></tr>
</table>

</asp:View>

</asp:MultiView>
<br />
  <uc1:popup ID='popup1' runat='server' a_bol_visible='false' />
</asp:Content>
<asp:Content ContentPlaceHolderID="cph_tituloPagina" ID="content2" runat="server">
<asp:Label ID="lbl_titulo" CssClass="lbl_titulo" runat="server" Text="<%$ Resources:res_tituloPagina, forms_general_cambiarclave %>"></asp:Label>
</asp:Content>
