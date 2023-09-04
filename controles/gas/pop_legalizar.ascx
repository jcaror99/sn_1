<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_legalizar.ascx.vb" Inherits="website.samm_componentes.controles_gas_pop_legalizar" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<asp:Label ID="Label1" runat="server" Text='<%$Resources:res_etiquetas_gas,confirmarLegalizar %>'></asp:Label><br />
<cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="~/images/botones/aceptar.jpg" CausesValidation="False" />
<br />
<asp:Label ID="lblMensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
