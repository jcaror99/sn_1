<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_importarSaldosIni.ascx.vb"
    Inherits="website.samm_componentes.controles_cat_pop_importarSaldosIni" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<table class="tbl_marcoFormulario">
    <tr>
        <td>
            <asp:FileUpload ID="ful_archivo" runat="server" CssClass="ful" />
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
        <td>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lbl_catalogo_codigo" runat="server" CssClass="lbl" Text='<%$ Resources:res_metadata,cat_catalogo_codigoinventario %>'></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drp_catalogo_codigo" runat="server" CssClass="drp">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID='rfv_catalogo_codigo' runat='server' ControlToValidate='drp_catalogo_codigo'
                            ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_costo" runat="server" CssClass="lbl" Text='<%$ Resources:res_metadata,cat_catalogo_bodega_costo %>'></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drp_costo" runat="server" CssClass="drp">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_existencia" runat="server" CssClass="lbl" Text='<%$ Resources:res_metadata,cat_catalogo_bodega_existencia %>'></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drp_existencia" runat="server" CssClass="drp">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID='rfv_existencia' runat='server' ControlToValidate='drp_existencia'
                            ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_existenciaMin" runat="server" CssClass="lbl" Text='<%$ Resources:res_metadata,cat_catalogo_bodega_existenciaminima %>'></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drp_existenciaMin" runat="server" CssClass="drp">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_existenciaMax" runat="server" CssClass="lbl" Text='<%$ Resources:res_metadata,cat_catalogo_bodega_existenciamaxima %>'></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drp_existenciaMax" runat="server" CssClass="drp">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID='rfv_unidad' runat='server' ControlToValidate='drp_unidad'ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_localizacion" runat="server" CssClass="lbl" Text='<%$ Resources:res_metadata,cat_catalogo_bodega_localizacion %>'></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drp_localizacion" runat="server" CssClass="drp">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID='rfv_costear' runat='server' ControlToValidate='drp_costear'ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                <!--AGREGADO-->
                <tr>
                    <td>
                        <asp:Label ID="lbl_bodega" runat="server" CssClass="lbl" ></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drp_bodega" runat="server" CssClass="drp">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </td>
    </tr>

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
