﻿<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_visitas.ascx.vb" Inherits="website.samm_componentes.controles_cnt_inc_visitas" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc2" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="uc1" %>

<table>
    <tr>
        <td></td>
        <td>
            <asp:Label ID="lbl_equipo" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,equ_equipo_equipo%>'></asp:Label>
        </td>
        <td>
            <uc2:busquedaAvanzada ID="bus_equipo" runat="server" CssClass='_bus' a_str_tabla="equ_equipo" />
            <br />
            <asp:CheckBox ID="chk_desafiliados" runat="server" AutoPostBack="True" />
        </td>

        <td>
            <asp:Label ID="lbl_tempario" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,cat_catalogo_tempario_catalogo_tempario%>'></asp:Label>
        </td>
        <td>
            <uc2:busquedaAvanzada ID="bus_tempario" runat="server" CssClass='_bus' a_str_tabla="cat_catalogo.tempario" />
        </td>
    </tr>
    <tr align='right'>
        <td align='right'></td>
        <td>
            <table cellpadding='0' cellspacing='0'>
                <tr>
                    <td align='right'>
                        <asp:Label ID='lbl_fecha_ff' runat='server' CssClass='lbl' Text='<%$Resources:res_metadata,cnt_visitaFija_fecha_ff %>'></asp:Label>
                    </td>
                    <td align='right' style='padding-left: 8px'>
                        <asp:Label ID='lbl_fecha_ff_busDesde' runat='server' CssClass='lbl' Text='<%$Resources:res_controles,desde %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td align='right'>
                        <asp:Label ID='lbl_fecha_ff_busA' runat='server' CssClass='lbl' Text='<%$Resources:res_controles,a %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
        <td class='td_controlesFormulario'>
            <table cellpadding='0' cellspacing='0'>
                <tr>
                    <td>
                        <fec:fechaAvanzada ID='fec_fecha_ff' runat='server' a_str_prefijo='ff' a_bln_obligatorio='false'
                            CssClass='txt_fecha_bus' CssClassHora='txt_hora_bus'>
                        </fec:fechaAvanzada>
                    </td>
                </tr>
                <tr>
                    <td>
                        <fec:fechaAvanzada ID='fec_fecha_ff_bus' runat='server' a_bln_obligatorio='true'
                            CssClass='txt_fecha_bus' CssClassHora='txt_hora_bus' a_str_prefijo='ff'>
                        </fec:fechaAvanzada>
                    </td>
                </tr>
            </table>
        </td>
        <td>
            <asp:Label ID='lbl_zona' runat='server' CssClass='lbl' Text='<%$Resources:res_metadata,gen_zona_zona %>'></asp:Label>
        </td>
        <td>
            <uc2:busquedaAvanzada ID="bus_zona" runat="server" CssClass='_bus' a_str_tabla="gen_zona" />
        </td>
    </tr>
    <tr>
        <td align='right'></td>
        <td>
            <asp:Label ID="lbl_modo" runat="server" CssClass="lbl"></asp:Label></td>
        <td align='left'>
            <asp:RadioButtonList ID="rbl_modo" CausesValidation="false" runat="server" RepeatDirection="Horizontal"></asp:RadioButtonList>
        </td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="4" align="center">
            <cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                CausesValidation="false" />
        </td>
    </tr>
</table>
<cc1:BotonImagen ID="bti_nuevo" runat="server" ImageUrl="~/images/botones/agregar.gif"
    CausesValidation="false" />
<cc1:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif"
    CausesValidation="false" />
<cc1:BotonImagen ID="bti_eliminar" runat="server" ImageUrl="../../images/botones/quitar.gif"
    CausesValidation="false" />
<table cellpadding='0' cellspacing='0'>
    <tr>
        <td>
            <asp:Label ID="lbl_vista" runat="server"></asp:Label>
        </td>
    </tr>

</table>
<br />
<asp:GridView ID="grd_visitas" runat="server" AutoGenerateColumns="False">
    <Columns>

        <asp:CommandField ButtonType="Button" ShowSelectButton="True" HeaderStyle-CssClass="invisible"
            ItemStyle-CssClass="invisible" ControlStyle-CssClass="invisible">
            <ControlStyle CssClass="invisible"></ControlStyle>
            <HeaderStyle CssClass="invisible"></HeaderStyle>
            <ItemStyle CssClass="invisible"></ItemStyle>
        </asp:CommandField>

        <asp:TemplateField HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
            <ItemTemplate>
                <asp:Label ID="lbl_id" runat="server" CssClass="invisible" Text='<%# Eval("id") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
            <ItemTemplate>
                <asp:Label ID="lbl_idOt" runat="server" CssClass="invisible" Text='<%# Eval("id_ot") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Label ID="lbl_fecha" runat="server" CssClass="lbl" Text='<%# Eval("fecha_ff") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Label ID="lbl_horometro" runat="server" CssClass="lbl" Text='<%# Eval("horometro") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Label ID="lbl_equipo" runat="server" CssClass="lbl" Text='<%# Eval("equ_equipo_equipo") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Label ID="lbl_tempario" runat="server" CssClass="lbl" Text='<%# Eval("tempario") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Label ID="lbl_fechaCreacion" runat="server" CssClass="lbl" Text='<%# Eval("fechaCreacion") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField>
            <ItemTemplate>
                <asp:Label ID="lbl_proveedor" runat="server" ssClass='lbl'><%# IIF(Eval("ProveedorContrato") ="", Eval("ProveedorConfigContrato"),Eval("ProveedorContrato")) %></asp:Label>

            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="lnk_doc" runat="server" CssClass="lnk" Text='<%# Eval("doc_documento_prefijo") & "-" & Eval("doc_documento_documento_numero") %>'></asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Label ID="lbl_horometroOT" runat="server" CssClass="lbl" Text='<%# Eval("horometroOT") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <HeaderStyle CssClass="gri_titulo" />
    <FooterStyle CssClass="gri_pie" />
    <RowStyle CssClass="gri_item" />
    <PagerStyle CssClass="gri_paginacion" />
    <AlternatingRowStyle CssClass="gri_itemAlterno" />
    <SelectedRowStyle CssClass="gri_itemSeleccionado" />
</asp:GridView>
