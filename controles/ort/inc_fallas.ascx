<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_fallas.ascx.vb" Inherits="website.samm_componentes.controles_ort_inc_fallas" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
<tr>
<td>
<asp:CheckBox ID="chb_fallas" runat="server" 
AutoPostBack="True" Checked="False" CssClass="chb"></asp:CheckBox>
</td>
</tr>
<tr>
<td>
<asp:Panel ID="pnl_fallas" runat ="server" CssClass="pnl" >
<asp:TreeView ID="trv_fallas" runat="server" ShowCheckBoxes= "All"  ></asp:TreeView> 
</asp:Panel> 
</td>
</tr> 
<tr>
<td>
<bti:BotonImagen ID="bti_aceptar" runat ="server" CausesValidation="true"  ValidationGroup="ort_fallas" ImageUrl="../../images/botones/aceptar.png" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_mensaje" runat="server"  CssClass="lbl_mensaje" > </asp:Label> 
</td>
</tr>
</table>