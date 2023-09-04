<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_aplicarvariositems.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_aplicarvariositems" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="textoAvanzado" TagPrefix="taz" %>
<table>
    <tr>
        <td>
            <asp:Label ID="lblItemDesdeSeEdita" runat="server" CssClass="lbl"></asp:Label>

        </td>
        <td>
            <uc1:busquedaAvanzada ID="bus_itemdocumento" runat="server" a_str_tabla='doc_itemDocumento'
                a_bln_obligatorio='False' a_str_filtros="id_catalogo=0" />
        </td>

        <td>
            <asp:ImageButton ID="imbEliminar" runat="server" CausesValidation="False"
                ImageUrl="~/images/iconos/eliminar.gif" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_decuento" runat="server" Text="Descuento a aplicar"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_descuento" runat="server" Text='<%# eval("descuento")%>'>
            </asp:TextBox>
        </td>
        <tr>
        </tr>



    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="lbl_detalle" runat="server" CssClass="lbl" Text="Label"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <taz:textoavanzado ID="txt_detalle" runat="server" CssClass="txt_formulario" a_int_maxLength='4000' a_str_grupoValidacion="form" a_bln_obligatorio="true" />
        </td>
    </tr>
    <tr>
        <td></td>
        <td colspan="2">
            <table>
                <tr>
                    <td class='td_lblFormulario'>
                        <asp:Label ID="lbl_listaPrecio" runat="server" CssClass='lbl' Text="Label"></asp:Label>
                    </td>
                    <td class='td_controlesFormulario'>
                        <uc1:busquedaAvanzada ID="bus_listaPrecio" runat="server" a_str_tabla="cat_listaPrecio" />
                    </td>
                </tr>
                <tr>
                    <td class='td_lblFormulario'>
                        <asp:Label ID="lbl_centroCosto" runat="server" CssClass='lbl' Text="Label"></asp:Label>
                    </td>
                    <td class='td_controlesFormulario'>
                        <uc1:busquedaAvanzada ID="bus_centrocosto" runat="server" a_str_tabla="doc_centroCosto" />
                    </td>
                </tr>
                <tr>
                    <td class='td_lblFormulario'>
                        <asp:Label ID="lbl_bodega" runat="server" CssClass="lbl" Text="Label"></asp:Label>
                    </td>
                    <td class='td_controlesFormulario'>
                        <uc1:busquedaAvanzada ID="bus_bodega" runat="server" a_str_tabla="gen_bodega" />
                    </td>
                </tr>
                <tr>
                    <td class='td_lblFormulario'>
                        <asp:Label ID="lbl_incoterm" runat="server" CssClass="lbl" Text="Label"></asp:Label>
                    </td>
                    <td class='td_controlesFormulario'>
                        <uc1:busquedaAvanzada ID="bus_incoterm" runat="server" a_str_tabla="doc_incoterm" />
                    </td>
                </tr>


                <tr>
                    <td class='td_lblFormulario'>
                        <asp:Label ID='lbl_costear' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                    <td class='td_controlesFormulario'>
                        <asp:RadioButtonList ID='rbl_costear' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
                            RepeatLayout='Flow'>
                            <asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
                            <asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="~/images/botones/aceptar.jpg"
                CausesValidation="false" /><br />
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
</table>
