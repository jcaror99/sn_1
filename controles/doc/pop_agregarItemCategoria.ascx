<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_agregarItemCategoria.ascx.vb" Inherits="website.samm_componentes.controles_doc_pop_agregarItemCategoria" %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table class='tbl_marcoFormulario'>
    <tr>
        <td>
            <asp:Panel ID='pan_formulario' runat='server' DefaultButton='imbGuardar' BackColor="Transparent">
                <table class='tbl_formulario'>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID='lbl_itemDocumento' runat='server' CssClass='lblobligatorio'></asp:Label></td>
                        <td class='td_controlesFormulario'>
                            <asp:TextBox ID='txt_itemDocumento' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID='rfv_itemDocumento' runat='server' ControlToValidate='txt_itemDocumento' ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID='lbl_id_itemDocumento_superior' runat='server' CssClass='lblobligatorio'></asp:Label></td>
                        <td class='td_controlesFormulario'>
                            <bus:busquedaAvanzada ID='bus_itemDocumento_superior' runat='server' a_str_tabla='doc_itemDocumento' a_bln_obligatorio='False' a_str_filtros="id_catalogo=0" />
                        </td>
                        <td></td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <table style="width: 100%;">
                    <tr>
                        <td>
                            <asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje' ForeColor='' />
                        </td>
                        <td valign='middle' align='right'>
                            <bti:BotonImagen ID='imbGuardar' runat='server' ImageUrl='../../images/botones/aceptar.png' ValidationGroup='form' CssClass='imb' /></td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
</table>
