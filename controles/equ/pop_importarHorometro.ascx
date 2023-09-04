<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_importarHorometro.ascx.vb" 
Inherits="website.samm_componentes.controles_equ_pop_importarHorometro" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<table class="tbl_marcoFormulario">
<tr>
<td>
<asp:FileUpload ID="ful_archivo" runat="server" CssClass="ful" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_hoja" runat="server" CssClass="lbl"></asp:Label>
</td>
</tr>
<tr>
<td>
<asp:TextBox ID="txt_hoja" runat="server" CssClass="txt" Text="Hoja1"></asp:TextBox><asp:RequiredFieldValidator
ID="rfv_hoja_1" runat="server" ErrorMessage="*" ValidationGroup="form" ControlToValidate="txt_hoja"></asp:RequiredFieldValidator><asp:RequiredFieldValidator
ID="rfv_hoja_2" runat="server" ErrorMessage="*" ValidationGroup="hoja" ControlToValidate="txt_hoja"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
<cc1:BotonImagen ID="imbAceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
CausesValidation="true" ValidationGroup="hoja" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_serial" runat="server" CssClass="lbl" ></asp:Label>
</td>
<td>
<asp:DropDownList ID="drp_serial" runat="server" CssClass="drp">
</asp:DropDownList>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_serial' runat='server' ControlToValidate='drp_serial'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_horometro" runat="server" CssClass="lbl" ></asp:Label>
</td>
<td>
<asp:DropDownList ID="drp_horometro" runat="server" CssClass="drp">
</asp:DropDownList>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_horometro' runat='server' ControlToValidate='drp_horometro'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_fechaLectura" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<asp:DropDownList ID="drp_fechaLectura" runat="server" CssClass="drp">
</asp:DropDownList>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_fechaLectura' runat='server' ControlToValidate='drp_fechaLectura'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
<cc1:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
CausesValidation="true" ValidationGroup="form" />
</td>
</tr>
<tr>
<td>
<asp:TextBox BorderWidth="0px" ID="txtLog" runat="server" CssClass="txt_multilinea"
ReadOnly="True" TextMode="MultiLine" Width="300px" Font-Size="10px" ForeColor="#cc6600"></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:HyperLink ID="hprLog" runat="server" CssClass="comunNARANJA" Target="_blank"></asp:HyperLink>
</td>
</tr>
</table>