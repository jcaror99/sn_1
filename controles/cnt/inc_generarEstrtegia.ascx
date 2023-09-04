<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_generarEstrtegia.ascx.vb"
Inherits="website.samm_componentes.controles_cnt_inc_generarEstrtegia" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc2" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
<tr>
<td align="center">
<cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="~/images/botones/siguiente.png"
ValidationGroup="cnt" />
</td>
</tr>
<tr>
<td colspan="2">
<asp:ValidationSummary ID='vls' runat='server' ValidationGroup='cnt' CssClass='lbl_mensaje'
ForeColor='' HeaderText='<%$Resources:res_mensajes,camposObligatorios %>'></asp:ValidationSummary>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="Label4" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,dis_obra_fechainicial_ff %>"></asp:Label>
</td>
<td>
<uc1:fechaAvanzada ID="fec_inicioVisitasInicial"  a_bln_obligatorio="false" runat="server" a_str_prefijo="ff" />
</td>
</tr>
<tr style="display: none">
<td>
<asp:Label ID="Label1" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,cnt_contrato_fechainicio_ff %>"></asp:Label>
</td>
<td>
<asp:Label ID="lbl_fechaInicial" runat="server" CssClass="txt_formulario_blo"></asp:Label>
</td>
<td>
</td>
</tr>
<tr style="display: none">
<td>
<asp:Label ID="Label2" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,cnt_contrato_fechafin_ff %>"></asp:Label>
</td>
<td>
<asp:Label ID="lbl_fechaFin" runat="server" CssClass="txt_formulario_blo"></asp:Label>
</td>
<td>
</td>
</tr>
<tr>
<td colspan="2">
<asp:Label ID="lbl_mensaje0" runat="server" CssClass="lbl" Text="<%$Resources:res_etiquetas_cnt,seleccioneAlgo%>"></asp:Label>
</td>
</tr>
</table>
<asp:CustomValidator ID="cst" runat="server" ClientValidationFunction="validarCheck"
ControlToValidate="txt_cada"></asp:CustomValidator>
<table cellpadding="0" cellspacing="0">
<tr>
<td colspan="2" style="padding: 10px">
<table cellspacing="0" cellpadding="0" style="border-style: solid; border-width: 1px;">
<tr class="gri_titulo">
<td style="border-right: solid; border-right-width: 1px;">
<asp:CheckBox ID="chlP" AutoPostBack='true' runat="server" Text='<%$Resources:res_controles,periodo %>' />
</td>
<td>
<asp:CheckBox ID="chlT" AutoPostBack='true' runat="server" Text='<%$Resources:res_controles,tempario %>' />
</td>
<td>
<asp:CheckBox ID="chlA" AutoPostBack='true' runat="server"  />
</td>
</tr>
<tr>
<td style="border-right: solid; border-right-width: 1px; width: 300px">
<table id="tbl_periodo" runat="server" style="text-align: left">
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="Label3" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,cnt_contratodetallevisita_fecha_ff %>" Visible="false"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:fechaAvanzada ID="fec_inicioVisitas" runat="server" a_str_prefijo="ff" Visible = "false" />
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_frecuencia" runat="server" Text='<%$Resources:res_metadata,cnt_contratodetallevisita_frecuencia %>'
CssClass="lbl"></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:DropDownList ID="drp_frecuencia" runat="server" CssClass="drp">
<asp:ListItem Text='<%$Resources:res_controles,seleccione %>' Selected="True" Value=""></asp:ListItem>
<asp:ListItem Value="1" Text='<%$Resources:res_controles,semanal %>'></asp:ListItem>
<asp:ListItem Value="2" Text='<%$Resources:res_controles,mensual %>'></asp:ListItem>
</asp:DropDownList>
<asp:RequiredFieldValidator ID='rfv_frecuencia' runat='server' ControlToValidate='drp_frecuencia'
ValidationGroup="cnt" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID="lbl_cada" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,cnt_contratodetallevisita_cadan %>'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID="txt_cada" runat="server" CssClass="txt"></asp:TextBox><asp:RequiredFieldValidator
ID='rfv_cada' runat='server' ControlToValidate='txt_cada' ValidationGroup="cnt"
SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
id='ftb_cada' runat='server' targetcontrolid='txt_cada' filtertype='Numbers,Custom' />
<asp:RangeValidator ID="rgv_cada" runat="server" ControlToValidate="txt_cada" MaximumValue="60"
MinimumValue="0" Type="Integer" CssClass='lbl_mensaje' ValidationGroup="cnt"
ForeColor="" ErrorMessage="<%$ Resources: res_mensajes,rangoInvalido %>">*</asp:RangeValidator>
</td>
</tr>
<tr>
<td class="td_lblFormulario">
<asp:Label ID="lbl_estrategia" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,cnt_contratodetallevisita_estrategia %>'></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:DropDownList ID="drp_estrategia" runat="server" CssClass="drp">
</asp:DropDownList>
<asp:RequiredFieldValidator ID='rfv_estrategia' runat='server' ControlToValidate='drp_estrategia'
ValidationGroup="cnt" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td class="td_lblFormulario">
<asp:Label ID="lbl_dia" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,cnt_contratodetallevisita_dia %>'></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:DropDownList ID="drp_dias_1" runat="server" CssClass="drp">
</asp:DropDownList>
<asp:RequiredFieldValidator ID='rfv_dias_1' runat='server' ControlToValidate='drp_dias_1'
ValidationGroup="cnt" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><asp:DropDownList
ID="drp_dias_2" runat="server" CssClass="drp">
</asp:DropDownList>
<asp:RequiredFieldValidator ID='rfv_dias_2' runat='server' ControlToValidate='drp_dias_2'
ValidationGroup="cnt" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_diaHabil' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:DropDownList ID="drp_diaHabil" runat="server"  CssClass='drp' ></asp:DropDownList>
</td>
</tr>
<tr>
<td class="td_lblFormulario">
<asp:Label ID="lbl_tempario" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,cat_catalogo_tempario_catalogo_tempario %>'></asp:Label>
</td>
<td class="td_controlesFormulario">
<asp:CheckBox ID="chk_temparioModelo" runat="server" Text=""/>
<uc2:busquedaAvanzada ID="bus_tempario" runat="server" 
a_str_tabla="cat_catalogo.tempario" />
</td>
</tr>
</table>
</td>
<td style="width: 250px;padding:2px;" valign="top">
    <asp:Panel ID="pnlTemparioDias" runat="server" BorderStyle="Outset" GroupingText="$Opciones temparios por días">
        <table>
            <tr>
                <td class="td_lblFormulario">
                    <asp:Label ID="lbl_estrategia0" runat="server" CssClass="lbl" 
        Text='<%$Resources:res_metadata,cnt_contratodetallevisita_estrategia %>'></asp:Label>
                </td>
                <td class="td_controlesFormulario">
                    <asp:DropDownList ID="drp_estrategiaTempario" runat="server" CssClass="drp">
                    <asp:ListItem Text="-seleccione-"></asp:ListItem>
                    <asp:ListItem Text="Dia calendario"></asp:ListItem>
                    <asp:ListItem Text="1ro"></asp:ListItem>
                    <asp:ListItem Text="2do"></asp:ListItem>
                    <asp:ListItem Text="3ro"></asp:ListItem>
                    <asp:ListItem Text="4to"></asp:ListItem>
                    <asp:ListItem Text="Ultimo"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID='rfv_estrategiaTempario' runat='server' ControlToValidate='drp_estrategiaTempario'
ValidationGroup="cntTempario" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="td_lblFormulario">
                    <asp:Label ID="lbl_diaTempario" runat="server" CssClass="lbl" 
        Text='<%$Resources:res_metadata,cnt_contratodetallevisita_dia %>'></asp:Label>
                </td>
                <td class="td_controlesFormulario">
                    <asp:DropDownList ID="drp_dias_3" runat="server" CssClass="drp">
                    <asp:ListItem Text="-seleccione-"></asp:ListItem>
                    <asp:ListItem Text="1"></asp:ListItem>
                    <asp:ListItem Text="2"></asp:ListItem>
                    <asp:ListItem Text="3"></asp:ListItem>
                    <asp:ListItem Text="4"></asp:ListItem>
                    <asp:ListItem Text="5"></asp:ListItem>
                    <asp:ListItem Text="6"></asp:ListItem>
                    <asp:ListItem Text="7"></asp:ListItem>
                    <asp:ListItem Text="8"></asp:ListItem>
                    <asp:ListItem Text="9"></asp:ListItem>
                    <asp:ListItem Text="10"></asp:ListItem>
                    <asp:ListItem Text="11"></asp:ListItem>
                    <asp:ListItem Text="12"></asp:ListItem>
                    <asp:ListItem Text="13"></asp:ListItem>
                    <asp:ListItem Text="14"></asp:ListItem>
                    <asp:ListItem Text="15"></asp:ListItem>
                    <asp:ListItem Text="16"></asp:ListItem>
                    <asp:ListItem Text="17"></asp:ListItem>
                    <asp:ListItem Text="18"></asp:ListItem>
                    <asp:ListItem Text="19"></asp:ListItem>
                    <asp:ListItem Text="20"></asp:ListItem>
                    <asp:ListItem Text="21"></asp:ListItem>
                    <asp:ListItem Text="22"></asp:ListItem>
                    <asp:ListItem Text="23"></asp:ListItem>
                    <asp:ListItem Text="24"></asp:ListItem>
                    <asp:ListItem Text="25"></asp:ListItem>
                    <asp:ListItem Text="26"></asp:ListItem>
                    <asp:ListItem Text="27"></asp:ListItem>
                    <asp:ListItem Text="28"></asp:ListItem>
                    <asp:ListItem Text="29"></asp:ListItem>
                    <asp:ListItem Text="30"></asp:ListItem>
                    <asp:ListItem Text="31"></asp:ListItem>
                    
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID='rfv_dias_3' runat='server' ControlToValidate='drp_dias_3'
ValidationGroup="cntTempario" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                    <asp:DropDownList
ID="drp_dias_4" runat="server" CssClass="drp">
                    <asp:ListItem Text="-seleccione-"></asp:ListItem>
                    <asp:ListItem Text="lunes"></asp:ListItem>
                    <asp:ListItem Text="martes"></asp:ListItem>
                    <asp:ListItem Text="miercoles"></asp:ListItem>
                    <asp:ListItem Text="jueves"></asp:ListItem>
                    <asp:ListItem Text="viernes"></asp:ListItem>
                    <asp:ListItem Text="sabado"></asp:ListItem>
                    <asp:ListItem Text="domingo"></asp:ListItem>

                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID='rfv_dias_4' runat='server' ControlToValidate='drp_dias_4'
ValidationGroup="cntTempario" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </asp:Panel>
</td>
<td style="width: 250px;padding:2px;">
<%--<table runat="server" id="tbl_automatico" >
<tr><td class="td_lblFormulario">
<asp:Label ID="lbl_fechaInactivaIni" runat="server" CssClass="lbl" ></asp:Label>

</td>
<td><uc1:fechaAvanzada ID="fec_inactivaIni"  a_bln_obligatorio="false" runat="server" a_str_prefijo="ff" /></td>
</tr>
<tr><td class="td_lblFormulario">
<asp:Label ID="lbl_fechaInactivaFin" runat="server" CssClass="lbl" ></asp:Label></td>
<td><uc1:fechaAvanzada ID="fec_inactivaFin"  a_bln_obligatorio="false" runat="server" a_str_prefijo="ff" /></td>
</tr>
</table>--%>
</td>
</tr>
 </table>
</td>
</tr>
<tr>
<td class="td_controlesFormulario" colspan="2" style="text-align: center">
<br />
<asp:Label ID="lbl_tolerancia" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,cnt_contratodetallevisita_aproximara %>"></asp:Label><asp:TextBox
ID="txt_tolerancia" runat="server" CssClass="txt" Text="0"></asp:TextBox><asp:RequiredFieldValidator
ID='rfv_tolerancia' runat='server' ControlToValidate='txt_tolerancia' ValidationGroup="cnt"
SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
id='ftb_tolerancia' runat='server' targetcontrolid='txt_tolerancia' filtertype='Numbers,Custom' />
&nbsp;&nbsp;
</td>
</tr>
</table>
