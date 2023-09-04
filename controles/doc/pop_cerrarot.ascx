<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_cerrarot.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_cerrarot" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<table>
    <tr id="tr_datosPRQcliente" runat="server" visible="false">
        <td class="td_lblFormulario">
            <asp:Label ID="lbl" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,doc_documento_ot_fechagarantia_ff %>'></asp:Label>
        </td>
        <td class="td_controlesFormulario">
            <br />
            <fec:fechaAvanzada ID="fec_garantia" runat="server" a_bln_obligatorio="false" a_str_grupoValidacion="ot"
                a_str_prefijo="ff" />
            <asp:CheckBox ID="chb_garantia" runat="server" /><asp:HiddenField ID="hid_fecha"
                runat="server" Value="" />
        </td>
    </tr>
    <tr id="tr_datosPRQotro" runat="server" visible="false">
        <td class="td_lblFormulario">
            <asp:Label ID="lbl_quienPaga" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td class="td_drpFormulario">
            <asp:DropDownList ID="drp_quienPaga" CssClass="drp" runat="server">
            </asp:DropDownList>
            <div id="popCerrarOTdivOtroTercero" runat="server">
                <bus:busquedaAvanzada ID='bus_tercero_cliente' runat='server' a_str_tabla='ter_tercero'
                    a_bln_obligatorio='True' a_bol_postBack="true" a_str_grupoValidacion="ot" />
            </div>
        </td>
    </tr>
    <tr id="tr_datosPRQdistribuidor" visible="false" runat="server">
        <td class="td_controlesFormulario">
            <asp:Label ID="lbl_terceroDistribuidor" runat="server" CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <bus:busquedaAvanzada ID='bus_tercero_cliente_tipoempresaPropia' runat='server' a_str_tabla='ter_tercero'
                a_bln_obligatorio='True' a_bol_postBack="False" a_str_grupoValidacion="ot" />
            <br />
            <asp:CheckBox ID="chb_agruparCentros" runat="server" CssClass="lbl" Text="<%$ Resources:res_etiquetas_ort,agruparCC%>"
                Visible="True" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:CheckBox ID="chk_generarPreliquidacion" runat="server" CssClass="lbl" Checked="false" /></td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                ValidationGroup="ot"></cc1:BotonImagen>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
            <asp:Label ID="lbl_mensajeInformacion" runat="server" CssClass="lbl_mensaje"></asp:Label>
            <asp:Label ID="lbl_mensajeTemparioFacturatodo" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
        <td>
            <cc1:BotonImagen ID="btn_mostrardetalle" Visible="false" runat="server" ImageUrl="../../images/botones/buscarBA.gif" />
        </td>
        <td>
            <table id="tbl_bocadilloElemento" border="0" cellpadding="0" cellspacing="0" style="display: none; width: 183px; z-index: 107">
                <tr>
                    <td align="left" height="11" valign="top" width="6%">
                        <img src="../../images/boc/bocadillo_r1_c1.png" height="16" width="27"></td>
                    <td background="../../images/boc/bocadillo_r1_c3.png" height="11" width="90%"></td>
                    <td align="right" height="11" valign="top" width="4%">
                        <img src="../../images/boc/bocadillo_r1_c4.png" height="16" width="16"></td>
                </tr>
                <tr>
                    <td align="left" background="../../images/boc/bocadillo_r2_c1.png" valign="top" width="6%">&nbsp;</td>
                    <td id="td_BocadilloElementotexto" style="white-space: nowrap" class="unnamed1" bgcolor="#ffffff" width="90%"></td>
                    <td align="right" background="../../images/boc/bocadillo_r2_c4.png" valign="top"
                        width="4%">&nbsp;</td>
                </tr>
                <tr>
                    <td align="left" valign="top" width="6%">
                        <img src="../../images/boc/bocadillo_r4_c1.png" height="16" width="27"></td>
                    <td background="../../images/boc/bocadillo_r4_c3.png" width="90%"></td>
                    <td align="right" valign="top" width="4%">
                        <img src="../../images/boc/bocadillo_r4_c4.png" height="16" width="16"></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
