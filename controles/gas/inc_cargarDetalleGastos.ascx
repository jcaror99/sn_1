<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_cargarDetalleGastos.ascx.vb" Inherits="website.samm_componentes.controles_gas_inc_cargarDetalleGastos" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<table class="tbl_marcoFormulario">
    <tr>
        <td>
            <asp:FileUpload ID="ful_archivo" runat="server" CssClass="ful"  />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_hoja" runat="server" CssClass="lbl"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="txt_hoja" runat="server" CssClass="txt" Text="Hoja1"></asp:TextBox><asp:RequiredFieldValidator
                ID="rfv_hoja_1" runat="server" ErrorMessage="*" ValidationGroup="form" ControlToValidate="txt_hoja"></asp:RequiredFieldValidator><asp:RequiredFieldValidator
                    ID="rfv_hoja_2" runat="server" ErrorMessage="*" ValidationGroup="hoja" ControlToValidate="txt_hoja"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <cc1:BotonImagen ID="imbAceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                CausesValidation="true" ValidationGroup="hoja" />
        </td>
    </tr>
    <tr>
    <td> <asp:LinkButton ID="lnk_plantilla" runat="server" CssClass="lnk" ></asp:LinkButton> </td>
    </tr>
    <tr>
    <td><asp:LinkButton ID="lnk_otro" runat="server" CssClass="lnk" ></asp:LinkButton> </td>
    </tr>
    <tr>
        <td>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lbl_fecha" runat="server" CssClass="lbl" ></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drp_fecha" runat="server" CssClass="drp">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID='rfv_fecha' runat='server' ControlToValidate='drp_fecha'
                            ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_gasto" runat="server" CssClass="lbl" ></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drp_gasto" runat="server" CssClass="drp">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_catalogo" runat="server" CssClass="lbl" ></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drp_catalogo" runat="server" CssClass="drp">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID='rfv_catalogo' runat='server' ControlToValidate='drp_catalogo'
                            ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_cantidad" runat="server" CssClass="lbl" ></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drp_cantidad" runat="server" CssClass="drp">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_detalle" runat="server" CssClass="lbl" ></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drp_detalle" runat="server" CssClass="drp">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID='rfv_unidad' runat='server' ControlToValidate='drp_unidad'ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_valor" runat="server" CssClass="lbl" ></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drp_valor" runat="server" CssClass="drp">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID='rfv_costear' runat='server' ControlToValidate='drp_costear'ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="lbl_ot" runat="server" CssClass="lbl" ></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drp_ot" runat="server" CssClass="drp">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID='rfv_costear' runat='server' ControlToValidate='drp_costear'ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
<%--    <tr>
        <td>
            <asp:Label ID="lbl_bodega" runat="server" CssClass="lbl" Text='<%$ Resources:res_metadata,gen_bodega_bodega %>'></asp:Label>
        </td>
    </tr>--%>
<%--    <tr>
        <td>
            <uc1:busquedaAvanzada ID="bus_bodega" runat="server" a_bln_obligatorio="true" a_str_grupoValidacion="form"
                a_str_tabla="gen_bodega" />
        </td>
    </tr>--%>
    <tr>
        <td>
            <cc1:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                CausesValidation="true" ValidationGroup="form" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox BorderWidth="0px" ID="txtLog" runat="server" CssClass="txt_multilinea"
                ReadOnly="True" TextMode="MultiLine" Width="300px" Font-Size="10px" ForeColor="#cc6600"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:HyperLink ID="hprLog" runat="server" CssClass="comunNARANJA" Target="_blank"
                Text="<%$ Resources:res_controles, verLog %>"></asp:HyperLink>
        </td>
    </tr>
</table>
