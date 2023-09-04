<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="menuM.ascx.vb" Inherits="website.samm_controles.controles_samm7_menuM" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<link href="../../css/materialize/menu.css" rel="stylesheet" type="text/css" />
<link href="../../css/notificaciones.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../js/Interfaz/MoverTabla.js"></script>
<script type="text/javascript" src="../../js/Interfaz/formularios.js"></script>
<script type="text/javascript" src="../../js/bootstrap/jquery.js"></script>
<script type="text/javascript" src="../../js/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="../../js/Interfaz/notificaciones.js"></script>
<div>
<table class="menu">
<tr>
<td  class="menu" valign="top">
<div id="div_menu" runat="server" style="white-space: nowrap;display:none"></div>
</td>
<td class="menu" style="width:100%;text-align:left;">
   <asp:UpdatePanel ID ="upl_recordatorio" runat="server"  >
   <ContentTemplate>
 <asp:Image ID="bti_recordatorio" CssClass="bti_recordatorio2" runat="server" ImageUrl="../../images/iconos/campanasRecordatorios.png" alt="Con recordatorio"/>
   <asp:Image ID="bti_sinrecordatorio" CssClass="bti_recordatorio2" runat="server" ImageUrl="../../images/iconos/campanasSinRecordatorio.png" alt="Sin recordatorio"/>  
     </ContentTemplate>
 </asp:UpdatePanel>
 </td>
<td>
</td>
</tr>
</table>
<asp:Panel runat="server" ID="panelNotificaciones" CssClass="panelNotificaciones" Style="display:none">
   <asp:Table ID="tbl_final" runat="server">
     <asp:TableRow>
        <asp:TableCell CssClass="cabeceraNotificacion">
        <bti:BotonImagen ID="bti_recordatorioAct" runat="server" ImageUrl="../../images/botones/btn_menuH_B.png" Width="25" Height="25" CausesValidation="false" CssClass="notificacionAnterior" ToolTip="Menu anterior"/>
        <span><i class="fa fa-user-circle-o fa-lg" aria-hidden="true"></i></span> Notificaciones - SAMMWEB</asp:TableCell>
     </asp:TableRow>
     <asp:TableRow>
     <asp:TableCell ID="tcll_celda" runat="server" CssClass="notificaciones">
        <br />   
        <div>
         <asp:Label  ID="lbl_recordatorioVencido" runat="server" CssClass="lbl"></asp:Label>
         <asp:Label ID="lbl_cantidadRecorVencido" runat="server" CssClass="lblobligatorio"></asp:Label>
        </div>
        <br />  
        <div>
         <asp:Label  ID="lbl_recordatorioTotales" runat="server" CssClass="lbl"></asp:Label>
         <asp:Label ID="lbl_cantidadRecorTotales" runat="server" CssClass="lblobligatorio"></asp:Label>
        </div>
        <br />  
        <div>
         <asp:Label  ID="lbl_recordatorioSinR" runat="server" CssClass="lbl"></asp:Label>
        <asp:Label ID="lbl_cantidadRecorSinR" runat="server" CssClass="lblobligatorio"></asp:Label>
        </div>
        <br />  
        <div>
         <asp:Label  ID="lbl_recordatorioConR" runat="server" CssClass="lbl"></asp:Label>
        <asp:Label ID="lbl_cantidadRecorConR" runat="server" CssClass="lblobligatorio"></asp:Label>
        </div>
     </asp:TableCell>
     </asp:TableRow>
     <asp:TableRow>
     <asp:TableCell CssClass="cerrarNotificaciones">
        <span class="cerrarNotif"><i class="fa fa-chevron-up fa-2x" aria-hidden="true"></i></span>
     </asp:TableCell>
     </asp:TableRow>   
   </asp:Table>
</asp:Panel>
</div>