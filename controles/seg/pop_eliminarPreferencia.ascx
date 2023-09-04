<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_eliminarPreferencia.ascx.vb" Inherits="website.samm_componentes.controles_seg_pop_eliminarPreferencia" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<div style="display:none; overflow:visible; width:100%; height:100%;" id="divModal" class="modalBackground" runat="server"></div>
<table> 

<p class="comun"><asp:Panel ID="pnl_control" runat="server" Width="100%" BackColor="white" style="z-index:10005">
</asp:Panel></p>

    <tr align="center">
        <td>
            <asp:Label ID="lbl_empresa" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,gen_eliminar_preferencia %>'></asp:Label>
        </td>
    </tr>
    <tr align="center">
        <td>
            <bti:BotonImagen ID="bti_aceptar" runat="server" Visible="true" ImageUrl="../../images/botones/aceptar.jpg" />
        </td>
    </tr>
    <tr align="center"> 
        <td colspan="2">
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
</table>

<asp:HiddenField ID="hdd_tbl_posX" runat="server" />
<asp:HiddenField ID="hdd_tbl_posY" runat="server" />
<asp:HiddenField ID="hdd_tbl_visible" runat="server" />
