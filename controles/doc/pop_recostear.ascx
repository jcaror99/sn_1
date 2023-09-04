<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_recostear.ascx.vb"
Inherits="website.samm_componentes.controles_doc_pop_recostear" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<table>
<tr>
<td>
<asp:CheckBoxList ID="chb_tipoItem" runat="server" RepeatDirection="Vertical">
<asp:ListItem Value="act" Selected="False" Enabled="false" Text='<%$ Resources: res_metadata,ort_reportetecnico_reportetecnico %>'></asp:ListItem>
<asp:ListItem Value="rep" Selected="False" Text='<%$ Resources: res_metadata,cat_tipocatalogo_afectainventario %>'></asp:ListItem>
<asp:ListItem Value="gas" Selected="False" Text='<%$ Resources: res_metadata,gas_gasto_gasto %>'></asp:ListItem>
<asp:ListItem Value="orc" Selected="False" Text='<%$ Resources: res_metadata,doc_documento_ordencompra_documento_ordencompra %>'></asp:ListItem>
</asp:CheckBoxList>
</td>
</tr>
<tr>
<td align="center">
<cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="~/images/botones/aceptar.jpg"
CausesValidation="false" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_mensaje" runat="server" CssClass='lbl_mensaje'></asp:Label>
</td>
</tr>
</table>
