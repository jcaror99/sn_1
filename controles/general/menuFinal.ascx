<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="menuFinal.ascx.vb" Inherits="website.samm_controles.controles_general_menuFinal" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<link href="../../css/samm/menu.css" rel="stylesheet" type="text/css" />
<link href="../../css/samm/notificaciones.css" rel="stylesheet" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="../../js/Interfaz/MoverTabla.js"></script>
<script type="text/javascript" src="../../js/Interfaz/formularios.js"></script>
<script type="text/javascript" src="../../js/bootstrap/jquery.js"></script>
<script type="text/javascript" src="../../js/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="../../js/Interfaz/notificaciones.js"></script>
<script type="text/javascript" src="../../js/bootstrap/jquery.js"></script>
<table class="tblMenu">
<tr>
<td><header>
        <nav class="nav">   
            <div id="div_menu" class="menua" runat="server" >
            </div>
            <div class="dark">
            </div>
        </nav></header>
</td>
   <td class="tdMenuDer">
   <div class="recordatorio">
   <asp:UpdatePanel ID ="upl_recordatorio" runat="server"  >
   <ContentTemplate>
 <asp:Image ID="bti_recordatorio" CssClass="bti_recordatorio2" runat="server" ImageUrl="../../images/iconos/campanasRecordatorios.png" alt="Con recordatorio"/>
   <asp:Image ID="bti_sinrecordatorio" CssClass="bti_recordatorio2" runat="server" ImageUrl="../../images/iconos/campanasSinRecordatorio.png" alt="Sin recordatorio"/>  
     </ContentTemplate>
 </asp:UpdatePanel>
</div>
<cc1:BotonImagen ImageUrl="../../images/botones/verReportes.gif" CausesValidation="false"
CssClass="imb_rep reportes" runat="server" ID="bti_reportes" ToolTip="<%$ Resources:res_etiquetas,reportes %>">
</cc1:BotonImagen>
<asp:Label ID="lbl_ayuda" class="buscador" runat="server" Text=""></asp:Label>
<asp:TextBox ID="txt_ayuda" runat="server" CssClass="txt_ayudaCabecera"></asp:TextBox>
<cc1:BotonImagen ID="btn_help" runat="server" ImageUrl="../../images/botones/busqueda_avanz_home01.gif" />
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
         <br />  
         <div>
         <asp:Label  ID="lbl_otsSinProgramacion" runat="server" CssClass="lbl"></asp:Label>
        <asp:Label ID="lbl_cantidadOtsSinProgramacion" runat="server" CssClass="lblobligatorio">0</asp:Label>
        </div>
         <br />  
         <div>
         <asp:Label  ID="lbl_otsInclumplida" runat="server" CssClass="lbl"></asp:Label>
        <asp:Label ID="lbl_cantidadOtsInclumplida" runat="server" CssClass="lblobligatorio">0</asp:Label>
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
<script type="text/javascript" src="../../js/Interfaz/menuf.js"></script>
