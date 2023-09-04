<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_imagenCargo.ascx.vb" Inherits="website.samm_componentes.controles_seg_inc_imagenCargo" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<asp:DataList ID="dtl_imagenes" runat="server">
    <ItemTemplate>
        <table>
            <tr>
                <td>
                    <asp:Image ID="img_cargo" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rdb_cargo" runat="server"/>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
<bti:BotonImagen ID="btn_aceptar" runat="server" ImageUrl="~/images/botones/aceptar.png" CssClass='imb' />
