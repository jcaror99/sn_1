<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="paletaColores.ascx.vb"
Inherits="website.samm_controles.controles_general_paletaColores" %>
<link href="../../css/color_picker.css" rel="stylesheet" type="text/css" />
<table>
<tr>
<td>
<asp:TextBox ID="txt_principal" runat="server" CssClass="txt" MaxLength="6"></asp:TextBox>
</td>
<td>
<div style="float: left">
<a runat="server" id="referencia" href="javascript:void(0);" style="text-decoration: none;">
<div id="myshowcolor" runat="server" style="width: 15px; height: 15px; border: 1px solid black;">
</div>
</a>
</div>
<asp:RequiredFieldValidator ID="rfv_texto" runat="server" ControlToValidate="txt_principal"
Enabled="false">*</asp:RequiredFieldValidator>
</td>
</tr>
</table>
<script language="Javascript" type="text/javascript">

function myokfunc(){
}
//init colorpicker:
$(document).ready(
function()
{
$.ColorPicker.init();
}
);
</script>

