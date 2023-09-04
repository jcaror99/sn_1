<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="grilla.ascx.vb" Inherits="website.samm_controles.controles_grilla" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="Microsoft.Web.Preview" Namespace="Microsoft.Web.Preview.UI.Controls.WebParts"
    TagPrefix="cc2" %>

<script type="text/javascript">
//shortcut.add("Up",function() {
//	__doPostBack('ctl00$cph_grilla$griPrincipal$lnkArriba','');
//});
//shortcut.add("Down",function() {
//	__doPostBack('ctl00$cph_grilla$griPrincipal$lnkAbajo','');
//});
</script>
<asp:UpdatePanel ID="upp_grilla" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="False">
<ContentTemplate>


<table width="100%" runat="server" cellpadding="0" cellspacing="0">
    <tr>
        
        <td id="td_vistaHorizontal" runat="server">
            <table cellpadding="0" cellspacing="0" id="tbl_paginacion_vistaHorizontal" runat="server">
                <tr>
                    
                    <td style="white-space: nowrap" valign="middle">
                        <bti:BotonImagen ID="imbAnterior_vistaHorizontal" runat="server" ImageUrl="~/images/botones/pag_atras.png"
                            CausesValidation="False" />
                        <bti:BotonImagen ID="imbSiguiente_vistaHorizontal" runat="server" ImageUrl="~/images/botones/pag_adelante.png"
                            CausesValidation="False" />
                        &nbsp;&nbsp;
                    </td>
                    <td style="white-space: nowrap" valign="middle">
                        &nbsp;<asp:LinkButton ID="lnk_pagina1_vistaHorizontal" runat="server" CssClass="gri_paginacionGrande"
                            CausesValidation="false" CommandArgument="0">1</asp:LinkButton>
                        <asp:LinkButton ID="lnk_pagina2_vistaHorizontal" runat="server" CssClass="gri_paginacionGrande"
                            CausesValidation="false" CommandArgument="1">2</asp:LinkButton>
                        <asp:LinkButton ID="lnk_pagina3_vistaHorizontal" runat="server" CssClass="gri_paginacionGrande"
                            CausesValidation="false" CommandArgument="2">3</asp:LinkButton>
                        <asp:LinkButton ID="lnk_pagina4_vistaHorizontal" runat="server" CssClass="gri_paginacionGrande"
                            CausesValidation="false" CommandArgument="3">4</asp:LinkButton>
                        <asp:LinkButton ID="lnk_pagina5_vistaHorizontal" runat="server" CssClass="gri_paginacionGrande"
                            CausesValidation="false" CommandArgument="4">5</asp:LinkButton>
                        &nbsp;</td>
                    <td style="width: 50px; white-space: nowrap" valign="middle">
                        <asp:Label ID="lbl_registrosPagina_vistaHorizontal" runat="server" CssClass="lbl_paginacion"></asp:Label></td>
                    <td style="white-space: nowrap" valign="middle">
                        &nbsp;<asp:Label ID="lbl_NumeroRegistros_vistaHorizontal" runat="server" CssClass="lbl_paginacionGrande"></asp:Label>&nbsp;</td>
                    <td id="td_mensajeGrillaHorizontal" runat="server" class="lbl_mensajeGrilla" style="text-align: center">
                        <asp:TextBox ID="txt_mensajeGrilla_vistaHorizontal" runat="server" CssClass="lbl_mensajeGrilla" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </td>
        
    </tr>
    <tr>
        <td id="td_grilla" runat="server" style="height: 100%">
            <div id="div_grilla" runat="server" class="div_grilla">
                <asp:GridView ID="grvLista" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" UseAccessibleHeader="False" BorderStyle="None">
                    <EmptyDataTemplate>
                    </EmptyDataTemplate>
                    <Columns>
                        <asp:CommandField ButtonType="Button" ShowSelectButton="True">
                            <HeaderStyle CssClass="invisible" />
                            <ItemStyle CssClass="invisible" />
                            <ControlStyle CssClass="invisible" />
                        </asp:CommandField>
                        <asp:TemplateField Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblId" runat="server" Visible="false" Text='<%#Bind("id") %>'></asp:Label>
                                    <asp:ImageButton ID="imb_seleccionador" runat="server" ImageUrl="../../images/botones/seleccionargrilla.gif" 
                                        style="cursor: pointer;border:none;" CommandName="select" CausesValidation="false"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Image ID="img_prioridad" runat="server" ImageUrl='<%# "../../images/iconos/" & Eval("ico_prioridad") & ".gif" %>'
                                    ToolTip='<%# eval("tool_prioridad") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Image ID="img_garantia" runat="server" ImageUrl="~/images/iconos/garantia_gri.gif"
                                    Visible='<%#Eval("ico_garantia") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle CssClass="gri_pie" />
                    <RowStyle CssClass="gri_item" />
                    <PagerStyle CssClass="gri_paginacion" />
                    <HeaderStyle CssClass="gri_titulo" />
                    <AlternatingRowStyle CssClass="gri_itemAlterno" />
                    <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                </asp:GridView>
                <table cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                        <asp:Label ID="lbl_muchosRegistros" runat="server" CssClass="lbl_mensaje"></asp:Label>
                        <asp:Label ID="td_br" runat="server" Visible="false" Text="<br/>"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
    </td>
       
    </tr>
    <tr class="tr_grPie">
        <td id="td_vistaVertical" runat="server" class="td_grPie">
            <table cellpadding="0" cellspacing="0" border="0" id="tbl_paginacion_vistaVertical" runat="server">
                <tr>
                <td style="white-space: nowrap" valign="middle">
                        <bti:BotonImagen ID="imbOrdenColumnas" runat="server" ImageUrl="~/images/botones/orden.png"
                            CausesValidation="False" />
                        <bti:BotonImagen ID="imbImportar" runat="server" ImageUrl="~/images/botones/importar.png"
                            CausesValidation="False" />
                       <bti:BotonImagen ID="imbExportar" runat="server" ImageUrl="~/images/botones/exportar.png"
                            CausesValidation="False" />
                    </td>
                    <td align="left" style="white-space: nowrap">
                        &nbsp;
                        <bti:BotonImagen ID="imbAnterior_vistaVertical" runat="server" ImageUrl="~/images/botones/pag_atras.png"
                            CausesValidation="False" />
                        <bti:BotonImagen ID="imbSiguiente_vistaVertical" runat="server" ImageUrl="~/images/botones/pag_adelante.png"
                            CausesValidation="False" />&nbsp;</td>
                    <td class="td_grPags">
                        
                        <asp:LinkButton ID="lnk_pagina1_vistaVertical" runat="server" CssClass="gri_paginacionGrande"
                            CausesValidation="false" CommandArgument="0">1</asp:LinkButton>
                        <asp:LinkButton ID="lnk_pagina2_vistaVertical" runat="server" CssClass="gri_paginacionGrande"
                            CausesValidation="false" CommandArgument="1">2</asp:LinkButton>
                        <asp:LinkButton ID="lnk_pagina3_vistaVertical" runat="server" CssClass="gri_paginacionGrande"
                            CausesValidation="false" CommandArgument="2">3</asp:LinkButton>
                        <asp:LinkButton ID="lnk_pagina4_vistaVertical" runat="server" CssClass="gri_paginacionGrande"
                            CausesValidation="false" CommandArgument="3">4</asp:LinkButton>
                        <asp:LinkButton ID="lnk_pagina5_vistaVertical" runat="server" CssClass="gri_paginacionGrande"
                            CausesValidation="false" CommandArgument="4">5</asp:LinkButton>
                        </td>
                    <td align="left" style="white-space: nowrap">
                        <asp:Label ID="lbl_registrosPagina_vistaVertical" runat="server" CssClass="lbl_paginacion"></asp:Label>&nbsp;</td>
                    <td align="left" style="white-space: nowrap">
                        &nbsp;<asp:Label ID="lbl_NumeroRegistros_vistaVertical" runat="server" CssClass="lbl_paginacionGrande"></asp:Label></td>
                    <td id="td_mensajeGrillaVertical" runat="server">
                        &nbsp;
                        <asp:TextBox ID="txt_mensajeGrilla_vistaVertical" runat="server" CssClass="lbl_mensajeGrilla" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </td>
       
    </tr>
</table>

<asp:LinkButton ID="lnkArriba" runat="server" CssClass="invisible">arriba</asp:LinkButton>
<asp:LinkButton ID="lnkAbajo" runat="server" CssClass="invisible">abajo</asp:LinkButton><%--<div style="DISPLAY: none" id="divModal" class="modalBackground" runat="server"></div>--%>
<asp:HiddenField ID="hddPosicionScroll" runat="server" /><asp:HiddenField ID="hdd_anchoMensajes" runat="server" />

</ContentTemplate>
</asp:UpdatePanel>
