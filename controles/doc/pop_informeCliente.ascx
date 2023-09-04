<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_informeCliente.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_informeCliente" %>
<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="textoAvanzado" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<table>
    <tr>
        <td>
            <asp:Label ID="lbl_trabajos" runat="server" Text="<%$Resources:res_metadata, doc_documento_ot_trabajos %>"
                CssClass="lbl"></asp:Label>
        </td>
        <td>
            <cc1:BotonImagen ID="bti_restaurar1" runat="server" ImageUrl="../../images/botones/doc_cargarDefecto.jpg"
                ValidationGroup="popInf" />
        </td>
        <td>
            <uc1:textoAvanzado ID="tex_trabajos" runat="server" CssClass="txt_infCliente" a_str_campo=""
                a_bln_obligatorio="True" a_str_grupoValidacion="popInf" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_compromisos" runat="server" Text="<%$Resources:res_metadata, doc_documento_ot_compromisos %>"
                CssClass="lbl"></asp:Label>
        </td>
        <td>
            <cc1:BotonImagen ID="bti_restaurar2" runat="server" ImageUrl="../../images/botones/doc_cargarDefecto.jpg"
                ValidationGroup="popInf" />
        </td>
        <td>
            <uc1:textoAvanzado ID="tex_compromisos" runat="server" CssClass="txt_infCliente"
                a_bln_obligatorio="False" a_str_grupoValidacion="popInf" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_recomendaciones" runat="server" Text="<%$Resources:res_metadata, doc_documento_ot_recomendaciones %>"
                CssClass="lbl"></asp:Label>
        </td>
        <td>
            <cc1:BotonImagen ID="bti_restaurar3" runat="server" ImageUrl="../../images/botones/doc_cargarDefecto.jpg"
                ValidationGroup="popInf" />
        </td>
        <td>
            <uc1:textoAvanzado ID="tex_recomendaciones" runat="server" CssClass="txt_infCliente"
                a_bln_obligatorio="False" a_str_grupoValidacion="popInf" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;
        </td>
        <td>
            <cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                ValidationGroup="popInf" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;
        </td>
        <td>
            <asp:Label ID="lbl_mensaje" runat="server" Text="" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
</table>
