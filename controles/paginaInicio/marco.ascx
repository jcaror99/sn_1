<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="marco.ascx.vb" Inherits="website.samm_componentes.controles_paginaInicio_marco" %>
<%@ Register Src="home.ascx" TagName="home" TagPrefix="uc1" %>
<table class="tblMarco">
    <tbody>
        <tr>
            <td class="tituloBH">
                <table runat="server" id="tbl_colorFondo" border="0" cellpadding="0" cellspacing="0" width="100%">
                    
                        <tr>
                            <td class="tituloPagina" height="14" width="5%">
                                &nbsp;
                            </td>
                            <td class="tituloPagina" height="14" width="84%">
                                <asp:Label ID="lbl_titulo" runat="server"></asp:Label></td>
                            <td style="height:14px;width:11%;text-align:right;white-space:nowrap;">
                                
                                    <asp:HyperLink ID="lnkBuscar" runat="server" ImageUrl="../../images/home/busqueda_avanz_home01.png"></asp:HyperLink>
                                    <asp:HyperLink ID="lnkNuevo" runat="server" ImageUrl="../../images/home/nuevo.png" />
                                        <asp:Image ID="imgMinimizar" runat="server" ImageUrl="../../images/home/bt_minimizara.png" style="cursor:pointer;" />
                            &nbsp;</td>
                        </tr>
                    
                </table>
            </td>
        </tr>
        <tr>
            <td class="usuario" valign="top">
                    <asp:Panel ID="pnl" runat="server">
                        <uc1:home ID="hm" runat="server" />
                    </asp:Panel>
            </td>
        </tr>
    </tbody>
</table>
