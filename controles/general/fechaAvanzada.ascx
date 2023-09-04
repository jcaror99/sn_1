<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="fechaAvanzada.ascx.vb"
    Inherits="website.samm_controles.controles_general_fechaAvanzada" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="act" %>
<div id="dv_fecha" runat="server">
    <asp:TextBox ID="txt_fecha" runat="server" CssClass="txt_fecha"></asp:TextBox>
    <asp:TextBox ID="txt_hora" runat="server" CssClass="txt_hora"></asp:TextBox>
    <asp:RangeValidator ID="rgv_fecha" runat="server"></asp:RangeValidator>
    <asp:RequiredFieldValidator ID="rfv_hora" runat="server" ControlToValidate="txt_hora" SetFocusOnError="True">*
    </asp:RequiredFieldValidator>
    <act:MaskedEditValidator ID="mev_hora" runat="server" ControlExtender="mee_hora" ControlToValidate="txt_hora" MaximumValue="23:59" MinimumValue="00:00" CssClass="lbl_mensaje" ForeColor="">
    </act:MaskedEditValidator><act:MaskedEditExtender ID="mee_hora" runat="server" Mask="99:99" MaskType="Time" TargetControlID="txt_hora">
    </act:MaskedEditExtender>
    <act:CalendarExtender ID="cal_fecha" runat="server" TargetControlID="txt_fecha" Enabled="True">
    </act:CalendarExtender>
    <asp:RequiredFieldValidator ID="rfv_fecha" runat="server" ControlToValidate="txt_fecha" SetFocusOnError="True">*
    </asp:RequiredFieldValidator>
</div>
