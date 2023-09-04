<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_buscarXcatalogo.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_buscarXcatalogo" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple" TagPrefix="uc3" %>
<table>
    <tr>
        <td>
            <table>
                <tr>
                    <td>
                        <td>
                            <asp:Label ID="lbl_modelo" runat="server"></asp:Label>
                        </td>
                        <td>
                            <uc3:busquedaAvanzadaMultiple ID="bus_modelo" runat="server" a_str_tabla="cat_catalogo.equipo" />
                        </td>
                    </td>
                </tr>

                <tr>
                    <td>
                        <td>
                            <asp:Label ID="lbl_catalogo" runat="server"></asp:Label>
                        </td>
                        <td>
                            <uc3:busquedaAvanzadaMultiple ID="bus_catalogo" runat="server" a_str_tabla="cat_catalogo" a_str_campo="catalogo,catalogo_codigo,id_subTipoCatalogo,codigoInventario" />
                        </td>
                    </td>
                </tr>

                <tr>
                    <td>
                        <td>
                            <asp:Label ID="lbl_zona" runat="server"></asp:Label>
                        </td>
                        <td>
                            <uc3:busquedaAvanzadaMultiple ID="bus_zona" runat="server" a_str_tabla="gen_zona" />
                        </td>
                    </td>
                </tr>




                <tr>
                    <td>
                        <td colspan="4">
                            <asp:CheckBox ID='chb_combinarBusquedaFormulario' runat="server"></asp:CheckBox>
                        </td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <td>
                            <cc1:BotonImagen ID="btiAceptar" runat="server" ImageUrl="~/images/botones/aceptar.png"
                                ValidationGroup="pop_buscar"></cc1:BotonImagen>
                        </td>
                    </td>
                </tr>
    </tr>
</table>
</td>
</tr>
</table>