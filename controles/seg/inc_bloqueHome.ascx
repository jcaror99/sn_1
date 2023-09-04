<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_bloqueHome.ascx.vb" Inherits="website.samm_componentes.controles_seguridad_inc_bloqueHome" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<asp:CheckBoxList ID="cbl_bloquesHome" runat="server" CssClass="cbl">
</asp:CheckBoxList>
<bti:BotonImagen ID="btn_acepta" runat="server" CssClass="imb" ImageUrl="~/images/botones/aceptar.png"/>