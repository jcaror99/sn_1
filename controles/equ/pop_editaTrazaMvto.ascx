<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_editaTrazaMvto.ascx.vb"
Inherits="website.samm_componentes.controles_equ_pop_editaTrazaMvto" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<table>
<tr>
<td colspan="2">
<asp:Label ID="lblAdvertencia" runat="server" Text="" CssClass="lbl"></asp:Label>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lblCliente" runat="server" Text="$Cliente"  CssClass="lbl"></asp:Label>
</td>
<td>
<uc1:busquedaAvanzada ID="busCliente" runat="server" a_str_tabla="ter_tercero" />
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lblSucursal" runat="server" Text="$Sucursal" CssClass="lbl" ></asp:Label>
</td>
<td>
<uc1:busquedaAvanzada ID="busSucursal" runat="server" a_str_tabla="ter_sucursal"/>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lblEquipo" runat="server" Text="$Equipo Padre:"  CssClass="lbl"></asp:Label>
</td>
<td>
<uc1:busquedaAvanzada ID="busEquipoPadre" runat="server" a_str_tabla="equ_equipo"/>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lblFecha" runat="server" Text="$Fecha" CssClass="lbl"></asp:Label>
</td>
<td>
<uc2:fechaAvanzada ID="fec_fechaTraza" runat="server" />
</td>
</tr>

<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_horometro' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_horometro' runat='server' MaxLength='100' CssClass='txt'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_horometro' runat='server' ControlToValidate='txt_horometro'
    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>

</tr>

<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_ubicacion' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_ubicacion' runat='server' MaxLength='100' CssClass='txt'></asp:TextBox>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_contacto' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_contacto' runat='server' MaxLength='100' CssClass='txt'></asp:TextBox>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_telefono' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_telefono' runat='server' MaxLength='100' CssClass='txt'></asp:TextBox>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_zona' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID="bus_zona" runat="server" a_str_tabla="gen_zona"/>
</td>
</tr>
<tr>
<td>
&nbsp;
</td>
<td>
<cc1:BotonImagen ID="btiAceptar" runat="server" ImageUrl="~/images/botones/aceptar.jpg" ValidationGroup='form' />
<br />
<asp:Label ID="lbl_mensaje" runat="server" Text="" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
</table>
