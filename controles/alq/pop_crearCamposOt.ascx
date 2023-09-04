<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_crearCamposOt.ascx.vb" Inherits="website.samm_componentes.controles_alq_pop_crearCamposOt" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="textoAvanzado" TagPrefix="tex" %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/busquedaAvanzadaMultiple.ascx' TagName='busquedaAvanzadaMultiple' TagPrefix='bus' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
    <tr>
        <td align='right'></td>
        <td class='td_lblFormulario'>
            <asp:Label ID='lbl_id_tipoServicio' runat='server' CssClass='lblobligatorio'></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <bus:busquedaAvanzada ID='bus_tipoServicio' runat='server' a_str_tabla='gen_tipoServicio'
                a_bln_obligatorio='True' a_str_grupoValidacion='form' />
        </td>
        <td></td>
    </tr>
    <tr>
        <td align='right'></td>
        <td class='td_lblFormulario'>
            <asp:Label ID='lbl_id_usuario_coordinador' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <bus:busquedaAvanzada ID='bus_usuario_coordinador' runat='server' a_str_tabla='seg_usuario'
                a_bln_obligatorio='False' />
        </td>
        <td></td>
    </tr>
    <tr>
        <td align='right'></td>
        <td class='td_lblFormulario'>
            <asp:Label ID='lbl_id_departamentoSolicitud' runat='server' CssClass='lblobligatorio'></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <bus:busquedaAvanzada ID='bus_departamentoSolicitud' runat='server' a_str_tabla='ort_departamentoSolicitud'
                a_bln_obligatorio='True' a_str_grupoValidacion='form' />
        </td>
        <td></td>
    </tr>
    <tr align='right'>
        <td align='right'></td>
        <td>
            <table cellpadding='0' cellspacing='0'>
                <tr>
                    <td align='right'>
                        <asp:Label ID='lbl_fechaSugerida_fh' runat='server' CssClass='lblobligatorio'></asp:Label>
                    </td>
                    <td align='right' style='padding-left: 8px'>
                        <asp:Label ID='lbl_fechaSugerida_fh_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td align='right'>
                        <asp:Label ID='lbl_fechaSugerida_fh_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
        <td class='td_controlesFormulario'>
            <table cellpadding='0' cellspacing='0'>
                <tr>
                    <td>
                        <fec:fechaAvanzada ID='fec_fechaSugerida_fh' runat='server' a_str_prefijo='fh' a_bln_obligatorio='True'
                            a_str_grupoValidacion='form'></fec:fechaAvanzada>
                    </td>
                </tr>
            </table>
        </td>
        <td></td>
    </tr>
    <tr>
        <td align='right'></td>
        <td class='td_lblFormulario'>
            <asp:Label ID='lbl_motivoServicio' runat='server' CssClass='lblobligatorio'></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <tex:textoAvanzado ID='txt_motivoServicio' runat='server' a_bln_obligatorio='True'
                a_str_grupoValidacion='form' ContenidoEnPOP="true"></tex:textoAvanzado>
        </td>
        <td></td>
    </tr>
    <%--<tr>
<td align='right'>
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_motivoServicio" runat="server" CssClass="lblobligatorio" ></asp:Label>
</td>
<td class="td_controlesFormulario">
<br />
<tex:textoAvanzado ID="txt_motivoServicio" runat="server"  a_bln_obligatorio='True' a_str_grupoValidacion="ot" 
ContenidoEnPOP="true" CssClass="txt_formulario" />
</td>
<td>
</td>
</tr>--%>
</table>

<table>
    <tr>
        <td style="padding-left: 100px"></td>
        <td style="padding-left: 60px"></td>
        <td></td>
        <td valign='middle' align='right'>
            <asp:ImageButton ID='imbGuardar' Visible="true" runat='server' ImageUrl='../../images/botones/aceptar.png'
                ValidationGroup='form' CssClass='imb' />
        </td>
    </tr>

</table>
<table>
    <tr>
        <td style="padding-left: 100px">
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje">
            </asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_mensaje_vacio" runat="server" CssClass="lbl_mensaje" Visible="false">
            </asp:Label>
        </td>
    </tr>
</table>
