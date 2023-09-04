<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_cambiarClientes.ascx.vb" Inherits="website.samm_componentes.controles_seg_pop_cambiarClientes" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<table>
     <tr align="center" id="tr_bus_usuario" runat="server" visible="false">
        <td>
            <asp:Label ID="lbl_empresa" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,seg_usuario_usuario %>'></asp:Label>
        </td>
        <td>
                        <uc1:busquedaAvanzada ID="bus_usuario" runat="server" a_str_tabla="seg_usuario" />
                
        </td>
        </tr>
         
         <tr align="center" id="tr_accion" runat="server" visible="True">
        <td>
       <cc1:BotonImagen ID="btiAceptar" runat="server" ImageUrl="~/images/botones/aceptar.png" ValidationGroup="pop_buscar"></cc1:BotonImagen></td>
        <td>
        <asp:HyperLink runat="server" ID="hy_usuario" Text='' Target="_new"></asp:HyperLink>
        </td>
        </tr>
        
         <tr align="center" id="tr_botAct" runat="server" visible="false">
         <td >
         </td>
        <td >
            <asp:Label ID="lblMensajeAct" runat="server" Text="" CssClass="lbl_mensaje"></asp:Label>
        
        </td>
        </tr>
</table>
