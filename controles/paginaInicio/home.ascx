﻿<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="home.ascx.vb" Inherits="website.samm_componentes.controles_home" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName="tabsPersonalizados"
    TagPrefix="uc3" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName="tabs" TagPrefix="uc1" %>
<%@ Register Src="inc_grafica.ascx" TagName="canvas" TagPrefix="can" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc4" %>
<asp:UpdatePanel ID="upn_home" runat="server">
    <ContentTemplate>
        <table>
            <tr>
                <td valign="top">
                    <asp:Image ID="img_home" runat="server" Visible="False" />
                </td>
                <td>
                    <table id="tbl_filtro" runat="server" style="background: #ffffff;">
                        <tr>
                            <td>
                                <asp:GridView ID="grd_buscar" runat="server" AutoGenerateColumns="False" GridLines="None"
                                    CellPadding="3" ShowHeader="false" BackColor="white">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_codigo" runat="server" CssClass="invisible" Text='<%# eval("codigo") %>'></asp:Label>
                                                <asp:Label ID="lbl_campo" runat="server" CssClass="invisible" Text='<%# eval("campo") %>'></asp:Label>
                                                <asp:Label ID="lbl_buscar" runat="server" CssClass="lbl" Text='<%# eval("label") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Right" />
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <table>
                                                    <tr runat="server" id="tr_texto" visible='<%# IIF(eval("tipo")=samm_logica.enu_tipoCampo.texto,true,false) %>'>
                                                        <td>
                                                            <asp:TextBox ID="txt_buscar" runat="server" CssClass="txt_formulario_bus"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr runat="server" id="tr_numero" visible='<%# IIF(eval("tipo")=samm_logica.enu_tipoCampo.numero,true,false) %>'>
                                                        <td>
                                                            <asp:TextBox ID="txt_numero" runat="server" CssClass="txt_numero_bus"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr id="tr_drop" runat="server" visible='<%# IIF(eval("tipo")=samm_logica.enu_tipoCampo.foranea,true,false) %>'>
                                                        <td>
                                                            <uc4:busquedaAvanzada ID="bus_buscar" Visible='<%# IIF(eval("tipo")=samm_logica.enu_tipoCampo.foranea,true,false) %>'
                                                                a_str_tabla='<% # eval("tabla") %>' CssClass="_bus" runat="server" />
                                                        </td>
                                                    </tr>
                                                    <tr id="tr_fecha" runat="server" visible='<%# IIF(eval("tipo")=samm_logica.enu_tipoCampo.fecha,true,false) %>'>
                                                        <td>
                                                            <table>
                                                                <tr>
                                                                    <td style="white-space: nowrap;">
                                                                        <asp:Label ID="lbl_desde" runat="server" CssClass='lbl' Text='<%$Resources:res_controles,desde %>'></asp:Label>
                                                                    </td>
                                                                    <td style="white-space: nowrap;">
                                                                        <uc2:fechaAvanzada ID="fec_buscar" runat="server" CssClass='txt_fecha_bus' CssClassHora='txt_hora_bus'
                                                                            a_bln_obligatorio="false" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="lbl_hasta" runat="server" CssClass='lbl' Text='<%$Resources:res_controles,a %>'></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <uc2:fechaAvanzada ID="fec_buscar1" runat="server" CssClass='txt_fecha_bus' CssClassHora='txt_hora_bus'
                                                                            a_bln_obligatorio="false" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr id="tr_bit" runat="server" visible='<%# IIF(eval("tipo")=samm_logica.enu_tipoCampo.bit,true,false) %>'>
                                                        <td>
                                                            <asp:RadioButtonList ID="rbl_buscar" runat="server" CssClass='lbl' RepeatDirection="Horizontal"
                                                                CellPadding="0" CellSpacing="0" RepeatLayout="Flow">
                                                                <asp:ListItem Value="1" Text='<%$Resources:res_etiquetas,si %>'></asp:ListItem>
                                                                <asp:ListItem Value="0" Text='<%$Resources:res_etiquetas,no %>'></asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </td>
                                                    </tr>
                                                    <tr runat="server" visible="false">
                                                        <td>
                                                            <asp:Label ID="lbl_atributo" runat="server" Visible="false" Text='<%# eval("atributo") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Left" />
                                        </asp:TemplateField>
                                        <asp:TemplateField></asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <cc1:BotonImagen ID="bti_filtro" runat="server" CausesValidation="false" ImageUrl="~/images/botones/aceptar.jpg" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:LinkButton ID="lnb_filtro" runat="server" style="display:none"  ></asp:LinkButton>
                    <table>
                        <tr>
                            <td>
                                <uc3:tabsPersonalizados ID="tbp" runat="server" />
                            </td>
                        </tr>
                        <tr id="tr_gri" runat="server">
                            <td>
                                <asp:GridView ID="grd_link" runat="server" AutoGenerateColumns="False" ShowHeader='false'
                                    GridLines="None">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <table >
                                                    <tr>
                                                        <td>
                                                            <asp:Image runat="server" ID="img_prioridad" ImageUrl='<%# eval("img_prioridad") %>'
                                                                Visible='<%# eval("img_visible") %>' Width="16" Height="16" />
                                                        </td>
                                                        <td width="110px">
                                                            <asp:HyperLink ID="lnk" runat="server" CssClass="lnk" NavigateUrl='<%#eval("link")%>'
                                                                ToolTip='<%#eval("tooltip")%>' Text='<%#eval("texto")%>'></asp:HyperLink>
                                                        </td>
                                                        <td title="<%#eval("cantidad")%>" style="width: 103px; border-width: 1px; border-style: solid; border-color: #808080; text-align: left;" onclick="javascritp:window.open('<%#eval("link")%>','','location=1,status=1,scrollbars=1,toolbar=1');" >
                                                            <table id="tbl_barradetalle" runat="server" cellspacing="0">
                                                                <tr>
                                                                    <td id="td_izq" runat="server" class="htdizq" width='<%#CInt(eval("por"))%>' height="10px" bgcolor='<%#eval("color")%>'
                                                                        style="display: block; text-align: center; color: white" >
                                                                        <%#IIf(Eval("por") > 50, Eval("porh") & "%", "")%>
                                                                    </td>
                                                                    <td id="td_der" runat="server"  class="htdder" style="text-align: right;" width='<%# 100-Eval("por")%>'>
                                                                        <%#IIf(Eval("por") < 50, Eval("porh") & "%", "")%>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ItemStyle-HorizontalAlign="Right">
                                            <ItemTemplate>
                                                <a href='<%# eval("link") %>' title='<%# eval("cantidad") %>' class='<%# eval("thomeAutomatico") %>'  style="display: inline-block;color: #747474;" tabla='<%# eval("tabla") %>' filtro="<%#eval("filtro")%>" porh='<%#eval("porh")%>'  por='<%#eval("por")%>' 
                                                totalr='<%#eval("tregistros")%>'  
                                                mayorr='<%#eval("tmayor")%>' 
                                                idbh='<%#eval("tidbh")%>' 
                                                detalleRegistros='<%#eval("tdetalleRegistro")%>'  
                                                agrupado='<%#eval("agrupado")%>'
                                                filtrogrupo="<%#eval("filtroGrupo")%>"
                                                btnhome='<%#Eval("btnhome")%>'>  
                                                    <%# eval("cantidad")%>
                                                </a>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <can:canvas ID="can_canvas" runat="server" />
                            </td>
                        </tr>
                        <tr id="tr_texto" runat="server">
                            <td>
                                <asp:GridView ID="grd_texto" runat="server" AutoGenerateColumns="False" ShowHeader='false'
                                    GridLines="None">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:Image runat="server" ID="img_prioridad" ImageUrl='<%# eval("img_prioridad") %>'
                                                    Visible='<%# eval("img_visible") %>' Width="16" Height="16" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:HyperLink ID="lnk_item" runat="server" CssClass="lnk" NavigateUrl='<%# eval("link") %>'
                                                    Text='<%# eval("texto") %>' ToolTip='<%#eval("tooltip")%>'></asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ItemStyle-HorizontalAlign="Left">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="lnk_cantidad" runat="server" CssClass='<%# "lnk " & eval("thomeAutomatico") %>'     NavigateUrl='<%# eval("link") %>'
                                                    Text='<%# eval("cantidad") %>' Tabla='<%# eval("tabla") %>' Filtro='<%#eval("filtro")%>'  
                                                    detalleRegistros='<%#eval("tdetalleRegistro")%>' 
                                                    agrupado='<%#eval("agrupado")%>'
                                                    filtrogrupo='<%#eval("filtroGrupo")%>'
                                                    btnhome='<%#Eval("btnhome")%>'>
                                                    </asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </ContentTemplate>
</asp:UpdatePanel>
