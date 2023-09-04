﻿<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_configuracionAtributos.ascx.vb" Inherits="website.samm_componentes.controles_cat_pop_configuracionAtributos" %><%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %><table><tr><td><asp:GridView ID="gri_atributos" runat="server" AutoGenerateColumns="False"><Columns><asp:TemplateField HeaderText="Atributo" ItemStyle-HorizontalAlign="Center"><ItemTemplate><asp:Label ID="lbl_atributo" runat="server" Text='<%# eval("cat_atributo_atributo") %>' CssClass="lbl"></asp:Label><asp:Label ID="lblId" runat="server" Text='<%# eval("id") %>' Visible="false"></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField HeaderText="Valor minimo"><ItemTemplate><asp:TextBox ID="txt_valorMinimo" runat="server" Text='<%# IIF(eval("valorMinimo")=0,eval("cat_atributo_valorminimo"),eval("valorMinimo")) %>' CssClass="txt"></asp:TextBox></ItemTemplate></asp:TemplateField><asp:TemplateField HeaderText="Valor Maximo"><ItemTemplate><asp:TextBox ID="txt_valorMaximo" runat="server" Text='<%# IIF(eval("valorMaximo")=0,eval("cat_atributo_valorMaximo"),eval("valorMaximo")) %>' CssClass="txt"></asp:TextBox></ItemTemplate></asp:TemplateField><asp:TemplateField HeaderText="Cerrar OT" ItemStyle-HorizontalAlign="Center"><ItemTemplate><asp:CheckBox ID="chb_cierreot" runat="server" Checked='<%# eval("bloquearCierreOT") %>' CssClass="chb" /></ItemTemplate></asp:TemplateField></Columns><FooterStyle CssClass="gri_pie" /><RowStyle CssClass="gri_item" /><PagerStyle CssClass="gri_paginacion" /><HeaderStyle CssClass="gri_titulo" /><AlternatingRowStyle CssClass="gri_itemAlterno" /><SelectedRowStyle CssClass="gri_itemSeleccionado" /></asp:GridView></td></tr><tr><td><bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.png" CausesValidation="false" /></td></tr><tr><td><asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label></td></tr> </table>