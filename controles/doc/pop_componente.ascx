<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_componente.ascx.vb" Inherits="website.samm_componentes.controles_doc_pop_componente" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="act" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<table>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_equipo_1" runat="server" Text='<%$Resources:res_metadata,equ_equipo_equipo %>' CssClass="lbl"></asp:Label>
        </td>
        <td class="td_controlesFormulario" colspan="2">
            <asp:Label ID="lbl_equipo" runat="server" CssClass="lbl"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="Label2" runat="server" Text='<%$Resources:res_metadata,equ_trazabilidad_fecha_ff %>' CssClass="lbl_formulario"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <uc2:fechaAvanzada ID="fec_fecha" runat="server" a_bln_obligatorio="true" a_str_prefijo="ff" />
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="Label1" runat="server" Text='<%$Resources:res_metadata,equ_equipo_equipo %>'></asp:Label>
        </td>
        <td colspan="2">
            <uc1:busquedaAvanzada ID="bus_equipo" runat="server" a_bln_obligatorio="true" a_str_filtros="id_equipo=0" a_str_grupoValidacion="equipo" a_str_tabla="equ_equipo" />
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="Label4" runat="server" Text='<%$Resources:res_metadata,equ_equipo_horometroActual %>' CssClass="lbl_formulario"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <asp:TextBox ID="txt_horometro" runat="server" CssClass="txt_numero"></asp:TextBox><asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="txt_horometro" ForeColor="" CssClass="lbl_mensaje" ValidationGroup="equipo">*</asp:RequiredFieldValidator><act:FilteredTextBoxExtender ID='ftb_horometro' runat='server' FilterType='Numbers,Custom' TargetControlID='txt_horometro'></act:FilteredTextBoxExtender>
        </td>
    </tr>
    <tr>
        <td align="center">
            <cc1:BotonImagen ID="bti_montar" runat="server" ValidationGroup="equipo" ImageUrl="~/images/botones/equ_montar.gif" />
        </td>
        <td align="center">
            <cc1:BotonImagen ID="bti_desmontar" runat="server" CausesValidation="false" ImageUrl="~/images/botones/equ_desmontar.gif" />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:ValidationSummary ID='vls' runat='server' ValidationGroup='equipo' CssClass='lbl_mensaje' ForeColor='' HeaderText='<%$Resources:res_mensajes,camposObligatorios %>'></asp:ValidationSummary>
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
</table>
