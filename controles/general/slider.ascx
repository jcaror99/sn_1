<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="slider.ascx.vb" Inherits="website.samm_controles.controles_general_slider" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>                        

    <act:SliderExtender ID="SliderExtender2" runat="server" BehaviorID="Slider1" BoundControlID="txtDuracion"
        EnableHandleAnimation="True" Maximum="24" TargetControlID="Slider2" 
        Decimals="2" Steps="2400">
    </act:SliderExtender>
    
    <asp:TextBox ID="txtDuracion" runat="server" CssClass="txt_hora"></asp:TextBox>&nbsp;
    <asp:Label ID="lbl_horafinal" Text="<%$Resources:res_etiquetas_ort, horafinal_slider%>" runat="server" CssClass="lbl"></asp:Label>
    <asp:TextBox ID="txt_horaFin" runat="server" CssClass="txt_hora"></asp:TextBox> 
    <asp:TextBox ID="txt_horaAmPm" runat="server" Enabled="false" CssClass="lbl"></asp:TextBox><br />
    <act:MaskedEditValidator ID="mev_hora" runat="server" ControlExtender="mee_hora" ControlToValidate="txt_horaFin"
        MaximumValue="23:59" MinimumValue="00:00" CssClass="lbl_mensaje" ForeColor=""></act:MaskedEditValidator>
    <act:MaskedEditExtender ID="mee_hora" runat="server" Mask="99:99" MaskType="Time" TargetControlID="txt_horaFin">
    </act:MaskedEditExtender>
   
    <asp:TextBox ID="Slider2" runat="server">
    </asp:TextBox>
    <asp:Image ID="img_cargandoo" runat="server" style="display:none;" ImageUrl="~/images/iconos/loading3.gif" />
    <asp:Label ID="lbl_disponible" runat="server" CssClass="lbl_mensaje"></asp:Label>