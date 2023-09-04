<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_cargarVisitas.ascx.vb" Inherits="website.controles_cnt_pop_cargarVisitas" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
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