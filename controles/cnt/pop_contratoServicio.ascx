<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_contratoServicio.ascx.vb"
    Inherits="website.samm_componentes.controles_cnt_pop_contratoServicio" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<table>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_servicio" runat="server" Text='<%$Resources:res_metadata,gen_tiposervicio_tiposervicio %>'
                CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <uc1:busquedaAvanzada ID="bus_servicio" runat="server" a_str_grupoValidacion="resp"
                a_str_tabla="gen_tipoServicio" a_bln_obligatorio="true" />
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_lista" runat="server" Text='<%$Resources:res_metadata,cat_listaprecio_listaprecio %>'
                CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <uc1:busquedaAvanzada ID="bus_lista" runat="server" a_str_tabla="cat_listaPrecio" />
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <cc1:BotonImagen ID="bti_guardar" runat="server" ImageUrl="~/images/botones/aceptar.jpg"
                ValidationGroup="resp" /><asp:ValidationSummary ID='vlsFormulario' runat='server'
                    ValidationGroup='resp' CssClass='lbl_mensaje' ForeColor='' HeaderText='<%$Resources:res_mensajes,camposObligatorios %>' />
            <asp:Label ID="lbl_mensaje" runat="server"></asp:Label>
        </td>
    </tr>
</table>
