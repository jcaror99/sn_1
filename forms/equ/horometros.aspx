<%@ Page Language="VB" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master"
AutoEventWireup="false" CodeBehind="horometros.aspx.vb" Inherits="website.samm_web.forms_equ_horometros" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada"
TagPrefix="bus" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada"
TagPrefix="fec" %>
<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="textoAvanzado"
TagPrefix="tex" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/calendario4meses.ascx" TagName="calendario4meses"
TagPrefix="uc4" %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="uc5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" runat="Server">
<asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo' ></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" runat="Server">
<table>
<tr>
<td valign="top">
<uc5:bocadillo ID="bocadillo1" runat="server" />
<uc4:calendario4meses ID="cal_calendario" runat="server" />
</td>
<td valign="top">
<table class="tbl_marcoFormulario">
<tr>
    <td>
        <table>
            <tr>
                <td class='td_lblFormulario'>
                    <asp:Label ID='lbl_id_tercero' runat='server' CssClass='lbl'></asp:Label>
                </td>
                <td class='td_controlesFormulario'>
                    <bus:busquedaAvanzada ID='bus_tercero' runat='server' a_str_tabla='ter_tercero' a_bol_postBack="true" />
                </td>
                <td class='td_lblFormulario'>
                    <asp:Label ID='lbl_id_estadoEquipo' runat='server' CssClass='lbl'></asp:Label>
                </td>
                <td class='td_controlesFormulario'>
                    <bus:busquedaAvanzada ID='bus_estadoEquipo' runat='server' a_str_tabla='equ_estadoEquipo' />
                </td>
            </tr>
            <tr>
                <td class='td_lblFormulario'>
                    <asp:Label ID='lbl_id_sucursal' runat='server' CssClass='lbl'></asp:Label>
                </td>
                <td class='td_controlesFormulario'>
                    <bus:busquedaAvanzada ID='bus_sucursal' runat='server' a_str_tabla='ter_sucursal' />
                </td>
                <td class='td_lblFormulario'>
                    <asp:Label ID='lbl_id_catalogo_equipo' runat='server' CssClass='lbl'></asp:Label>
                </td>
                <td class='td_controlesFormulario'>
                    <bus:busquedaavanzada id='bus_catalogo_equipo' runat='server' a_str_tabla='cat_catalogo.equipo' 
                    a_str_campo="catalogo.equipo,cat_catalogo_equipo_catalogo_codigo,cat_catalogo_equipo_codigoInventario" />
                </td>
            </tr>
            <tr>
                <td class='td_lblFormulario'>
                    <asp:Label ID='lbl_id_zona' runat='server' CssClass='lbl'></asp:Label>
                </td>
                <td class='td_controlesFormulario'>
                    <bus:busquedaAvanzada ID='bus_zona' runat='server' a_str_tabla='gen_zona'/>
                </td>
                <td class='td_lblFormulario'>
                    <asp:Label ID='lbl_id_familia' runat='server' CssClass='lbl'></asp:Label>
                </td>
                <td class='td_controlesFormulario'>
                    <bus:busquedaAvanzada ID='bus_familia' runat='server' a_str_tabla='gen_familia' />
                </td>
            </tr>
            <tr>
                <td colspan="4" align="center">
                    <cc1:BotonImagen ID='bti_filtro' runat='server' ImageUrl='../../images/botones/aceptar.png'
                        CssClass='imb' />
                </td>
            </tr>
            <tr>
                <td colspan="4" align="center">
                    <asp:Label ID="lbl_mensajeFiltro" runat="server" CssClass="lbl_mensaje"></asp:Label>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td>
        <table>
            <tr>
                <td class='td_lblFormulario'>
                    <asp:Label ID='lbl_ultimaLectura_hh' runat='server' CssClass='lblobligatorio'></asp:Label>
                </td>
                <td class='td_controlesFormulario'>
                    <fec:fechaAvanzada ID='fec_ultimaLectura_fh' runat='server' a_str_prefijo='hh' a_bln_obligatorio='true'
                        a_str_grupoValidacion="form"></fec:fechaAvanzada>
                </td>
                <td>
                <asp:HyperLink ID="hyp_importarHorometro" runat="server" CssClass='lnk'></asp:HyperLink>
                </td>
            </tr>
        </table>
    </td>
    </tr>
<tr>
    <td>
        <table>
            <tr>
                <td>
                    <asp:GridView ID="grd_horometros" runat="server" AutoGenerateColumns="false">
                        <Columns>
                            <asp:TemplateField HeaderText='<% $ Resources: res_campoGrilla,equ_equipo_equipo %>'>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id")%>' CssClass="invisible"></asp:Label>
                                    <asp:HyperLink ID="hyp_equipo" runat="server" CssClass='lnk' Text='<%# eval("equipo")%>' NavigateUrl='<%# "equ_equipo.aspx?id=" & eval("id") %>'></asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <cc1:BotonImagen ID="bti_mostrarHorometros" runat="server" CssClass="imb" 
                                        ImageUrl="../../images/botones/equ_mostrarHorometro.gif" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText='<%$Resources:res_etiquetas,lunes %>' ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:TextBox ID="txt_lunes" runat="server" CssClass="txt_itemGrilla" Width="60"></asp:TextBox>
                                    <act:FilteredTextBoxExtender ID='ftb_lunes' runat='server' TargetControlID='txt_lunes' FilterType='Numbers,Custom' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText='<%$Resources:res_etiquetas,martes %>' ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:TextBox ID="txt_martes" runat="server" CssClass="txt_itemGrilla" Width="60"></asp:TextBox>
                                    <act:FilteredTextBoxExtender ID='ftb_martes' runat='server' TargetControlID='txt_martes' FilterType='Numbers,Custom' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText='<%$Resources:res_etiquetas,miercoles %>' ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:TextBox ID="txt_miercoles" runat="server" CssClass="txt_itemGrilla" Width="60"></asp:TextBox>
                                    <act:FilteredTextBoxExtender ID='ftb_miercoles' runat='server' TargetControlID='txt_miercoles' FilterType='Numbers,Custom' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText='<%$Resources:res_etiquetas,jueves %>' ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:TextBox ID="txt_jueves" runat="server" CssClass="txt_itemGrilla" Width="60"></asp:TextBox>
                                    <act:FilteredTextBoxExtender ID='ftb_jueves' runat='server' TargetControlID='txt_jueves' FilterType='Numbers,Custom' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText='<%$Resources:res_etiquetas,viernes %>' ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:TextBox ID="txt_viernes" runat="server" CssClass="txt_itemGrilla" Width="60"></asp:TextBox>
                                    <act:FilteredTextBoxExtender ID='ftb_viernes' runat='server' TargetControlID='txt_viernes' FilterType='Numbers,Custom' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText='<%$Resources:res_etiquetas,sabado %>' ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:TextBox ID="txt_sabado" runat="server" CssClass="txt_itemGrilla" Width="60"></asp:TextBox>
                                    <act:FilteredTextBoxExtender ID='ftb_sabado' runat='server' TargetControlID='txt_sabado' FilterType='Numbers,Custom' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText='<%$Resources:res_etiquetas,domingo %>' ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:TextBox ID="txt_domingo" runat="server" CssClass="txt_itemGrilla" Width="60"></asp:TextBox>
                                    <act:FilteredTextBoxExtender ID='ftb_domingo' runat='server' TargetControlID='txt_domingo' FilterType='Numbers,Custom' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <RowStyle CssClass="gri_item" />
                        <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                        <PagerStyle CssClass="gri_paginacion" />
                        <HeaderStyle CssClass="gri_titulo" />
                        <AlternatingRowStyle CssClass="gri_itemAlterno" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <cc1:BotonImagen ID='bti_guardar' runat='server' ImageUrl='../../images/botones/aceptar.png'
                        ValidationGroup='form' CssClass='imb' />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
                </td>
            </tr>
        </table>
    </td>
</tr>
</table>
</td>
</tr>
</table>
  <uc1:popup ID='popup1' runat='server' a_bol_visible='false' />
</asp:Content>

