<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_detalleVisita.ascx.vb"
Inherits="website.samm_componentes.controles_cnt_pop_detalleVisita" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<asp:HiddenField ID="hdi_tipocatalogo" runat="server" />
<table class="tbl_marcoFormulario" id="tbl_botones" style="width: 100%">
<tr class='td_lblFormulario'>
<td align="char" >
<table>
<tr>
<td style="vertical-align:center;" >
<asp:HyperLink ID="lnk_nuevaOT" runat="server" Target="_blank" CssClass='lnk' ></asp:HyperLink>
</td>
<td>
<cc1:BotonImagen ID="bti_formatoImpresion" runat="server" 
ImageUrl="~/images/botones/print.gif" CausesValidation="false"  />

</td>
<td>
<cc1:BotonImagen ID="bti_agregarOT" runat="server" ImageUrl="~/images/botones/ort_verot.gif"
CausesValidation="false"  />
<cc1:BotonImagen ID="bti_eliminar" Enabled="false" runat="server" 
ImageUrl="../../images/botones/quitar.gif" CausesValidation="false" />
</td>
<td>
<asp:CheckBox ID="chb_otrosEquipos" runat="server" Text='<%$Resources:res_etiquetas_cnt,unificar %>' /><br />
</td>
</tr>
</table>
</td>

<td colspan ="0" class="style1" align ="left"  >
<asp:GridView ID="grv_reportes" runat="server" AllowPaging ="true" AutoGenerateColumns="false" ShowHeader="false" GridLines="None"   >
<Columns >
<asp:TemplateField >
<ItemTemplate>
<asp:HiddenField ID="hid_idReporte" runat="server" Value='<%# eval("id_reporteTecnico") %>' />
<asp:HyperLink ID="lnk_reporte" runat="server" target="_blank" CssClass='lnk' Text='<%# eval("reporte") %>' > </asp:HyperLink>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField>
<ItemTemplate >
<cc1:BotonImagen ID="btn_imprimirReporte" runat="server" ImageUrl="~/images/botones/print.gif" CausesValidation="false" Width="25" />
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
<td>
<table>
<tr>
<td class='td_lblFormulario' style="text-align: left">
<asp:Label ID="lbl_equipo_1" runat="server" Text='<%$Resources:res_metadata,equ_equipo_equipo %>'
CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:Label ID="lbl_equipo" runat="server" CssClass="lbl_detalleProgramacion"></asp:Label>
</td>
</tr>
<tr>
<td class='td_lblFormulario' style="text-align: left">
<asp:Label ID="lbl_fecha_1" runat="server" Text='<%$Resources:res_metadata,cnt_visitafija_fecha_ff %>'
CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:Label ID="lbl_fecha" runat="server" CssClass="lbl_detalleProgramacion"></asp:Label>
</td>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_horometro_1" runat="server" Text='<%$Resources:res_metadata,cnt_visitafija_horometro %>'
CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:Label ID="lbl_horometro" runat="server" CssClass="lbl_detalleProgramacion"></asp:Label>
</td>
<tr>
<td class='td_lblFormulario' >
<asp:Label ID="lbl_tercero_1" runat="server" Text='<%$Resources:res_metadata,ter_tercero_tercero %>'
CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:Label ID="lbl_tercero" runat="server" CssClass="lbl_detalleProgramacion"></asp:Label>
</td>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_sucursal_1" runat="server" Text='<%$Resources:res_metadata,ter_sucursal_sucursal %>'
CssClass="lbl"></asp:Label>
</td>
<td>
<asp:Label ID="lbl_sucursal" runat="server" CssClass="lbl_detalleProgramacion"></asp:Label>
</td>
</tr> 
</tr>
</table>
</td>
</tr>
</tr>

<tr>
<td colspan="2">
<asp:Label ID="lbl_mensajecontrato" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
</table>
<table>
<tr>
<td valign="top">
<asp:Panel ID="pan_editarVisita" runat="server">
<table id="tbl_editarDatos" runat="server" width="100%">
<tr>
<td style="width: 174px;">
<asp:Label ID="lbl_visita" runat="server" CssClass="lbl"></asp:Label>
</td>
<td colspan="3">
<asp:TextBox ID="txt_visitafija" runat="server" CssClass="txt" Width="400px"></asp:TextBox>
</td>
</tr>
<tr>
<td class='td_lblFormulario' align='Left'>
<asp:Label ID="lbl_tercero_2" runat="server" Text='<%$Resources:res_metadata,cat_catalogo_tempario_catalogo_tempario %>'
CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<uc2:busquedaAvanzada ID="bus_tempario" runat="server" a_bln_obligatorio="true" a_str_grupoValidacion="cnt"
a_str_tabla="cat_catalogo.tempario" />
</td>
<td id="td_listadoTemparios" runat="server">
</td>
<td class="td_lblFormulario">
<asp:CheckBox ID="chb_unicavisita" runat="server"/>
</td>
</tr>
<tr>
</tr>
<tr>
<td align="right" colspan="3">
<cc1:BotonImagen ID="bti_editarVisita" runat="server" ImageUrl="~/images/botones/aceptar.jpg" CausesValidation="false"
/>
</td>
</tr>
<tr><td>
<asp:Label ID="lbl_mensajeEditarVisita" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td></tr>
</table>
</asp:Panel>
</td>
</tr>
<tr>
<td valign="top">
<asp:Panel ID="pnl_corrimiento" runat="server" GroupingText="<%$ Resources:res_etiquetas_cnt,ejecutarCorrimiento %>">
<table id="tbl_fechaOT" runat="server" width="100%">
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_fechaOT"  runat="server" Text='<%$Resources:res_metadata,cnt_visitafija_fecha_ff %>'
CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:fechaAvanzada ID="fec_fechaOT" runat="server" a_str_prefijo="ff" a_bln_obligatorio="true"
a_str_grupoValidacion="pop_cor" />
</td>
<td colspan="2" class="td_lblFormulario">
<asp:CheckBox ID="chb_corrimiento" runat="server" Checked="false" Text="<%$Resources:res_etiquetas_cnt,corrimientoOtros %>" />
</td>
</tr>
<tr><td colspan="2" class="td_lblFormulario">
<asp:CheckBox ID="chb_corrimientoSiguientesVisitas" runat="server" Checked="true"/>
</td></tr>
<tr>
<td align="right" colspan="4">
<cc1:BotonImagen ID="bti_corrimiento" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
ValidationGroup="pop_cor" />
</td>
</tr>
<tr>
<td align="right" colspan="4">
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
</table>
</asp:Panel>
</td>
</tr>
<tr>
<td valign="top">
<asp:Panel ID="pnl_ajustarCronograma" runat="server" GroupingText="<%$ Resources:res_etiquetas_cnt,ajustarCronograma %>">
<table id="tbl_ajustarCronograma">
<tr>
<td>
<table id="tbl_infoHorometro" runat="server" width="100%">
<tr>
<td class="td_lblFormulario">
<asp:Label ID="lbl_fecha_lectura" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,equ_equipo_ultimalectura_fh %>"></asp:Label>
</td>
<td class="td_controlesFormulario">
<uc1:fechaAvanzada ID="fec_fecha_lectura" runat="server" a_bln_obligatorio="true"
a_str_grupoValidacion="horo" a_str_prefijo="fh" />
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_horometro_h" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,equ_equipo_horometroactual %>"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:TextBox ID="txt_horometro" runat="server" CssClass="txt_numero"></asp:TextBox><asp:RequiredFieldValidator
ID="rfv_horometro" runat="server" ControlToValidate="txt_horometro" CssClass="lbl_mensaje"
ForeColor="" ValidationGroup="horo">*</asp:RequiredFieldValidator><act:filteredtextboxextender
id="ftb_horometro" runat="server" filtertype="Numbers,Custom" targetcontrolid="txt_horometro">                                            </act:filteredtextboxextender>
</td>
</tr>
<tr>
<td class="td_lblFormulario">
<asp:Label ID="lbl_promedio" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,cnt_contratoequipo_promedio %>"></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:TextBox ID="txt_promedio" runat="server" CssClass="txt_numero"></asp:TextBox><asp:RequiredFieldValidator
ID="rfv_promedio" runat="server" ControlToValidate="txt_promedio" CssClass="lbl_mensaje"
ForeColor="" ValidationGroup="horo">*</asp:RequiredFieldValidator><act:filteredtextboxextender
id="ftb_promedio" runat="server" filtertype="Numbers,Custom" targetcontrolid="txt_promedio">                                            </act:filteredtextboxextender>
</td>
<td class="td_lblFormulario">
<asp:Label ID="lbl_ajustarManuales" runat="server" Visible="false" CssClass="lbl"></asp:Label>
</td>
<td style="white-space: nowrap;">
<asp:RadioButtonList ID="rbl_ajustarManuales" runat="server" Visible="false" CssClass="rbl">
<asp:ListItem Selected="True" Value="0"></asp:ListItem>
<asp:ListItem Value="1"></asp:ListItem>
</asp:RadioButtonList>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td align="right" colspan="4">
<cc1:BotonImagen ID="bti_ajustarCronograma" runat="server" ImageUrl="~/images/botones/aceptar.jpg"
ValidationGroup="horo" />
</td>
</tr>
</table>
</asp:Panel>
</td>
</tr>
<tr>
<td colspan="2">
<asp:Panel ID="pnl_adiciones" runat="server" GroupingText="<%$ Resources:res_etiquetas_cnt,adiciones %>">
<table width="100%">
<tr>
<td>
<asp:Label ID="lbl_tercero_3" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,cat_tipoCatalogo_tipoCatalogo %>"></asp:Label>
</td>
<td>
<uc2:busquedaAvanzada ID="bus_tipoCatalogo" runat="server" a_str_tabla="cat_tipoCatalogo"  a_bol_postBack="true"  />
</td>
<td>
<asp:Label ID="lbl_tercero_4" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,cat_catalogo_catalogo %>"></asp:Label>
</td>
<td>
<uc2:busquedaAvanzada ID="bus_catalogo" runat="server" a_bol_postBack="true" a_str_tabla="cat_catalogo" />
</td>
</tr>
</table>
<table width="100%">
<tr>
<td>
<asp:GridView ID="grd_catalogo" runat="server" AutoGenerateColumns="False">
<Columns>
<asp:TemplateField HeaderText="id">
<ItemTemplate>
<asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>'></asp:Label><asp:Label
ID="lbl_id_catalogo" runat="server" Text='<%# eval("id_catalogo") %>'></asp:Label></ItemTemplate>
<ItemStyle CssClass="invisible" />
<HeaderStyle CssClass="invisible" />
</asp:TemplateField>
<asp:TemplateField HeaderText="<%$Resources:res_campoGrilla,cat_catalogo_catalogo %>">
<ItemTemplate>
<asp:Label ID="lbl_catalogo" runat="server" CssClass="lbl_grilla" Text='<%# eval("catalogo") %>'></asp:Label></ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="<%$Resources:res_campoGrilla,cnt_visitafija_catalogo_precio %>">
<ItemTemplate>
<asp:TextBox ID="txt_precio" runat="server" CssClass="txt_numeroGrilla" Text='<%# eval("precio") %>'></asp:TextBox><asp:RequiredFieldValidator
ID="rfv_precio" runat="server" ControlToValidate="txt_precio" CssClass="lbl_mensaje"
ForeColor="" SetFocusOnError="True" ValidationGroup="c">*</asp:RequiredFieldValidator><act:filteredtextboxextender
id="ftb_precio" runat="server" filtertype="Numbers,Custom" targetcontrolid="txt_precio" />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="<%$Resources:res_campoGrilla,cnt_visitafija_catalogo_cantidad %>">
<ItemTemplate>
<asp:TextBox ID="txt_cantidad" runat="server" CssClass="txt_numeroGrilla" Text='<%# eval("cantidad") %>'></asp:TextBox><asp:RequiredFieldValidator
ID="rfv_cantidad" runat="server" ControlToValidate="txt_cantidad" CssClass="lbl_mensaje"
ForeColor="" SetFocusOnError="True" ValidationGroup="c">*</asp:RequiredFieldValidator><act:filteredtextboxextender
id="ftb_cantidad" runat="server" filtertype="Numbers,Custom" targetcontrolid="txt_cantidad" />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField ShowHeader="False">
<ItemTemplate>
<asp:ImageButton ID="imbEliminar" runat="server" CausesValidation="False" CommandName="Delete"
ImageUrl="~/images/iconos/eliminar.gif" /></ItemTemplate>
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
<tr>
<td align="right">
<cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="~/images/botones/aceptar.jpg"
ValidationGroup="c"></cc1:BotonImagen>
</td>
</tr>
</table>
</asp:Panel>
</td>
</tr>
</table>
<asp:LinkButton ID="lnk_crearOT" runat="server" CssClass='invisible'></asp:LinkButton>