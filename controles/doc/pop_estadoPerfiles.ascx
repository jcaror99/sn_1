﻿<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_estadoPerfiles.ascx.vb"Inherits="website.samm_componentes.controles_doc_pop_estadoPerfiles" %><%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %><%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %><%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %><%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %><table><tr><td><asp:CheckBoxList ID="cbl_estados" runat="server" DataTextField="estado" DataValueField="id" RepeatColumns="4"></asp:CheckBoxList></td></tr><tr><td colspan='2'><bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"/></td></tr><tr><td colspan='2'><asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label></td></tr></table>