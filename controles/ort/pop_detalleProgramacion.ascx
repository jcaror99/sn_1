<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_detalleProgramacion.ascx.vb"
    Inherits="website.samm_componentes.controles_ort_pop_detalleProgramacion" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc3" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="uc2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="act" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada"
    TagPrefix="uc1" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register src="~/controles/general/slider.ascx" tagname="slider" tagprefix="uc4" %>
<%@ Register src="~/controles/general/bocadillo.ascx" tagname="bocadillo" tagprefix="uc5" %>
<%@ Register src="ort_actividadesProgramadas.ascx" tagname="ort_actividades" tagprefix="var" %>
<asp:HiddenField ID="hdd_obligatorio" runat="server" Value="0"/>
<table style="background-color: transparent">
    <tr>
        <td class="tbl_marcoFormulario" colspan="1" style="white-space: nowrap">
            <bti:BotonImagen ID="imb_editarTodas" runat="server" CausesValidation="False" CssClass="imb"
                        ImageUrl="../../images/botones/ort_editDisp.gif" />
            <asp:HyperLink ID="hyp_VerOt" runat="server" class="lnk" ImageUrl="../../images/botones/ort_verot.gif"/>
             <bti:BotonImagen ID="imbRepetir"  runat="server" CssClass="imb" ImageUrl="../../images/botones/ort_irDeNuevo.gif"
                ValidationGroup="editProg"></bti:BotonImagen>&nbsp;<bti:BotonImagen ID="imbImprimir"
                    runat="server" CausesValidation="False" CssClass="imb" ImageUrl="../../images/botones/print.gif" />
            <bti:BotonImagen ID="imbVerReporte" runat="server" CausesValidation="False" CssClass="imb"
                ImageUrl="../../images/botones/ort_verreporte.gif" /></td>
        <td>
            
            <table>
                <tr>
                    <td>
                    </td>
                    <td colspan="2">
            <asp:Label ID="lbl_OT" runat="server" CssClass="lbl_prefijoNumero_OT"></asp:Label>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/interfaz/spacer.gif" Width="10px" /></td>
                    <td style="text-align:center">
                    
                    <asp:Label ID="Label5" runat="server" CssClass="lbl" ></asp:Label><br />
                    <asp:Label ID="lbl_fechalimite" runat="server" CssClass="lbl_detalleProgramacion" Text='' style="white-space:nowrap"></asp:Label>
                    </td>
                    <td style="text-align:center" colspan="2">
                    <asp:Label ID="Label7" runat="server" CssClass="lbl" ></asp:Label><br />
                    <asp:Label ID="lbl_fechasugerida" runat="server" CssClass="lbl_detalleProgramacion" Text='' style="white-space:nowrap"></asp:Label>
                    
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
         <td colspan="2">
            <table id="tbl_infoOT" runat="server">
                <tr>
                    <td>
                    </td>
                    <td colspan="2" align="center">
                        <asp:Label ID="lbl_otReprogramada" runat="server" CssClass="lbl_mensaje"></asp:Label></td>
                    <td align="center" colspan="1">
                    </td>
                    <td align="center" colspan="1">
                    </td>
                    <td align="center" colspan="1">
                    </td>
                </tr>
                <tr>
                    <td>
                        </td>
                    <td>
                        <asp:Label ID="lbl_tecnico" runat="server" CssClass="lbl" ></asp:Label>
                    </td>
                    <td >
                        <asp:Label ID="lbl_tecnico_1" runat="server" CssClass='lbl_detalleProgramacion'></asp:Label>
                        </td>
                        <td>
                        </td>
                        <td >
                         <asp:Label ID="lbl_taller" runat="server" CssClass='lbl'></asp:Label>
                        </td>
                        <td>   
                          <asp:Label ID="lbl_taller_1" runat="server" CssClass='lbl_detalleProgramacion'></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
            <asp:Label ID="lbl_tipoServicio" runat="server" CssClass="lbl"></asp:Label></td>
                    <td>
            <asp:Label ID="lbl_tipoServicio_1" runat="server" 
                CssClass="lbl_detalleProgramacion"></asp:Label></td>
                    <td>
                    </td>
                    <td>
                        <asp:Label ID="lbl_zona" runat="server" CssClass="lbl" ></asp:Label></td>
                    <td>
            <asp:Label ID="lbl_zona_1" runat="server" CssClass="lbl_detalleProgramacion"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
            <asp:Label ID="lbl_equipo" runat="server" CssClass="lbl" ></asp:Label></td>
                    <td>
            <asp:Label ID="lbl_equipo_1" runat="server" CssClass="lbl_detalleProgramacion"></asp:Label></td>
                    <td>
                    </td>
                    <td>
            <asp:Label ID="lbl_serialEquipo" runat="server" CssClass="lbl" ></asp:Label></td>
                    <td>
            <asp:Label ID="lbl_serialEquipo_1" runat="server" CssClass="lbl_detalleProgramacion"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
            <asp:Label ID="lbl_tercero" runat="server" CssClass="lbl"></asp:Label></td>
                    <td>
            <asp:Label ID="lbl_tercero_1" runat="server" 
                CssClass="lbl_detalleProgramacion"></asp:Label></td>
                    <td>
                    </td>
                    <td>
            <asp:Label ID="lbl_sucursal" runat="server" CssClass="lbl" ></asp:Label></td>
                    <td>
            <asp:Label ID="lbl_sucursal_1" runat="server" CssClass="lbl_detalleProgramacion"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
            </td>
                    <td>
            </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
            </td>
                    <td>
            </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        </td>
                    <td>
            </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
    <td colspan="2">
                <table id="tbl_infoNoOT" runat="server" >
                <tr >
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              
                    <td  >
                        <asp:Label ID="Label4" runat="server" CssClass="lbl" ></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtProgramacion" runat="server" CssClass="txt"></asp:TextBox></td>
                </tr>
               </table>

    </td>
    </tr>
    <tr>
    <td></td>
    <td>
    <asp:LinkButton ID="lkb_documento" runat=server CausesValidation="false" CssClass="lbl"  ></asp:LinkButton> 
    </td> 
    </tr>
    <tr id="tr_documento" runat ="server" >
    <td  style="white-space:nowrap" >
            <asp:Label ID="lbl_documento" runat="server" CssClass="lbl"></asp:Label>
     </td>
    <td>
      <uc3:busquedaAvanzada ID="bus_documento" runat=server  a_bol_postBack="true" a_str_tabla="doc_documento.ot"
              a_str_campo="doc_documento_ot_documento_numero,documento.ot" a_str_filtros="doc_documento_ot_doc_estadotipodocumento_estadotipodocumento_codigo not in ('CER','NUE','CAN')" />
    </td>
    </tr>
    <tr>
        <td style="white-space: nowrap">
            <asp:Label ID="Label3" runat="server"  CssClass="lbl"></asp:Label></td>
        <td>
            <uc2:busquedaAvanzadaMultiple ID="busTecnicos" runat="server" a_bln_obligatorio="true"
                a_str_filtros="id_cargo in (select id from seg_cargo where estecnico=1) and active=1  and accesoActivo= 1" a_str_grupoValidacion="detProg"
                a_str_campo="nombre,usuario,id_grupo" a_str_tabla="seg_usuario" />
        </td>
    </tr>
    <tr>
        <td style="white-space: nowrap">
        </td>
        <td>
            <asp:Label ID="lbl_horarioLaboralNormal" runat="server" CssClass="lbl"></asp:Label></td>
    </tr>
    <tr>
    <td colspan="3">
     <var:ort_actividades ID="ort_activida" runat="server" />
    </td>
    </tr>
     <tr>
        <td style="white-space: nowrap">
            <asp:Label ID="Label2" runat="server"  CssClass="lbl"></asp:Label></td>
        <td>
            <uc1:fechaAvanzada ID="fec_diaPuntual" runat="server" a_bln_obligatorio="false" a_str_prefijo="fh">
            </uc1:fechaAvanzada> 
            <asp:TextBox ID="lbl_AmPm" runat="server" Enabled="false" Text="AM" CssClass="lbl"></asp:TextBox>
        </td>
        
    </tr>
    <tr>
        <td style="white-space: nowrap">
            <asp:Label ID="Label1" runat="server"  CssClass="lbl"></asp:Label></td>
        <td>
             <uc4:slider ID="slider1" runat="server" />
        </td>
    </tr>
<tr id="tr_motivoReagenda" runat="server" >
<td style="white-space: nowrap">
<asp:Label ID="lbl_motivoReagendamiento" runat="server"  CssClass="lblobligatorio" ></asp:Label>
</td>
<td>
<uc3:busquedaAvanzada ID="busMotivoReagendamiento" runat="server" a_str_tabla="ort_motivoCancelacion" a_bln_obligatorio="True" a_str_grupoValidacion='form'></uc3:busquedaAvanzada>
</td>
</tr>
    <tr>
        <td style="white-space: nowrap">
            <asp:Label ID="lbl" runat="server"  CssClass="lbl"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtComentario" runat="server" TextMode="MultiLine" CssClass="txt_multilinea"></asp:TextBox></td>
    </tr>
    <tr>
    <td></td>
    <td>
    <asp:Label id="lbl_maxCaracteres" runat="server" CssClass='lbl_mensaje' ></asp:Label>
    </td>
    </tr>
    <tr>
        <td>
        </td>
        <td style="white-space: nowrap">
            <bti:BotonImagen ID="imbGuardar" runat="server" CssClass="imb" ImageUrl="../../images/botones/aceptar.png"
                ValidationGroup="editProg"></bti:BotonImagen></td>
    </tr>
    <tr>
    <td></td>
    <td>
    <table>
    <tr id="tr_editaProg" runat="server">
        <td><asp:CheckBox ID="chb_otrosDias" runat="server" Checked="false" CssClass="lbl" /></td>
        <td><asp:CheckBox ID="chb_otrosTecnicos" runat="server" Checked="false" CssClass="lbl" /></td>
        <td><asp:CheckBox ID="chb_noFestivos" runat="server" Checked="false" CssClass="lbl" /></td>
    </tr>
    </table>
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:Panel ID="pnlCancelar" runat="server">
               <table id="tbl_cancelarGrupo" runat="server">
                <tr><td><uc3:busquedaAvanzada ID="busMotivo" runat="server" 
    a_str_tabla="ort_motivoCancelacion" a_bln_obligatorio="true" 
    a_str_grupoValidacion="cancelProg">
                </uc3:busquedaAvanzada></td><td> <bti:BotonImagen ID="imbAceptarCancelar" runat="server" CssClass="imb" 
                    ImageUrl="../../images/botones/aceptar.png" ValidationGroup="cancelProg" /></td>
                
                    <td id="tr_cancelarGrupo" runat="server" style="white-space:nowrap;">
                        <asp:CheckBox ID="chb_eliminaGrupo" runat="server" Checked="false" Visible="false" Text="$$$1" />
                        <bti:BotonImagen ID="bti_mostrarGrupo" runat="server" CssClass="imb" Visible="false" 
                    ImageUrl="../../images/botones/ort_mostrarGrupo.gif" />
                    </td>
                </tr>
                
                </table>
                <table id="tbl_mostrarGrupo" runat="server" border="0" cellpadding="0" cellspacing="0" style='display:none;width:183px'>
                    <tr> 
                      <td align="left" height="11" valign="top" width="6%"><img src="../../images/boc/bocadillo_r1_c1.png" height="16" width="27"></td>
                      <td background="../../images/boc/bocadillo_r1_c3.png" height="11" width="90%"></td>
                      <td align="right" height="11" valign="top" width="4%"><img src="../../images/boc/bocadillo_r1_c4.png" height="16" width="16"></td>
                    </tr>
                    <tr> 
                      <td align="left" background="../../images/boc/bocadillo_r2_c1.png" valign="top" width="6%">&nbsp;</td>
                      <td id="td_mostrarGrupo" runat ="server"  bgcolor="#ffffff" width="90%"></td>
                      <td align="right" background="../../images/boc/bocadillo_r2_c4.png" valign="top"
                          width="4%">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td align="left" valign="top" width="6%"><img src="../../images/boc/bocadillo_r4_c1.png" height="16" width="27"></td>
                      <td background="../../images/boc/bocadillo_r4_c3.png" width="90%"></td>
                      <td align="right" valign="top" width="4%"><img src="../../images/boc/bocadillo_r4_c4.png" height="16" width="16"></td>
                    </tr>
                </table>
                          
            </asp:Panel>
        </td>
    </tr><tr>
    <td colspan="3" align="right">
            <asp:Label ID="lbl_elaborado" runat="server" ForeColor="Chocolate" CssClass="lbl_mensaje"></asp:Label>
    </td>
    </tr>

    <tr>
        <td style="white-space: nowrap">
        </td>
        <td>
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
</table>
<uc5:bocadillo ID="bocadillo1" runat="server" />

