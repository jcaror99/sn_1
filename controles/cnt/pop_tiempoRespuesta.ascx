<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_tiempoRespuesta.ascx.vb" Inherits="website.samm_componentes.controles_cnt_pop_tiempoRespuesta" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<table>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_tiempo" runat="server" Text='<%$Resources:res_metadata,cnt_tiemporespuesta_tiempolimite %>' CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <asp:TextBox ID="txt_tiempo" runat="server" CssClass="txt"></asp:TextBox><asp:RequiredFieldValidator ID='rfv_tiempo' runat='server' ControlToValidate='txt_tiempo' ValidationGroup="resp" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_prioridad" runat="server" Text='<%$Resources:res_metadata,doc_prioridadDocumento_prioridadDocumento %>' CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <uc1:busquedaAvanzada ID="bus_prioridad" runat="server" a_str_grupoValidacion="resp" a_str_tabla="doc_prioridadDocumento" a_bln_obligatorio="true" />
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_estrategia" runat="server" Text='<%$Resources:res_metadata,doc_estrategiaPrioridad_estrategiaPrioridad %>' CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <uc1:busquedaAvanzada ID="bus_estrategia" runat="server" a_str_grupoValidacion="resp" a_str_tabla="doc_estrategiaPrioridad" a_bln_obligatorio="true" />
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <cc1:BotonImagen ID="bti_guardar" runat="server" ImageUrl="~/images/botones/aceptar.jpg" ValidationGroup="resp" /><asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='resp' CssClass='lbl_mensaje' ForeColor='' HeaderText='<%$Resources:res_mensajes,camposObligatorios %>' />
        </td>
    </tr>
</table>
