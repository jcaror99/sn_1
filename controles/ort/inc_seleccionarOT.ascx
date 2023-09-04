<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_seleccionarOT.ascx.vb"
    Inherits="website.samm_componentes.controles_ort_inc_seleccionarOT" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc2" %>
<table>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_tituloOT" runat="server" CssClass="lbl" Text=''></asp:Label>
        </td>
        <td class='td_controlesFormulario' colspan="2">
            <asp:HyperLink ID="hpl_numOT" runat="server" CssClass="lnk" Text='<%$ Resources:res_etiquetas_ort,seleccioneotProgramar %>'></asp:HyperLink>
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_ot" runat="server" Text='<%$Resources:res_metadata,doc_documento_ot_documento_ot %>'
                CssClass="lbl"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <uc1:busquedaAvanzada ID="bus_ot" runat="server" a_bol_postBack="true" a_str_tabla="doc_documento.ot"
                CssClass="_bus" a_str_campo="doc_documento_ot_documento_numero,documento.ot"
                a_str_filtros="doc_documento_ot_doc_estadotipodocumento_estadotipodocumento_codigo not in ('CER','NUE','CAN')" />
        </td>
        <td>
            <bti:BotonImagen ID="imb_busquedaOT" runat="server" ImageUrl="../../images/botones/buscarBA_arbol.gif"
                CssClass='imb' CausesValidation="false" Visible="false" />
        </td>
        <td>
            <td valign="bottom" style="padding-bottom: 4px;">
                <bti:BotonImagen ID="bti_buscarOT" runat="server" CausesValidation="false" ImageUrl="~/images/botones/buscarBA_arbol.gif" />
            </td>
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <hr />
        </td>
    </tr>
</table>
<uc2:popup ID="pop" runat="server" />
