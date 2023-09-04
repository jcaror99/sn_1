<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_asociarDocumento.ascx.vb" Inherits="website.samm_componentes.controles_doc_pop_asociarDocumento" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table>
    <tr>
        <td>
            <asp:Panel ID="pnl_filtros" runat="server" CssClass="pnl" GroupingText="<%$Resources:res_etiquetas,buscar %>">
                <table>
                    <tr>
                        <td>
                            <asp:CheckBox ID="chb_cliente" runat="server" Checked="true" AutoPostBack="true" />
                        </td>
                        <td>
                            <asp:CheckBox ID="chb_sucursal" runat="server" Checked="true" AutoPostBack="true" />
                        </td>
                        <td>
                            <asp:CheckBox ID="chb_equipo" runat="server" Checked="true" AutoPostBack="true" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
</table>
<table>
    <tr>
        <td>
            <asp:Label ID="lbl_padre" runat="server" CssClass='lbl'></asp:Label>
        </td>
        <td>
            <bus:busquedaAvanzada id="bus_padre" runat="server" a_str_tabla="doc_documento" a_bol_postBack="true" a_bln_obligatorio="true" a_str_grupoValidacion="asociar" a_str_campo="documento_numero,prefijo,id_subtipoDocumento" a_bln_mostrarNuevoConDrop="false" />
        </td>
    </tr>
</table>
<table>
    <tr>
        <td>
            <asp:Label ID="lbl_advertencia" runat="server" CssClass='lbl_inf'></asp:Label>
        </td>
    </tr>
</table>
<table>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="true" ValidationGroup="asociar"
                ImageUrl="../../images/botones/aceptar.jpg" />
            <br />
            <br />
            <asp:Panel ID="aceptar_cambiarEstado" runat="server" CssClass="pnl" GroupingText="<%$Resources:res_mensajes,aceptar_cambiarEstado %>">
                <table>
                    <tr>
                        <td>
                            <bti:BotonImagen ID="bti_aceptar_cambiarEstado" runat="server" CausesValidation="true" ValidationGroup="asociar"
                                ImageUrl="../../images/botones/aceptar.jpg" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>

        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Label ID="lbl_mensaje" runat="server" CssClass='lbl_mensaje'></asp:Label>
        </td>
    </tr>
</table>
