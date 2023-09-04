<%@ Page Language="VB" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master"
AutoEventWireup="false" CodeBehind="evento.aspx.vb" Inherits="website.samm_web.forms_dis_evento" %>

<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada"
TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada"
TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="textoAvanzado"
TagPrefix="uc3" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/calendario4meses.ascx" TagName="calendario4meses"
TagPrefix="uc4" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
TagPrefix="uc8" %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="uc5" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="uc6" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="pop" %>
<%@ Register src="~/controles/dis/pop_turnos.ascx" tagname="pop_turnos" tagprefix="uc7" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" runat="Server">
    <asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo' Text="<%$ Resources:res_tituloPagina, forms_dis_evento%>"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" runat="Server">
    <table>
<tr>
<td valign="top">
<uc5:bocadillo ID="bocadillo1" runat="server" />
<uc4:calendario4meses ID="cal_calendario" runat="server" />
</td>
<td valign="top">
<table class="tbl_marcoFormulario">
<tr>
    <td>
<asp:Panel ID="panel2" runat="server">
<table>
<tr>
    <td>
        <cc1:BotonImagen ID="bti_nuevo_" runat="server" CssClass="imb" 
            ImageUrl="../../images/botones/agregar.gif" />
        <cc1:BotonImagen ID="bti_imprimir" runat="server" CssClass="imb" 
            ImageUrl="../../images/botones/print.gif" />
        <%--<cc1:BotonImagen ID='bti_popTurno' runat='server' ImageUrl='../../images/botones/turnos.gif'
CssClass='imb' />--%>
    </td>
    <td class="td_lblFormulario">
        <asp:Label ID="lbl_id_equipo" runat="server" CssClass="lbl"></asp:Label>
    </td>
    <td>
        <uc1:busquedaAvanzada ID="bus_equipo" runat="server" a_bln_obligatorio="true" 
            a_bol_postBack="true" a_str_grupoValidacion="form" a_str_tabla="equ_equipo" a_str_filtros="cat_catalogo_equipo_id_subTipoCatalogo=1" />
    </td>
    <td>
        <asp:HyperLink ID="hyp_verEquipo" runat="server" CssClass="lnk" 
            ImageUrl="../../images/iconos/componente_dis.gif"></asp:HyperLink>
    </td>
    <td class="td_lblFormulario">
        <asp:Label ID="lbl_fecha" runat="server" CssClass="lbl">Fecha:</asp:Label>
    </td>
    <td>
        <uc2:fechaAvanzada ID="fec_fecha" runat="server" a_str_prefijo="ff" />
        <cc1:BotonImagen ID="bti_fecha" runat="server" CssClass="imb" 
            ImageUrl="../../images/botones/buscarBA.gif" />
    </td>
</tr>
<tr><td></td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_estadoAct' runat='server' CssClass='lbl'></asp:Label>
</td>
<td>
<asp:Label ID="lbl_estadoActual" runat="server" CssClass="lbl_resaltado"></asp:Label>
</td>
<td style="white-space: nowrap" class='td_lblFormulario'>
<asp:Label ID='lbl_horometroAnt' runat='server' CssClass='lbl'></asp:Label>
</td>
<td style="white-space: nowrap;">
<asp:Label ID='lbl_horometroAnterior' runat='server' CssClass='lbl_'>
</asp:Label>
</td>
</tr>
<tr><td></td>
<td colspan="2" align="left" style="padding-left:10px;">
</td>

<td style="white-space: nowrap" class='td_lblFormulario'>
<asp:Label ID='lbl_horometroSig' runat='server' CssClass='lbl'></asp:Label>
</td>
<td style="white-space: nowrap;">
<asp:Label ID='lbl_horometroSiguiente' runat='server' CssClass='lbl_'>
</asp:Label>
</td>
</tr>
</table>
</asp:Panel>
    </td>
</tr>
<tr>
<td>
<asp:Panel ID="pnl_eventosAbiertos" runat ="server" CssClass="pnl" >
<table> 
<tr>
<td>
<asp:GridView ID="grd_eventosAbiertos" runat="server" AutoGenerateColumns="False"    >
<Columns >
<asp:TemplateField >
<HeaderTemplate>
<asp:Label id="lbl_cabeceraEventoAbierto" runat ="server" > </asp:Label>
</HeaderTemplate> 
<ItemTemplate >
<asp:Label ID="lbl_idEventoAbierto" runat="server"  cssclass="invisible" Text='<%# eval("id") %>'  ></asp:Label>
<asp:Label ID="lbl_eventoAbierto" runat="server" CssClass="lbl" text='<%# eval("evento") %>' ></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField>
<HeaderTemplate>
<asp:Label id="lbl_horaInicioEventoAbierto" runat ="server" > </asp:Label>
</HeaderTemplate> 
<ItemTemplate >
<asp:Label ID="lbl_fechaInicioEventoAbierto" runat="server" CssClass="lbl" text='<%# eval("fecha") %>' ></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField>
<HeaderTemplate>
<asp:Label id="lbl_horaEventoAbierto" runat ="server" > </asp:Label>
</HeaderTemplate> 
<ItemTemplate >
<uc2:fechaAvanzada ID='fec_fechaHoraFinEventoAbierto' runat='server' a_str_prefijo='hh' a_bln_obligatorio ="false" ></uc2:fechaAvanzada>
</ItemTemplate>
</asp:TemplateField>
</Columns>
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
</asp:GridView>
</td>
</tr>
<tr>
<td>
<table>
<tr>
<td>
<asp:Label ID='lbl_estadoEquipoEventosAbiertos' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td>
<uc1:busquedaAvanzada ID='bus_estadoEquipoEventosAbiertos' runat='server' a_str_tabla='equ_estadoEquipo' a_bln_obligatorio='True'
a_str_grupoValidacion='form2' />
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<asp:ValidationSummary ID='vls_eventosAbiertos' runat='server' ValidationGroup='form2' CssClass='lbl_mensaje'
ForeColor='' />
</td>
</tr>
<tr>
<td>
<asp:Label id="lbl_mensajeEventoAbierto" runat ="server" CssClass="lbl_mensaje"  > </asp:Label>
</td>
</tr>
<tr>
<td >
<cc1:BotonImagen ID='bti_guardarEventosAbiertos' runat='server' ImageUrl='../../images/botones/aceptar.png' CssClass='imb' ValidationGroup='form2' />
</td>
</tr>
 </table>
</asp:Panel>
</td>
</tr>
<tr>
<td colspan="6">
<uc7:pop_turnos ID="pop_turnos1" runat="server" Visible="false"  />
</td>
</tr>
<tr>
<td colspan="4">
<asp:Panel ID="pnl_eventos" runat="server" CssClass="pnl"  >
<asp:LinkButton ID="bti_nuevo" runat="server" CssClass="lnk" Font-Underline="true"></asp:LinkButton>
<asp:GridView ID="grd_evento" runat="server" AutoGenerateColumns="False">
<Columns>
<asp:CommandField ButtonType="Button" ShowSelectButton="True" HeaderStyle-CssClass="invisible"
ItemStyle-CssClass="invisible" ControlStyle-CssClass="invisible" />
<asp:TemplateField HeaderText="id">
<ItemTemplate>
<asp:Label ID="lbl_id" runat="server" Text='<%# eval("id")%>' CssClass="lbl"></asp:Label>
</ItemTemplate>
<ItemStyle CssClass="invisible" />
<HeaderStyle CssClass="invisible" />
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,dis_evento_evento%>'>
<ItemTemplate>
<asp:Label ID="lbl_evento" runat="server" Text='<%# eval("evento")%>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,dis_evento_notas %>'>
<ItemTemplate>
<asp:Label ID="lbl_notas" runat="server" Text='<%# eval("notas")%>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,seg_usuario_nombre %>'>
<ItemTemplate>
<asp:Label ID="lbl_nombre" runat="server" Text='<%# eval("seg_usuario_nombre")%>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<%--<asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,dis_motivoevento_motivoevento %>'>
<ItemTemplate>
<asp:Label ID="lbl_motivo" runat="server" Text='<%# eval("dis_motivoevento_motivoevento")%>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>--%>
<asp:TemplateField HeaderText='fechaHoraInicio_hh'>
<ItemTemplate>
<asp:Label ID="lbl_inicio" runat="server" Text='<%# Format(eval("fechaHoraInicio_hh"),"dd/MM/yyyy HH:mm")%>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='fechaHoraFin_hh'>
<ItemTemplate>
<asp:Label ID="lbl_fin" runat="server" Text='<%# Format(eval("fechaHoraFin_hh"),"dd/MM/yyyy HH:mm")%>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,equ_trazabilidad_horometro %>'>
<ItemTemplate>
<asp:Label ID="lbl_horometro" runat="server" Text='<%# eval("equ_trazabilidad_horometro")%>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText=''>
<ItemTemplate>
<cc1:BotonImagen ID='bti_eliminar' runat='server' ImageUrl='../../images/botones/eliminarTAB.gif'
CssClass='imb' CommandArgument='<%# eval("id")%>' CommandName="Delete" CausesValidation="false" />
</ItemTemplate>
</asp:TemplateField>
</Columns>
<RowStyle CssClass="gri_item" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
</asp:GridView>
</asp:Panel> 
</td>
</tr>
<tr>
<td colspan="4">
<asp:Panel ID="Pabnel1" runat="server" CssClass="pnl" DefaultButton="imbGuardar">
<table>
<tr>
<td>
<table>
<tr>
<td  >
<asp:CheckBox ID="chb_guardarEvento" runat="server" Checked="true" AutoPostBack="true" />
</td>
<td align="right" style=" width:75% " >
<cc1:BotonImagen ID='bti_impresionFalla' runat='server' ImageUrl='../../images/botones/print.gif'
CssClass='imb' />
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td valign="top">
<table>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_motivoEvento' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID="bus_motivoEvento" runat="server" a_bln_obligatorio="true"  a_bol_postBack="true"   
a_str_grupoValidacion="form" a_str_tabla="dis_motivoEvento" />
</td>
<td colspan="2" class='td_controlesFormulario'>
<asp:TextBox ID='txt_motivoEvento' runat='server' CssClass='txt_formulario'></asp:TextBox>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_falla' runat='server' CssClass='lbl' Visible="false"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID="bus_falla" runat="server" a_str_grupoValidacion="form" a_str_tabla="equ_falla" Visible="false" a_bol_recursivoTodoelArbol="true" />
</td>
<td>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_causa' runat='server' CssClass='lbl' Visible="false"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID="bus_causaFalla" runat="server"
a_str_grupoValidacion="form" a_str_tabla="equ_falla" Visible="false" a_bol_recursivoTodoelArbol="true"/>
</td>
<td>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_metodoDeteccion' runat='server' CssClass='lbl' Visible="false"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID="bus_metodoDeteccion" runat="server"
a_str_grupoValidacion="form" a_str_tabla="dis_metodoDeteccion" Visible="false" />
</td>
<td>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_codigo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario' colspan="3">
<asp:TextBox ID='txt_codigo' runat='server' CssClass='txt' ></asp:TextBox>
</td>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_notas' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario' colspan="3">
<asp:TextBox ID='txt_notas' runat='server' MaxLength='100' CssClass='txt_multilinea' TextMode="MultiLine"></asp:TextBox>
</td>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_fechaHoraInicio_ff' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc2:fechaAvanzada ID='fec_fechaHoraInicio_ff' runat='server' a_str_prefijo='hh'
 a_str_grupoValidacion='form'></uc2:fechaAvanzada>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_duracion' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<table>
<tr>
<td>
<asp:TextBox ID="txt_duracion_dia" runat="server" CssClass="txt_entero"></asp:TextBox>
</td>
<td style="padding:0px 4px 0px 4px">
<asp:Label ID="lbl_diaHora" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<uc2:fechaAvanzada ID='fec_duracion' runat='server' a_str_prefijo='hh' a_str_grupoValidacion=''></uc2:fechaAvanzada>
</td>
<td>
<asp:Label ID='lbl_totalHoras' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_fechaHoraFin_ff' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc2:fechaAvanzada ID='fec_fechaHoraFin_ff' runat='server' a_str_prefijo='fh'></uc2:fechaAvanzada>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_fechaHoraEstimada_fh' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc2:fechaAvanzada ID='fec_horaEstimada_fh' runat='server' a_str_prefijo='fh'></uc2:fechaAvanzada>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_horometro' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_horometro' runat='server' CssClass='txt_numero'></asp:TextBox>
<asp:RequiredFieldValidator ID="rfv_horometro" runat="server" ControlToValidate="txt_horometro"
CssClass="lbl_mensajeHorometro" ForeColor='Red' ValidationGroup="form">*</asp:RequiredFieldValidator>
<act:FilteredTextBoxExtender ID='ftb_horometro' runat='server' TargetControlID='txt_horometro'
FilterType='Numbers,Custom' />
<asp:HiddenField ID="hdd_horometro" runat="server" />
</td>
<td class='td_lblFormulario'>
    <asp:Label ID='lbl_id_usuario' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID='bus_usuario' runat='server' a_str_tabla='seg_usuario'
a_str_grupoValidacion='form' />
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_estadoEquipo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID='bus_estadoEquipo' runat='server' a_str_tabla='equ_estadoEquipo' a_bln_obligatorio='True'
a_str_grupoValidacion='form' />
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_ot' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:busquedaAvanzada ID='bus_ot' runat='server' a_str_tabla='doc_documento.ot' a_bln_obligatorio='False' a_bln_mostrarNuevoConDrop="true" />
<uc8:busquedaAvanzadaMultiple ID='bus_actividades' runat='server' a_str_tabla='cat_catalogo.actividad' a_bln_obligatorio='False'/>
</td>
</tr>

<tr>
    <td class='td_lblFormulario'>
        <asp:Label ID='lbl_estadoEvento' runat='server' CssClass='lblobligatorio'></asp:Label>
    </td>

    <td class='td_controlesFormulario'>
        <table>
            <tr>
                <td>
                    <uc1:busquedaAvanzada ID='bus_estadoEvento' runat='server' a_str_tabla='dis_estadoEvento' a_bln_obligatorio="true" a_str_grupoValidacion="form" />
               </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID='txt_observacionesEstadoEvento' runat='server' CssClass='txt' ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <uc2:fechaAvanzada ID="fec_estadoEvento" runat="server" a_str_prefijo='fh' 
                    a_bln_obligatorio="true" a_str_grupoValidacion="form" a_bol_deshabilitar="true" />
                </td>
            </tr>
        </table>
    </td>
    <td colspan="2">
    <table>
    <tr>
    <td class='td_lblFormulario'>
        <asp:Label ID='lbl_tipoEvento' runat='server' CssClass='lblobligatorio'></asp:Label>
    </td>   
    <td class='td_controlesFormulario'>
        <table>
        <tr>
        <td>
        <asp:RadioButtonList ID="rbl_tipoEvento" runat="server" RepeatDirection="Horizontal" CssClass="rbl"></asp:RadioButtonList>
        </td>
        <td>
        <asp:RequiredFieldValidator ID="rfv_tipoEvento" runat="server" ControlToValidate="rbl_tipoEvento"
            CssClass="lbl_mensajeHorometro" ForeColor='Red' ValidationGroup="form">*</asp:RequiredFieldValidator>
        </td>
        </tr>
        </table>
    </td> 
    </tr>
    
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID='lbl_afecta' runat='server' CssClass='lblobligatorio'></asp:Label>
        </td>  

        <td class='td_controlesFormulario'>
        <table>
        <tr>
        <td>
        <asp:RadioButtonList ID="rbl_afectaCliente" runat="server" RepeatDirection="Horizontal" CssClass="rbl"/>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfv_afectaCliente" runat="server" ControlToValidate="rbl_afectaCliente"
                CssClass="lbl_mensajeHorometro" ForeColor= "Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
        </td>
        </tr>
        </table>
            
        </td>
    </tr>
    <tr>
       <td class='td_lblFormulario'>
       <asp:Label ID='lbl_sistema' runat='server' CssClass='lblobligatorio'></asp:Label>
       </td>
       <td>
       <uc1:busquedaAvanzada ID="bus_sistema" runat="server"  a_str_tabla="cat_sistema" a_bln_obligatorio="true" a_str_grupoValidacion ="form"  />
       </td>
    </tr>
    </table>
    </td>
       
</tr>

<tr>
<td colspan="3">
<asp:Label ID="lbl_mensajeHorometro" runat="server" CssClass="lbl_mensaje"></asp:Label>
<pop:popup ID="popInterno" runat="server" a_bol_mostrarSAMM="true" />
<bti:BotonImagen ID="bti_historicoEstatus" runat="server" CssClass="imb" ImageUrl="../../images/botones/cat_valoresDefecto.gif" OnClick="bti_historicoEstatus_Click" CausesValidation="False" />
</td>
</tr>
</table>
</td>
<td valign="top">
<table>
<tr>
<td>
<asp:GridView ID="grd_catalogo" runat="server" AutoGenerateColumns="False">
<Columns>
<asp:CommandField ShowSelectButton="True">
<HeaderStyle CssClass="invisible" />
<ItemStyle CssClass="invisible" />
</asp:CommandField>
<asp:TemplateField HeaderText="id">
<ItemTemplate>
<asp:Label ID="lbl_id" runat="server" Text='<%# eval("id")%>' CssClass="lbl"></asp:Label>
<asp:Label ID="lbl_idcatalogo" runat="server" Text='<%# eval("id_catalogo")%>' CssClass="lbl"></asp:Label>
<asp:Label ID="lbl_idObra" runat="server" Text='<%# eval("idObra")%>' CssClass="lbl"></asp:Label>
</ItemTemplate>
<ItemStyle CssClass="invisible" />
<HeaderStyle CssClass="invisible" />
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,cat_catalogo_catalogo%>'>
<ItemTemplate>
<asp:Label ID="txt_catalogo" runat="server" CssClass='lbl' Text='<%# eval("catalogo")%>'
Visible='<%# IIF(eval("id")>=0,true,false) %>'></asp:Label>
<asp:Label ID="Label1" runat="server" CssClass='lbl_mensaje' Text='<%# eval("catalogo")%>'
Visible='<%# IIF(eval("id")>=0,false,true) %>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,dis_evento_catalogo_cantidad %>'>
<ItemTemplate>
<asp:TextBox ID="txt_cantidad" runat="server" CssClass='txt_numero' Text='<%# eval("cantidad")%>'
ValidationGroup="form" Visible='<%# IIF(eval("id")>=0,true,false) %>'></asp:TextBox><asp:RangeValidator ID ="rnv_cantidad" ControlToValidate="txt_cantidad" runat ="server" CssClass="lbl_mensaje"  ErrorMessage="*">
</asp:RangeValidator><asp:RequiredFieldValidator ID="rfv_cantidad"
runat="server" ControlToValidate="txt_cantidad" CssClass="lbl_mensaje" ValidationGroup="form1">*</asp:RequiredFieldValidator>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,dis_evento_catalogo_valorunitario %>'>
<ItemTemplate>
<asp:TextBox ID="txt_valorUnitario" runat="server" CssClass='txt_numero' Text='<%# eval("valorUnitario")%>'
ValidationGroup="form" Visible='<%# IIF(eval("id")>=0,true,false) %>'></asp:TextBox><asp:RequiredFieldValidator ID="rfv_valorUnitario"
runat="server" ControlToValidate="txt_valorUnitario" CssClass="lbl_mensaje" ValidationGroup="form1">*</asp:RequiredFieldValidator>
<act:FilteredTextBoxExtender ID='ftb_valorUnitario' runat='server' TargetControlID='txt_valorUnitario' FilterType='Numbers,Custom'  Enabled='<%# IIF(eval("id")>=0,true,false) %>'/>
</ItemTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,dis_evento_catalogo_equipoauxiliar%>'>
<ItemTemplate>
<asp:CheckBox ID="chb" runat="server" Checked='<%# eval("equipoauxiliar") %>' Text="" Visible='<%# IIF(eval("id")>=0,true,false) %>' /></ItemTemplate>
</asp:TemplateField>

<asp:TemplateField>
<ItemTemplate>
<asp:TextBox ID="txt_observaciones" runat="server" CssClass='txt' Text='<%# eval("observaciones")%>'
ValidationGroup="form" Visible='<%# IIF(eval("id")>=0,true,false) %>'></asp:TextBox>
</ItemTemplate>
</asp:TemplateField>

</Columns>
<RowStyle CssClass="gri_item" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
</asp:GridView>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table id='tbl_guardarformulario'>
<tr>
<td>
<asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje'
ForeColor='' />
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
<td valign='middle' align='right'>
<cc1:BotonImagen ID='imbGuardar' runat='server' ImageUrl='../../images/botones/aceptar.png'
ValidationGroup='form' CssClass='imb' />
</td>
</tr>
</table>
</td>
</tr>
</table>
</asp:Panel>
</td>
</tr>
</table>
</td>
</tr>
</table><asp:HiddenField ID="hdd_numCol" runat="server" />
<pop:popup ID="pop" runat="server" />
</asp:Content>