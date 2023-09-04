﻿<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_tarifasRango.ascx.vb" Inherits="website.samm_componentes.controles_cat_inc_tarifasRango" %><%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %><%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %><table><tr><td><bti:BotonImagen ID="bti_nuevo" runat="server" ImageUrl="../../images/botones/agregar.gif" CausesValidation="false" /><bti:BotonImagen ID="bti_eliminar" runat="server" ImageUrl="../../images/botones/quitar.gif" /></td></tr><tr><td><asp:GridView ID="grd_tarifas" runat="server" AutoGenerateColumns="False"><EmptyDataTemplate><asp:Label ID="lbl" runat="server" CssClass="lbl_mensaje" Text='<%$Resources:res_mensajes,grillaVacia %>'></asp:Label></EmptyDataTemplate><Columns><asp:TemplateField HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible" ><ItemTemplate><asp:Label ID="lbl_id" runat="server" Text='<%#eval("id") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:CommandField ButtonType="Image" ShowSelectButton="True" SelectImageUrl="~/images/botones/seleccionarGrilla.gif" /><asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,cat_tarifarango_rangoinicio %>'><ItemTemplate><asp:TextBox ID='txt_rangoInicio' runat='server' CssClass='txt_numero' Text='<%# eval("rangoInicio") %>' ValidationGroup="precio"></asp:TextBox><act:FilteredTextBoxExtender ID='ftb_rangoInicio' runat='server' TargetControlID='txt_rangoInicio' FilterType='Numbers,Custom' /><asp:RequiredFieldValidator ID="rfv_rangoInicio" runat="server" ControlToValidate="txt_rangoInicio" CssClass="lbl_mensje" ValidationGroup="precio">*</asp:RequiredFieldValidator></ItemTemplate><ItemStyle HorizontalAlign="Center" /></asp:TemplateField><asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,cat_tarifarango_rangofin %>'><ItemTemplate><asp:TextBox ID='txt_rangoFin' runat='server' CssClass='txt_numero' Text='<%# eval("rangoFin") %>' ValidationGroup="precio"></asp:TextBox><act:FilteredTextBoxExtender ID='ftb_rangoFin' runat='server' TargetControlID='txt_rangoFin' FilterType='Numbers,Custom' /><asp:RequiredFieldValidator ID="rfv_rangoFin" runat="server" ControlToValidate="txt_rangoFin" CssClass="lbl_mensje" ValidationGroup="precio">*</asp:RequiredFieldValidator></ItemTemplate><ItemStyle HorizontalAlign="Center" /></asp:TemplateField><asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,cat_tarifarango_precio%>'><ItemTemplate><asp:TextBox ID="txt_precio" runat="server" CssClass='txt_precio' Text='<%# eval("precio") %>' ValidationGroup="precio"></asp:TextBox><asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="txt_precio" CssClass="lbl_mensje" ValidationGroup="precio">*</asp:RequiredFieldValidator><act:FilteredTextBoxExtender ID='ftb_precio' runat='server' TargetControlID='txt_precio' FilterType='Numbers,Custom' /></ItemTemplate><ItemStyle HorizontalAlign="Center" /></asp:TemplateField></Columns><FooterStyle CssClass="gri_pie" /><RowStyle CssClass="gri_item" /><PagerStyle CssClass="gri_paginacion" /><HeaderStyle CssClass="gri_titulo" /><AlternatingRowStyle CssClass="gri_itemAlterno" /><SelectedRowStyle CssClass="gri_itemSeleccionado" /></asp:GridView></td></tr><tr><td><bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="true" ImageUrl="../../images/botones/aceptar.png" ValidationGroup="precio" /><asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label></td></tr></table>