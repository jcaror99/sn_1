<%@ Page Language="VB" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master"
AutoEventWireup="false" CodeBehind="calendario.aspx.vb" Inherits="website.samm_web.forms_seg_asignarTurnos" %>
<%@ Register Src="~/controles/ort/inc_seleccionarTecnico.ascx" TagName="inc_seleccionarTecnico"
TagPrefix="uc7" %>
<%@ Register Src="~/controles/ort/inc_seleccionarOT.ascx" TagName="inc_seleccionarOT"
TagPrefix="uc6" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
TagPrefix="uc5" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc4" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada"
TagPrefix="uc3" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada"
TagPrefix="uc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="act" %>
<%@ Register Src="~/controles/general/calendario4meses.ascx" TagName="calendario4meses"
TagPrefix="uc2" %>
<%@ Register src="~/controles/ort/inc_busquedaOtProgramacion.ascx" tagname="busquedaOtProgramacion" 
TagPrefix="uc8" %>
<asp:Content ID="contentTitulo" ContentPlaceHolderID="cph_tituloPagina" runat="server">
<asp:Label ID="lbl_titulo" runat="server" CssClass="lbl_titulo"></asp:Label>
  <%--  <link href="../../css/styledrag.css" rel="stylesheet" type="text/css" />--%>
  <link href="../../css/samm/calendario.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_general" runat="Server">
<table>
<tr>
<td valign="top" rowspan="3">
<div ID="botones" style="position:absolute">
<uc2:calendario4meses ID="Calendario4meses1" runat="server" a_bol_mostrarFestivos="true" />
</div>
<img alt="" src="../../images/interfaz/spacer.gif" style="height: 1200px; width: 164px;" />
</td>
<td valign="top">
<uc4:popup ID="popInterno" runat="server" a_bol_mostrarSAMM="false" />
<asp:Panel ID="panTabla" runat="server" HorizontalAlign="Left" BackColor="Transparent">
<table>
<tr>
<td class="td_lblFormulario" colspan="4" style="padding-right: 0px; padding-left: 4px;
background-image: none; padding-bottom: 4px;
padding-top: 0px; background-color: transparent">
<table cellpadding="0" cellspacing="0">
<tr>
<td class="tbl_marcoFormulario">
<uc6:inc_seleccionarOT ID="Inc_seleccionarOT1" runat="server" />
<uc8:busquedaOtProgramacion ID="busquedaOtProgramacion1" runat="server" />
</td>
<td>
<asp:Image ID="Image1" runat="server" ImageUrl="~/images/interfaz/spacer.gif" Width="10px" /></td>
<td class='tbl_marcoFormulario' valign="top">
<uc7:inc_seleccionarTecnico ID="Inc_seleccionarTecnico1" runat="server" />
<bti:BotonImagen ID="imbAceptar" runat="server" CssClass="imb" ImageUrl="../../images/botones/aceptar.png" OnClick="imbAceptar_Click" Visible="False"></bti:BotonImagen>
</td>
<td class="tbl_marcoFormulario">
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td style="display: none" abbr="extenders a cargar">
<act:CollapsiblePanelExtender ID="colTecnicos" runat="server" TargetControlID="panTabla">
</act:CollapsiblePanelExtender>
<act:SliderExtender ID="SliderExtender1" runat="server" BehaviorID="Slider2" BoundControlID="txtDuracion"
EnableHandleAnimation="true" Maximum="24" Orientation="Horizontal" TargetControlID="TextBox1">
</act:SliderExtender>
<asp:TextBox id="TextBox1" runat="server" Visible="False">
</asp:TextBox>
<uc1:fechaAvanzada ID="FechaAvanzada1" runat="server" Visible="true" />
</td>
<td class="tbl_marcoFormulario" colspan="4">
<table>
<tr><td>
<bti:BotonImagen ID="btiDisponibilidades" runat="server" CssClass="imb" ImageUrl="../../images/botones/ort_disp.png" OnClick="btiDisponibilidades_Click" CausesValidation="False" />
<bti:BotonImagen ID="btiProgramacionAutomatica" runat="server" CssClass="imb" ImageUrl="../../images/botones/ort_autoprog.png" OnClick="btiProgramacionAutomatica_Click" CausesValidation="False" />
<bti:BotonImagen ID="btiImprimir" runat="server" CausesValidation="False" ImageUrl="../../images/botones/print.gif"/>
<bti:BotonImagen ID="btnEliminar" runat="server" CausesValidation="false" CssClass="imb" ImageUrl="~/images/botones/quitar.gif" OnClick="btiCerrarEliminarProgramacion_Click"  ></bti:BotonImagen>
</td><td>
<asp:Label id="lbl_horarioLaboralNormal" runat="server" cssclass="lbl"></asp:Label>
<asp:CheckBox id='chb_calendarioCompleto' runat='server' text='<%$Resources:res_etiquetas_ort,diaCompleto %>' AutoPostBack="True" ></asp:CheckBox>

<table cellpadding="3">
<tr>
<td class="itemProgamacion_no_disponible">
<asp:CheckBox id="chkNoDisponibles" runat="server" CssClass="chk" text="<%$ Resources:res_etiquetas_ort,progNoDisponibles %>" checked="true" AutoPostBack="True" OnCheckedChanged="s_seleccionarTipoProgramacion">
</asp:CheckBox></td>
<td class="itemProgamacion_ot_disponible" valign="middle">
<asp:CheckBox id="chkDisponibles" runat="server" CssClass="chk" text="<%$ Resources:res_etiquetas_ort,progDisponibles %>" AutoPostBack="True" OnCheckedChanged="s_seleccionarTipoProgramacion">
</asp:CheckBox></td>
<td class="itemProgamacion_ot_asignada">
<asp:CheckBox id="chkProgramadas" runat="server" CssClass="chk" text="<%$ Resources:res_etiquetas_ort,progProgramadas %>" checked="true" AutoPostBack="True" OnCheckedChanged="s_seleccionarTipoProgramacion">
</asp:CheckBox></td>
<td class="itemProgamacion_reportada">
<asp:CheckBox id="chkReportadas" runat="server" CssClass="chk" text="<%$ Resources:res_etiquetas_ort,progReportadas %>" AutoPostBack="True" OnCheckedChanged="s_seleccionarTipoProgramacion">
</asp:CheckBox></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td style="display: none" abbr=""></td>
<td colspan="4" style="white-space: nowrap">
<asp:HiddenField id="hddIdProgramacion" runat="server"></asp:HiddenField> <asp:HiddenField id="hddDatosHueco" runat="server"></asp:HiddenField> <asp:LinkButton id="lnkSeleccionarProgramacion" runat="server" CausesValidation="False" CommandArgument="1" CommandName="prueba"></asp:LinkButton> <asp:LinkButton id="lnk_seleccionarBlanco" onclick="lnk_seleccionarBlanco_Click" runat="server" CausesValidation="False" CommandArgument="1" CommandName="prueba">
</asp:LinkButton>
<asp:HiddenField id="hddFecha" runat="server" >
</asp:HiddenField>
<asp:LinkButton ID='lnk_fecha' runat='server' CssClass="invisible" CausesValidation='false'>
</asp:LinkButton>
<div id="drag">
<asp:GridView id="grvSemana" runat="server" >
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="fondoProgramacion" />
<PagerStyle CssClass="gri_paginacion" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<HeaderStyle CssClass="gri_titulo" />
</asp:GridView> </div>

</td>
</tr>
</table>
</asp:Panel>
</td>
</tr>
</table>


<div style="display:none; overflow:visible; width:100%; height:100%;" id="divModalDrag" class="modalBackground" ></div>
<table id="tbl_popupDrag" width="49%" border="0" cellpadding="0" cellspacing="0"
    class="tbl_popup" style="top: 234px; left: 480px; z-index: 10016;display:none">
    <tbody>
        <tr id="tr_barraTituloDrag">
            <td width="1%">
                <img name="pop_up_r1_c1" src="../../images/popup/pop_up_r1_c1.jpg" width="11" height="34"
                    border="0">
            </td>
            <td width="98%" background="../../images/popup/pop_up_r1_c4.jpg">
                &nbsp;
            </td>
            <td width="1%">
                <input type="image" name="bti_cerrarDrag" id="bti_cerrarDrag"
                    title="Cerrar" src="../../images/botones/cerrar_pop.jpg" alt="-" onclick="javascript:document.getElementById('tbl_popupDrag').style.display='none';document.getElementById('divModalDrag').style.display='none';return false;"
                    style="border-width: 0px;">
            </td>
        </tr>
        <tr>
            <td width="1%" bgcolor="#577DAC" height="8" background="pop_up_r2_c1.jpg">
                &nbsp;
            </td>
            <td width="98%" bgcolor="#577DAC" height="8" background="pop_up_r2_c1.jpg">
                &nbsp;
            </td>
            <td width="1%" bgcolor="#577DAC" height="8" background="pop_up_r2_c1.jpg">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="td_popIzq">
            </td>
            <td width="98%" valign="top">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td width="25%" valign="top" bgcolor="#E7EEF5">
                                <img id="ctl00_cph_barraHerramientas_popupInterno_image" src="../../images/popup/pop_up_r3_c2.jpg"
                                    style="border-width: 0px;">
                            </td>
                            <td width="75%" valign="top" bgcolor="#E7EEF5">
                                <table width="100%" border="0" cellpadding="10" cellspacing="0">
                                    <tbody>
                                        <tr align="left">
                                            <td>
                                                <span id="ctl00_cph_barraHerramientas_popupInterno_lbl_tituloPopup" class="lbl_tituloDragPopup">
                                                    Cruce Programación</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td bgcolor="#FFFFFF" valign="top">
                                                <p class="comun">
                                                </p>
                                                <div id="ctl00_cph_barraHerramientas_popupInterno_pnl_control" style="background-color: White;
                                                    width: 100%; z-index: 10005">
                                                    <br>
                                                    <div id="lbl_mensajeDrag">¿Está seguro de eliminar este registro?</div>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
            <td class="td_popDer">
            </td>
        </tr>
        <tr>
            <td width="1%" bgcolor="#E7EEF5">
                &nbsp;
            </td>
            <td width="98%" bgcolor="#E7EEF5">
                &nbsp;
            </td>
            <td width="1%" bgcolor="#E7EEF5">
                &nbsp;
            </td>
        </tr>
    </tbody>
</table>



</asp:Content>