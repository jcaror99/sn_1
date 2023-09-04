<%@ Page Language="VB" MasterPageFile='~/master/master/mas_FormularioSinGrilla.master'
    AutoEventWireup="false" CodeBehind="maestros.aspx.vb" Inherits="website.samm_web.forms_gen_maestros" %>

<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/gen/inc_zona.ascx" TagName="inc_zona" TagPrefix="zon" %>
<%@ Register Src="~/controles/gen/inc_empresa.ascx" TagName="inc_empresa" TagPrefix="emp" %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada'
    TagPrefix='bus' %>
<%@ Register Src='~/controles/general/busquedaAvanzadaMultiple.ascx' TagName='busquedaAvanzadaMultiple' TagPrefix='bus' %>
    <%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName='tabs' TagPrefix='tab' %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register src="~/controles/general/textoAvanzado.ascx" tagname="textoAvanzado" tagprefix="uc1" %>
<asp:Content ID='content2' runat="server" ContentPlaceHolderID='cph_tituloPagina'>
    <asp:Label ID="lbl_tituloPagina" runat="server" CssClass="lbl_titulo" Text="<%$ Resources:res_tituloPagina, forms_gen_config%>"></asp:Label>
</asp:Content>
<asp:Content ID='content1' runat="server" ContentPlaceHolderID='cph_general'>
    <table cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <tab:tabs ID='Tabs' runat="server" />
            </td>
        </tr>
    </table>
    <div style="background-color:white">
    <asp:MultiView ID="mvw_modulos" runat="server">
        <asp:View ID="svw_gen" runat="server">
            <table class="tbl_marcoFormulario" width="100%">
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_nivelXDefecto" runat="server" CssClass="lbl"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="drp_nivelXDefecto" runat="server" CssClass='drp'>
                        </asp:DropDownList></td>
                    <td style="width: 100%">
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_decimalesPrecio" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:DropDownList ID="drp_decimalesPrecio" runat="server" CssClass='drp'>
                            <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="width: 100%">
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_decimalesFloat" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:DropDownList ID="drp_decimalesFloat" runat="server" CssClass='drp'>
                            <asp:ListItem Selected="True" Value="0">0</asp:ListItem>
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_sincronizacion" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:Textbox ID="txt_sincronizacion" runat="server" CssClass='txt'>
                            
                        </asp:Textbox></td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_validacionNit" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:Textbox ID="txt_validacionNit" runat="server" CssClass='txt'>
                        </asp:Textbox>
                    </td>
                </tr>
                
                <tr>
                     <td class="td_lblFormulario">
                        <asp:Label ID="lbl_expresionURL" runat="server" CssClass="lbl"></asp:Label>
                     </td>
                    <td style="width: 100px">
                         <asp:Textbox ID="txt_expresionURL" runat="server" CssClass='txt' ReadOnly="True">
                        </asp:Textbox>
                    </td>
                    <td></td>
                </tr>
                
                    <tr>
                     <td class="td_lblFormulario">
                        <asp:Label ID="lbl_calidad" runat="server" CssClass="lbl"></asp:Label>
                     </td>
                    <td style="width: 100px">
                         <asp:Textbox ID="txt_calidad" runat="server" CssClass='txt' >
                        </asp:Textbox>
                    </td>
                    <td></td>
                </tr>
                               
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_arhivosEnBD" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:RadioButtonList ID="rbl_arhivosEnBD" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="1" Text="<%$ Resources: res_etiquetas,si %>">
                            </asp:ListItem>
                            <asp:ListItem Value="0" Text="<%$ Resources: res_etiquetas,no %>">
                            </asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td style="width: 100%">
                        <asp:LinkButton ID="lnkMigrar" runat="server">Migrar</asp:LinkButton>
               
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_mapeoMimesRegistro" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:RadioButtonList ID="rbl_mapeoMimeRegistro" runat="server" RepeatDirection="Horizontal" >
                            <asp:ListItem Value="1" Text="<%$ Resources: res_etiquetas,si %>">
                            </asp:ListItem>
                            <asp:ListItem Selected="True" Value="0" Text="<%$ Resources: res_etiquetas,no %>">
                            </asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td style="width: 100%;text-align:left;">
                    </td>
                </tr>
                
                  <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_horaServidor" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:RadioButtonList ID="rbl_horaServidor" runat="server" RepeatDirection="Horizontal" >
                            <asp:ListItem Value="1" Text="<%$ Resources: res_etiquetas,si %>">
                            </asp:ListItem>
                            <asp:ListItem Selected="True" Value="0" Text="<%$ Resources: res_etiquetas,no %>">
                            </asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td style="width: 100%;text-align:left;">
                    </td>
                </tr>
                
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_textoAvisoCookies" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>                
                       <asp:HyperLink id="hyp_RutaArchivo" ReadOnly="True" NavigateUrl="../../plantillas/otros/AvisoCookies.htm" Text = "\plantillas\otros\AvisoCookies.htm" Target="_new" runat="server"/>
                    </td>
                </tr>
                <tr>
                <td></td>
                <td>
                        <asp:Label ID="lbl_archivo_noencontrado" runat="server" CssClass="lbl_mensaje"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                    </td>
                    <td style="width: 100px">
                        <bti:BotonImagen ID="btn_guardarGeneral" runat="server" CssClass="imb" ImageUrl="~/images/botones/aceptar.png" /></td>
                </tr>
                <tr>
                    <td colspan="5">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="svw_seg" runat="server">
            <table class="tbl_marcoFormulario" width="100%">
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_minutosConsumidos" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbl_minutosCon" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_minutosDisponibles" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbl_minutosDis" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_claveExigeMayusculas" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:RadioButtonList ID="rbl_claveExigeMayusculas" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="1" Text="<%$ Resources: res_etiquetas,si %>">
                            </asp:ListItem>
                            <asp:ListItem Value="0" Text="<%$ Resources: res_etiquetas,no %>">
                            </asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td style="width: 100%">
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_claveExigeNumeros" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:RadioButtonList ID="rbl_claveExigeNumeros" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="1" Text="<%$ Resources: res_etiquetas,si %>">
                            </asp:ListItem>
                            <asp:ListItem Value="0" Text="<%$ Resources: res_etiquetas,no%>">
                            </asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_claveExigeSimbolos" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:RadioButtonList ID="rbl_claveExigeSimbolos" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="1" Text="<%$ Resources: res_etiquetas,si %>">
                            </asp:ListItem>
                            <asp:ListItem Value="0" Text="<%$ Resources: res_etiquetas,no %>">
                            </asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_claveObligatorio" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:RadioButtonList ID="rbl_claveObligatorio" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="1" Text="<%$ Resources: res_etiquetas,si %>">
                            </asp:ListItem>
                            <asp:ListItem Value="0" Text="<%$ Resources: res_etiquetas,no %>">
                            </asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_claveLongitudMinima" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:DropDownList ID="drp_claveLongitudMinima" runat="server" CssClass='drp'>
                            <asp:ListItem Selected="True" Value="1" Text="<%$ Resources: res_etiquetas_gen,baja %>">
                            </asp:ListItem>
                            <asp:ListItem Value="4" Text="<%$ Resources: res_etiquetas_gen,media %>">
                            </asp:ListItem>
                            <asp:ListItem Value="8" Text="<%$ Resources: res_etiquetas_gen,alta %>">
                            </asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_claveDiasExpiracion" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:DropDownList ID="drp_claveDiasExpiracion" runat="server" CssClass='drp'>
                            <asp:ListItem Selected="True" Value="-1" Text="<%$ Resources: res_etiquetas_gen,nunca %>">
                            </asp:ListItem>
                            <asp:ListItem Value="7" Text="<%$ Resources: res_etiquetas_gen, semanal%>">
                            </asp:ListItem>
                            <asp:ListItem Value="30" Text="<%$ Resources: res_etiquetas_gen,mensual %>">
                            </asp:ListItem>
                            <asp:ListItem Value="60" Text="<%$ Resources: res_etiquetas_gen,bimestral %>">
                            </asp:ListItem>
                            <asp:ListItem Value="365" Text="<%$ Resources: res_etiquetas_gen,anual %>">
                            </asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_minutosSesion" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txt_minutosSesion" runat="server" CssClass="txt">
                        </asp:TextBox></td>
                    <td style="width: 100%">
                        <asp:RequiredFieldValidator ID="rfv_minutosSesion" runat="server" ControlToValidate="txt_minutosSesion"
                            CssClass='lbl_mensaje' ValidationGroup="seg" ForeColor="">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_perfilTecnicoExterno" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <bus:busquedaAvanzada ID="bus_perfilTecnicoExterno" runat="server" a_str_tabla="seg_perfil" a_bln_obligatorio="false" a_str_filtros="paraProveedor=1" />
                    </td>
                    <td style="width: 100%">
                     </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_cargoTecnicoExterno" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <bus:busquedaAvanzada ID="bus_cargoTecnicoExterno" runat="server" a_str_tabla="seg_cargo" a_bln_obligatorio="false" a_str_filtros="esTecnico=1" />
                    </td>
                    <td style="width: 100%">
                     </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                    </td>
                    <td style="width: 100px">
                        <bti:BotonImagen ID="btn_guardarSeguridad" ValidationGroup="seg" runat="server" CssClass="imb" ImageUrl="~/images/botones/aceptar.png" /></td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="svw_ort" runat="server">
            <table class="tbl_marcoFormulario" width="100%">
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_recargoNocturno" runat="server" CssClass='lbl'></asp:Label></td>
                    <td style="width: 224px">
                        <table>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txt_recargoNocturno" runat="server" CssClass='txt'>
                                    </asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="lbl_porcentaje1" runat="server" CssClass='lbl'></asp:Label>
                                </td>
                                  <td style="width: 100%">
                                <asp:RangeValidator ID="rgv_porcentaje1" runat="server" ControlToValidate="txt_recargoNocturno"
                                MaximumValue="100" MinimumValue="0" Type="Double" CssClass='lbl_mensaje' ValidationGroup="ort"
                                ForeColor="" Text="<%$ Resources: res_mensajes,rangoInvalido %>"></asp:RangeValidator>
                                <asp:RequiredFieldValidator ID="rfv_recargoNocturno" runat="server" ControlToValidate="txt_recargoNocturno"
                                CssClass='lbl_mensaje' ForeColor="" ValidationGroup="ort">*</asp:RequiredFieldValidator></td>
                            </tr>
                        
                        </table>
                    </td>
                   
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_recargoFestivo" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 224px">
                        <table>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txt_recargoFestivo" runat="server" CssClass="txt">
                                    </asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="lbl_porcentaje2" runat="server" CssClass="lbl"></asp:Label>&nbsp;
                                </td>
                            <td style="width: 100%">
                            <asp:RangeValidator ID="rgv_porcentaje2" runat="server" ControlToValidate="txt_recargoFestivo"
                            MaximumValue="100" MinimumValue="0" Type="Double" CssClass='lbl_mensaje' ValidationGroup="ort"
                            ForeColor="" Text="<%$ Resources: res_mensajes,rangoInvalido %>"></asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="rfv_recargoFestivo" runat="server" ControlToValidate="txt_recargoFestivo"
                            CssClass='lbl_mensaje' ValidationGroup="ort" ForeColor="">*</asp:RequiredFieldValidator></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_recargoSabado" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 224px">
                        <table>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txt_recargoSabado" runat="server" CssClass="txt">
                                    </asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="lbl_porcentaje3" runat="server" CssClass="lbl"></asp:Label>&nbsp;
                                </td>
                              <td style="width: 100%">
                        <asp:RangeValidator ID="rgv_porcentaje3" runat="server" ControlToValidate="txt_recargoSabado"
                            MaximumValue="100" MinimumValue="0" Type="Double" CssClass='lbl_mensaje' ValidationGroup="ort"
                            ForeColor="" Text="<%$ Resources: res_mensajes,rangoInvalido %>"></asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="rfv_recargoSabado" runat="server" ControlToValidate="txt_recargoSabado"
                            CssClass='lbl_mensaje' ValidationGroup="ort" ForeColor="">*</asp:RequiredFieldValidator></td>
                            </tr>
                        </table>
                    </td>
               
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_horaInicioNocturno" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 224px">
                        <asp:TextBox ID="txt_horaInicioNocturno" runat="server" CssClass="txt" ValidationGroup="ort"></asp:TextBox>
                    </td>
                    <td style="width: 100%">
                        <cc1:MaskedEditValidator ID="mev_horaInicioNocturno" runat="server" ControlExtender="mee_horaInicioNocturno"
                            ControlToValidate="txt_horaInicioNocturno" InvalidValueMessage="<%$ Resources: res_mensajes ,horaNoValida %>"
                            MaximumValue="23:59" MinimumValue="00:00" CssClass='lbl_mensaje' ValidationGroup="ort"
                            ForeColor=""></cc1:MaskedEditValidator>
                        <cc1:MaskedEditExtender ID="mee_horaInicioNocturno" runat="server" Mask="99:99" MaskType="Time"
                            TargetControlID="txt_horaInicioNocturno">
                        </cc1:MaskedEditExtender>
                        <asp:RequiredFieldValidator ID="rfv_horaInicioNocturno" runat="server" ControlToValidate="txt_horaInicioNocturno"
                            CssClass='lbl_mensaje' ValidationGroup="ort" ForeColor="">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_horaFinNocturno" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 224px">
                        <asp:TextBox ID="txt_horaFinNocturno" runat="server" CssClass="txt">
                        </asp:TextBox>
                    </td>
                    <td style="width: 100%">
                        <cc1:MaskedEditValidator ID="mev_horaFinNocturno" runat="server" ControlExtender="mee_horaFinNocturno"
                            ControlToValidate="txt_horaFinNocturno" InvalidValueMessage="<%$ Resources: res_mensajes ,horaNoValida %>"
                            MaximumValue="23:59" MinimumValue="00:00" CssClass='lbl_mensaje' ValidationGroup="ort"
                            ForeColor=""></cc1:MaskedEditValidator>
                        <cc1:MaskedEditExtender ID="mee_horaFinNocturno" runat="server" TargetControlID="txt_horaFinNocturno"
                            Mask="99:99" MaskType="Time">
                        </cc1:MaskedEditExtender>
                        <asp:RequiredFieldValidator ID="rfv_horaFinNocturno" runat="server" ControlToValidate="txt_horaFinNocturno"
                            CssClass='lbl_mensaje' ValidationGroup="ort" ForeColor="">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_reportesNumerados" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 224px">
                        <asp:RadioButtonList ID="rbl_reportesNumerados" runat="server" RepeatDirection="Horizontal">
                        </asp:RadioButtonList></td>
                    <td style="width: 224px">
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_cierreEvaluacion" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 224px">
                        <asp:RadioButtonList ID="rbl_cierreEvaluacion" runat="server" RepeatDirection="Horizontal" ValidationGroup='ort'>
                            <asp:ListItem Value="1" Selected="True" Text="<%$ Resources: res_etiquetas,si %>">
                            </asp:ListItem>
                            <asp:ListItem Value="0" Text="<%$ Resources: res_etiquetas,no %>">
                            </asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td style="width: 224px">
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_horaInicioProgramacion" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 224px">
                        <asp:TextBox ID="txt_horaInicioProgramacion" runat="server" CssClass="txt">
                        </asp:TextBox>
                    </td>
                    <td style="width: 100%">
                        <cc1:MaskedEditValidator ID="mev_horaInicioProgramacion" runat="server" ControlExtender="mee_horaInicioProgramacion"
                            ControlToValidate="txt_horaInicioProgramacion" InvalidValueMessage="<%$ Resources: res_mensajes ,horaNoValida %>"
                            MaximumValue="23:59" MinimumValue="00:00" CssClass='lbl_mensaje' ValidationGroup="ort"
                            ForeColor=""></cc1:MaskedEditValidator>
                        <cc1:MaskedEditExtender ID="mee_horaInicioProgramacion" runat="server" Mask="99:99"
                            MaskType="Time" TargetControlID="txt_horaInicioProgramacion">
                        </cc1:MaskedEditExtender>
                        <asp:RequiredFieldValidator ID="rfv_horaInicioProgramacion" runat="server" ControlToValidate="txt_horaInicioProgramacion"
                            CssClass='lbl_mensaje' ValidationGroup="ort" ForeColor="">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_horaFinProgramacion" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 224px">
                        <asp:TextBox ID="txt_horaFinProgramacion" runat="server" CssClass="txt">
                        </asp:TextBox>
                    </td>
                    <td style="width: 100%">
                        <cc1:MaskedEditValidator ID="mev_horaFinProgramacion" runat="server" ControlExtender="mee_horaFinProgramacion"
                            ControlToValidate="txt_horaFinProgramacion" InvalidValueMessage="<%$ Resources: res_mensajes ,horaNoValida %>"
                            MaximumValue="23:59" MinimumValue="00:00" CssClass='lbl_mensaje' ValidationGroup="ort"
                            ForeColor=""></cc1:MaskedEditValidator>
                        <cc1:MaskedEditExtender ID="mee_horaFinProgramacion" runat="server" Mask="99:99"
                            MaskType="Time" TargetControlID="txt_horaFinProgramacion">
                        </cc1:MaskedEditExtender>
                        <asp:RequiredFieldValidator ID="rfv_horaFinProgramacion" runat="server" ControlToValidate="txt_horaFinProgramacion"
                            CssClass='lbl_mensaje' ValidationGroup="ort" ForeColor="">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_cobroActividadHora" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="width: 224px">
                        <asp:RadioButtonList ID="rbl_cobroActividadHora" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="1" Text="<%$ Resources: res_etiquetas,si %>">
                            </asp:ListItem>
                            <asp:ListItem Value="0" Text="<%$ Resources: res_etiquetas,no %>">
                            </asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_subtipoPreliquidacionCliente" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 224px">
                        <bus:busquedaAvanzadaMultiple ID="bus_preliquidacionCliente" runat="server" a_str_grupoValidacion="ort"
                            a_str_tabla="doc_subtipoDocumento" a_bln_obligatorio="true" />
                    </td>
                    <td style="width: 100%">
                    </td>
                </tr>
                
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_subtipoPreliquidacionDistribuidor" runat="server" CssClass="lbl">
                        </asp:Label></td>
                    <td style="width: 224px">
                        <bus:busquedaAvanzadaMultiple ID="bus_preliquidacionDistribuidor" runat="server" a_str_grupoValidacion="ort"
                            a_str_tabla="doc_subtipoDocumento" a_bln_obligatorio="true" />
                    </td>
                    <td style="width: 100%">
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_subtipoPreliquidacionFabricante" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 224px">
                        <bus:busquedaAvanzadaMultiple ID="bus_preliquidacionFabricante" runat="server" a_str_grupoValidacion="ort"
                            a_str_tabla="doc_subtipoDocumento" a_bln_obligatorio="true" />
                    </td>
                    <td style="width: 100%">
                    </td>
                </tr>
                
               
               <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_salariominimo" runat="server" CssClass='lbl'></asp:Label></td>
                    <td style="width: 224px">
                        <table>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txt_salariominimo" runat="server" CssClass='txt'>
                                    </asp:TextBox>
                                </td>
                                <td>
                                   <asp:Label ID="lbl_peso" runat="server" CssClass='lbl'></asp:Label>
                                    <asp:Label ID="lbl_mensaje" runat="server" CssClass='lbl'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="width: 100%">
                        
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_aprobarAlCrearOT" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="width: 224px">
                        <asp:RadioButtonList ID="rbl_aprobarAlCrearOT" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="1" Text="<%$ Resources: res_etiquetas,si %>">
                            </asp:ListItem>
                            <asp:ListItem Selected="True" Value="0" Text="<%$ Resources: res_etiquetas,no %>">
                            </asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                    </td>
                </tr>
                
                <tr>
                <td class="td_lblFormulario"> 
                 <asp:Label ID="lbl_costeoGastos" runat="server" CssClass="lbl"></asp:Label>
                
                 </td>
                 
                  <td>
                 <asp:DropDownList ID="drp_costeogastos" runat="server" CssClass="drp"> 
                 <asp:ListItem  Value="1" Text="Promedio por OT">
                 </asp:ListItem>
                 <asp:ListItem Value="2" Text="Ponderado por Hora">
                 </asp:ListItem>
                 </asp:DropDownList>
                 </td>
                </tr>
                
                
                
                
                
                
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_consolidaPreliquidacion" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="width: 224px; white-space:nowrap;">
                        <asp:CheckBoxList ID="cbl_consolidaPreliquidacion" runat="server" CssClass="" RepeatColumns="3">
                        </asp:CheckBoxList>
                    </td>
                    <td>
                        </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_horaEvento" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <fec:fechaAvanzada ID="fec_horaEvento" runat="server" a_bln_obligatorio="true"
                            a_str_prefijo="hh" a_str_grupoValidacion="ort" />    
                    </td>
                    <td style="width: 100%">
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_duracionProgramacion" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txt_duracionProgramacion" runat="server" CssClass='txt'></asp:TextBox>  
                        <cc1:filteredtextboxextender id='ftb_duracionProgramacion' runat='server' targetcontrolid='txt_duracionProgramacion' filtertype='Numbers,Custom'></cc1:filteredtextboxextender>
                    </td>
                    <td style="width: 100%">
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_cerrarOT" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="width: 224px; white-space:nowrap;">
                        <asp:CheckBoxList ID="cbl_cerrarOT" runat="server" CssClass="" RepeatColumns="3">
                        </asp:CheckBoxList>
                    </td>
                    <td>
                        </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_taxonomia" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:RadioButtonList ID="rbl_usarTaxonomia" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="1" Text="<%$ Resources: res_etiquetas,si %>">
                            </asp:ListItem>
                            <asp:ListItem Value="0" Text="<%$ Resources: res_etiquetas,no%>">
                            </asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                <td class="td_lblFormulario">
                       <asp:Label ID="lbl_canOtHome" runat="server" CssClass="lbl"></asp:Label>
                </td>
                <td style="width: 224px; white-space:nowrap;">
                 <asp:TextBox ID="txt_canOtHome" runat="server" ></asp:TextBox>
                </td>
                <td></td>
                </tr>
                <tr>
                <td class="td_lblFormulario">
                <asp:Label ID="lbl_controldeTiempos" runat="server" CssClass="lbl"></asp:Label></td>
                <td style="width: 100px">
                <asp:RadioButtonList ID="rbl_usarControlTiempo" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="1" Text="<%$ Resources: res_etiquetas,si %>">
                            </asp:ListItem>
                            <asp:ListItem Value="0" Text="<%$ Resources: res_etiquetas,no%>">
                            </asp:ListItem>
                </asp:RadioButtonList></td>
                </tr>
                <tr>
                <td class="td_lblFormulario">
                       <asp:Label ID="lbl_campoTecnico" runat="server" CssClass="lbl"></asp:Label>
                       </td>
                <td>
                <asp:CheckBoxList ID="cbl_campoTecnico" runat="server" CssClass="" RepeatColumns="3">
                </asp:CheckBoxList>
                </td>
                <td></td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_seccionesreporte" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="width: 224px; white-space:nowrap;">
                        <asp:CheckBoxList ID="cbl_seccionesreporte" runat="server" CssClass="" RepeatColumns="3">
                        </asp:CheckBoxList>
                    </td>
                    <td>
                        </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_preferenciaDocumento" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="width: 224px; white-space:nowrap;">
                        <asp:CheckBoxList ID="cbl_preferenciaDocumento" runat="server" CssClass="" RepeatColumns="3">
                        </asp:CheckBoxList>
                    </td>
                    <td>
                        </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_registrosEnCheckList" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="width: 224px; white-space:nowrap;">
                        <asp:TextBox runat="server" ID="txt_registrosEnCheckList"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="validardorchecks"
                            ControlToValidate="txt_registrosEnCheckList" runat="server"
                            ErrorMessage="Solamente se permiten caracteres numericos."
                            ValidationExpression="\d+">
                        </asp:RegularExpressionValidator>
                    </td>
                    <td>
                        </td>
                </tr>      
                    <tr>
                   <td class="td_lblFormulario">
                        <asp:Label ID="lbl_EquiposPorTercerocomprador" runat="server" CssClass="lbl"></asp:Label></td>
                   <td style="width: 100px">
                   <asp:RadioButtonList ID="rbl_EquiposPorTercerocomprador" CssClass="rbl" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem  Value="1"></asp:ListItem>
                            <asp:ListItem  Value="0"></asp:ListItem>
                   </asp:RadioButtonList>   
                </tr>        
                <tr>
                   <td class="td_lblFormulario">
                        <asp:Label ID="lbl_enlazarSugeridosOTOrigen" runat="server" CssClass="lbl"></asp:Label>
                        
                        </td>
                   <td style="width: 100px">
                   <asp:RadioButtonList ID="rbl_enlazarSugeridosOTOrigen" CssClass="rbl" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem  Value="1"></asp:ListItem>
                            <asp:ListItem  Value="0"></asp:ListItem>
                   </asp:RadioButtonList>   
                </tr>
                <tr>
                    
                <td class="td_lblFormulario">
                        <asp:Label ID="lbl_variablesSeccion" runat="server" CssClass="lbl"></asp:Label>
                        
                        </td>
                           <td style="width: 224px; white-space:nowrap;">
                        <asp:CheckBoxList ID="cbl_campoVariables" runat="server" CssClass="" RepeatColumns="3">
                        </asp:CheckBoxList>
                    </td>
                
                </tr>                          
                <tr>
                    <td class="td_lblFormulario">
                    </td>
                    <td style="width: 224px">
                    <asp:Label ID="lbl_mensajeOt" runat="server" CssClass ="lbl_mensaje" ></asp:Label>
                        <bti:BotonImagen ID="btn_guardarOTS" runat="server" CssClass="imb" ValidationGroup='ort'
                            ImageUrl="~/images/botones/aceptar.png" /></td>
                    
                    <td style="width: 100%">
                    
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                    </td>
                    <td colspan="2">
                        <asp:ValidationSummary ID='vls_ort' runat='server' ValidationGroup='ort' CssClass='lbl_mensaje'
                            ForeColor='' />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        &nbsp;
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="svw_doc" runat="server">
            <table class="tbl_marcoFormulario" width="100%">
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_diasAlarmaCotizaciones" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txt_diasAlarmaCotizaciones" runat="server" CssClass="txt">
                        </asp:TextBox></td>
                    <td style="width: 100%">
                        <asp:RangeValidator ID="rgv_diasAlarmaCotizaciones" runat="server" ControlToValidate="txt_diasAlarmaCotizaciones"
                            MinimumValue="0" MaximumValue="100" Type="Double" CssClass='lbl_mensaje' ValidationGroup="doc"
                            ForeColor="" Text="<%$ Resources: res_mensajes,rangoInvalido %>"></asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="rfv_diasAlarmaCotizaciones" runat="server" ControlToValidate="txt_diasAlarmaCotizaciones"
                            CssClass='lbl_mensaje' ValidationGroup="doc" ForeColor="">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_porcentajeAdministracion" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <table>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txt_porcentajeAdministracion" runat="server" CssClass="txt">
                                    </asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="lbl_porcentaje4" runat="server" CssClass="lbl"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="width: 100%">
                        <asp:RangeValidator ID="rgv_porcentajeAdministracion" runat="server" ControlToValidate="txt_porcentajeAdministracion"
                            MaximumValue="100" MinimumValue="0" Type="Double" CssClass='lbl_mensaje' ValidationGroup="doc"
                            ForeColor="" Text="<%$ Resources: res_mensajes,rangoInvalido %>"></asp:RangeValidator><asp:RequiredFieldValidator ID="rfv_porcentajeAdministracion"
                            runat="server" ControlToValidate="txt_porcentajeAdministracion" CssClass='lbl_mensaje'
                            ValidationGroup="doc" ForeColor="">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_porcentajeImprevistos" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <table>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txt_porcentajeImprevistos" runat="server" CssClass="txt">
                                    </asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="lbl_porcentaje5" runat="server" CssClass="lbl"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="width: 100%">
                        <asp:RangeValidator ID="rgv_porcentajeImprevistos" runat="server" ControlToValidate="txt_porcentajeImprevistos"
                            MaximumValue="100" MinimumValue="0" Type="Double" CssClass='lbl_mensaje' ValidationGroup="doc"
                            ForeColor="" Text="<%$ Resources: res_mensajes,rangoInvalido %>"></asp:RangeValidator><asp:RequiredFieldValidator ID="rfv_porcentajeImprevistos" runat="server"
                            ControlToValidate="txt_porcentajeImprevistos" CssClass='lbl_mensaje' ValidationGroup="doc"
                            ForeColor="">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_porcentajeUtilidad" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <table>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txt_porcentajeUtilidad" runat="server" CssClass="txt">
                                    </asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="lbl_porcentaje6" runat="server" CssClass="lbl"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="width: 100%">
                        <asp:RangeValidator ID="rgv_porcentajeUtilidad" runat="server" ControlToValidate="txt_porcentajeUtilidad"
                            MaximumValue="100" MinimumValue="0" Type="Double" CssClass='lbl_mensaje' ValidationGroup="doc"
                            ForeColor="" Text="<%$ Resources: res_mensajes,rangoInvalido %>"></asp:RangeValidator><asp:RequiredFieldValidator ID="rfv_porcentajeUtilidad" runat="server"
                            ControlToValidate="txt_porcentajeUtilidad" CssClass='lbl_mensaje' ValidationGroup="doc"
                            ForeColor="">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_costearValorIngreso" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="width: 224px">
                        <asp:RadioButtonList ID="rbl_costearValorIngreso" runat="server" CssClass="chb" 
                            RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="1" Text='<%$Resources:res_etiquetas,si %>'></asp:ListItem>
                            <asp:ListItem Value="0" Text='<%$Resources:res_etiquetas,no %>'></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td style="width: 100%">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_archivositemsCotizados" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                          <asp:RadioButtonList ID="rbl_archivositemsCotizados" runat="server" CssClass="chb" 
                            RepeatDirection="Horizontal">
                            <asp:ListItem Value="True"></asp:ListItem>
                            <asp:ListItem Value="False"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_CotClientesAsociados" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="width: 224px">
                        <asp:RadioButtonList ID="rbl_CotClientesAsociados" runat="server" CssClass="chb" 
                            RepeatDirection="Horizontal">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="0"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td style="width: 100%">
                        &nbsp;</td>
                </tr>
                
                
                
                
                
                
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_administrarContactosXJerarquia" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="width: 224px">
                        <asp:RadioButtonList ID="rbl_administrarContactosXJerarquia" runat="server" CssClass="chb" 
                            RepeatDirection="Horizontal">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="0"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td style="width: 100%">
                        &nbsp;</td>
                </tr>
                     <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_crearDocAtributoObligatorio" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:RadioButtonList ID="rdb_crearDocAtributoObligatorio" runat="server" RepeatDirection="Horizontal">
                         <asp:ListItem Selected="True" Value="1" >
                          </asp:ListItem>
                          <asp:ListItem Value="0">
                          </asp:ListItem>
                          </asp:RadioButtonList></td>
                    <td style="width: 100%">
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_encabezadoPreliquidacion" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <uc1:textoAvanzado ID="txt_encabezadoPreliquidacion" runat="server" CssClass="txt_formulario" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="lbl_validezCOT" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                       <asp:TextBox ID="txt_validezCOT" runat="server" CssClass="txt"> </asp:TextBox>
                    </td>
                </tr>
                <tr class="td_lblFormulario">
                <td><asp:Label ID="lbl_devolverElemento" runat="server" CssClass ="lbl"></asp:Label>  </td>
                <td> <asp:RadioButtonList ID="rdb_devolverElemento" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1" >
                            </asp:ListItem>
                          <asp:ListItem Value="0">
                            </asp:ListItem>
                          </asp:RadioButtonList></td> 
                <td></td>
                </tr>
                <tr class="td_lblFormulario">
                <td><asp:Label ID="lbl_recordatorio" runat="server" CssClass ="lbl"></asp:Label>  </td>
                <td> <asp:RadioButtonList ID="rdb_recordatorio" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="1" >
                            </asp:ListItem>
                            <asp:ListItem Value="0">
                            </asp:ListItem>
                          </asp:RadioButtonList></td> 
                <td></td>
                </tr>
                <tr>
                <td>
                    <asp:Label ID="lbl_usarSoporteItem" runat="server" CssClass ="lbl"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="rbl_usarSoporteItem" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="1" >
                            </asp:ListItem>
                            <asp:ListItem Value="0">
                            </asp:ListItem>
                          </asp:RadioButtonList>
                </td>
                </tr>
                 <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_elementoslistaprecio" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="width: 224px">
                        <asp:RadioButtonList ID="rbl_elementoslistaprecio" runat="server" CssClass="chb" 
                            RepeatDirection="Horizontal">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="0"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td style="width: 100%">
                        &nbsp;</td>
                </tr>
                 <tr>
                      <td class="td_lblFormulario">
                        <asp:Label ID="lbl_servicioProspecto" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                   <asp:RadioButtonList ID="rbl_servicioProspecto" CssClass="rbl" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem  Value="True"></asp:ListItem>
                            <asp:ListItem  Value="False"></asp:ListItem>
                        </asp:RadioButtonList>   
                </tr>
                <tr>
                      <td class="td_lblFormulario">
                        <asp:Label ID="lbl_hilosConversacion" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                   <asp:RadioButtonList ID="rbl_hilosConversacion" CssClass="rbl" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem  Value="1"></asp:ListItem>
                            <asp:ListItem  Value="0"></asp:ListItem>
                        </asp:RadioButtonList>   
                </tr>
                
                <tr>
                    <td class="td_lblFormulario">
                    </td>
                    <td style="width: 100px">
                        <bti:BotonImagen ID="btn_guardarDocumentos" runat="server" CssClass="imb" ValidationGroup='doc'
                            ImageUrl="~/images/botones/aceptar.png" /></td>
                    <td style="width: 100%">
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                    </td>
                    <td colspan="2">
                        <asp:ValidationSummary ID='vls_doc' runat='server' ValidationGroup='doc' CssClass='lbl_mensaje'
                            ForeColor='' />
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        &nbsp;
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="svw_cat" runat="server">
            <table class="tbl_marcoFormulario" width="100%">
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_estrategiaCosto" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:DropDownList ID="drp_estrategiaCosto" runat="server" CssClass='drp'>
                            <asp:ListItem Selected="True" Value="1" Text="<%$ Resources: res_etiquetas_gen,costoPromedio %>">
                            </asp:ListItem>
                            <asp:ListItem Value="2" Text="<%$ Resources: res_etiquetas_gen,ultimoCosto%>">
                            </asp:ListItem>
                            <asp:ListItem Value="3" Text="<%$ Resources: res_etiquetas_gen,maximoCosto %>">
                            </asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="width: 100%">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_manejaAlmacen" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:RadioButtonList ID="rbl_manejaAlmacen" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="1" Text="<%$ Resources: res_etiquetas,si %>">
                            </asp:ListItem>
                            <asp:ListItem Value="0" Text="<%$ Resources: res_etiquetas,no %>">
                            </asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_facturaTodo" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="width: 100px; white-space:nowrap;">
                        <asp:CheckBoxList ID="cbl_facturaTodo" runat="server" CssClass="" RepeatColumns="3">
                        </asp:CheckBoxList>
                    </td>
                    <td style="width: 100px">
                        </td>
                </tr>
                
                 
                
                
                
                <tr>
                    <td class="td_lblFormulario">
                        </td>
                    <td style="width: 100px">
                        <bti:BotonImagen ID="btn_guardarCatalogo" runat="server" CssClass="imb" 
                            ImageUrl="~/images/botones/aceptar.png" />
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="svw_con" runat="server">
            <table class="tbl_marcoFormulario" width="100%">
              <tr>
                      <td class="td_lblFormulario">
                        <asp:Label ID="lbl_equipomascontrato" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                   <asp:RadioButtonList ID="rbl_equipomascontrato" CssClass="rbl" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem Text='<%$ Resources: res_etiquetas,si %>' Value="True"></asp:ListItem>
                            <asp:ListItem Text='<%$ Resources: res_etiquetas,no %>' Value="False"></asp:ListItem>
                   </asp:RadioButtonList>   
                </tr>
                <tr>       
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_diasAlarmaContratos" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txt_diasAlarmaContratos" runat="server" CssClass="txt">
                        </asp:TextBox></td>
                    <td style="width: 100%">
                        <asp:RangeValidator ID="rgv_diasAlarmaContratos" runat="server" ControlToValidate="txt_diasAlarmaContratos"
                            MaximumValue="100" MinimumValue="0" Type="Double" CssClass='lbl_mensaje' ValidationGroup="con"
                            ForeColor="" Text="<%$ Resources: res_mensajes,rangoInvalido %>"></asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="rfv_diasAlarmaContratos" runat="server" ControlToValidate="txt_diasAlarmaContratos"
                            CssClass='lbl_mensaje' ValidationGroup="con" ForeColor="">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_actualizarVisitas" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="white-space:nowrap;">
                        <asp:CheckBoxList ID="chb_actualizarVisitas" runat="server" RepeatDirection="Horizontal" 
                        RepeatColumns="3" CssClass="lbl">
                        </asp:CheckBoxList>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_diasDisponibles" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBoxList ID="chb_diasDisponibles" runat="server" RepeatDirection="Horizontal" 
                        RepeatColumns="3" CssClass="lbl">
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_vistaContrato" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="white-space:nowrap;">
                        <asp:CheckBoxList ID="chl_opcioncontrato" runat="server" RepeatDirection="Horizontal" 
                        RepeatColumns="3" CssClass="lbl">
                        <asp:ListItem Value ="1" >     </asp:ListItem >
                        <asp:ListItem Value="2" >      </asp:ListItem>
                        <asp:ListItem Value ="3" ></asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td>
                    </td>
                </tr>
               <tr>
                    <td>
                        <asp:Label ID="lbl_crearUsuarioCon" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="chk_crearUsuarioCon" runat="server" CssClass="chk" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_bloquarCamposOT" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="white-space:nowrap;">
                        <asp:RadioButtonList ID="rbl_bloquarCamposOT" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="1" Text="<%$ Resources: res_etiquetas,si%>"></asp:ListItem>
                            <asp:ListItem Value="0" Text="<%$ Resources: res_etiquetas,no%>"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                    </td>
                    <td style="width: 100px">
                        <bti:BotonImagen ID="btn_guardarContrato" runat="server" CssClass="imb" ValidationGroup='con'
                            ImageUrl="~/images/botones/aceptar.png" /></td>
                    <td style="width: 100%">
                    </td>
                </tr>
                
       
                <tr>
                    <td class="td_lblFormulario">
                    </td>
                    <td colspan="2">
                        <asp:ValidationSummary ID='vls_con' runat='server' ValidationGroup='con' CssClass='lbl_mensaje'
                            ForeColor='' />
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        &nbsp;
                    </td>
                </tr>
                
            </table>
        </asp:View>
        <asp:View ID="svw_misEmpresas" runat="server">
            <table class="tbl_marcoFormulario" width="100%">
                                  <tr>
                    <td>
                        <asp:Label ID="lbl_crearcontactosuc" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="chk_crearcontactosuc" runat="server" CssClass="chk" />
                    </td>
                </tr>
                <tr>
                    <td style="white-space: nowrap">
                        <asp:Label ID="lbl_sucursales" runat="server" CssClass="lbl" text="<%$ Resources:res_metadata, ter_tercero_tercero%>"></asp:Label>
                        :
                    </td>
                    <td style="white-space: nowrap">
                        <bus:busquedaAvanzada ID="bus_terceros" runat="server" a_str_tabla='ter_tercero'
                            a_bol_postBack="false" a_str_campo='tercero' />
                    </td>
                    <td style="width: 100%; white-space: nowrap">
                        <bti:BotonImagen ID="bti_agregar" runat="server" ImageUrl="~/images/botones/agregar.gif"
                            CausesValidation="false" /></td>
                </tr>
                <tr>
                    <td style="width: 100px" colspan="3">
                        <asp:GridView ID="grd_sucursales" runat="server" AutoGenerateColumns="False" CssClass='gri_check'>
                            <columns>
                                <asp:TemplateField>
                                <ItemStyle Wrap="false" />
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_sucursal" runat="server" CssClass="lbl" Text='<%#eval("sucursal") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="<%$Resources:res_metadata,ter_sucursal_paraAlquiler %>">
                                    <EditItemTemplate>
                                        <asp:CheckBox ID="chb_alquiler" runat="server" />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chb_alquiler" runat="server" Checked='<%#eval("paraAlquiler") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="<%$Resources:res_metadata,ter_sucursal_paraVenta %>">
                                    <EditItemTemplate>
                                        <asp:CheckBox ID="chb_venta" runat="server" />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chb_venta" runat="server" Checked='<%#eval("paraVenta") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="<%$Resources:res_metadata,ter_sucursal_paraSoporte %>">
                                    <EditItemTemplate>
                                        <asp:CheckBox ID="chb_soporte" runat="server" />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chb_soporte" runat="server" Checked='<%#eval("paraSoporte") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </columns>
                            <emptydatatemplate>
                                <asp:Label ID="lbl_noSucursales" runat="server" Text="<%$Resources:res_mensajes,grillaVacia %>"
                                    CssClass='lbl_mensaje'></asp:Label>
                            </emptydatatemplate>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <bti:BotonImagen ID="btn_guardarSucursal" runat="server" CssClass="imb" ImageUrl="~/images/botones/aceptar.png" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="svw_otros" runat="server">
            <table class="tbl_marcoFormulario" width="100%">
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_rendirViewState" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txt_rendirViewState" Text="20" runat="server" CssClass="txt">
                        </asp:TextBox>
                    </td>
                    <td style="width: 100%">
                        <asp:RequiredFieldValidator ID="rfv_rendirViewState" runat="server" ControlToValidate="txt_rendirViewState"
                            CssClass='lbl_mensaje' ValidationGroup="otros" ForeColor="">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_registrosDrop" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txt_registrosDrop" runat="server" CssClass="txt">
                        </asp:TextBox></td>
                    <td style="width: 100%">
                        <asp:RequiredFieldValidator ID="rfv_registrosDrop" runat="server" ControlToValidate="txt_registrosDrop"
                            CssClass='lbl_mensaje' ValidationGroup="otros" ForeColor="">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rgv_registrosDrop" runat="server" ControlToValidate="txt_registrosDrop"
                            MaximumValue="100" MinimumValue="0" Type="Double" CssClass='lbl_mensaje' ValidationGroup="otros"
                            ForeColor="" Text="<%$ Resources: res_mensajes,rangoInvalido %>"></asp:RangeValidator>
                        </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_correoServidor" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txt_correoServidor" runat="server" CssClass="txt">
                        </asp:TextBox></td>
                    <td style="width: 100%">
                        <asp:RequiredFieldValidator ID="rfv_correoServidor" runat="server" ControlToValidate="txt_correoServidor"
                            CssClass='lbl_mensaje' ValidationGroup="otros" ForeColor="">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_correoRemitente" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txt_correoRemitente" runat="server" CssClass="txt">
                        </asp:TextBox></td>
                    <td style="width: 100%">
                        <asp:RequiredFieldValidator ID="rfv_correoRemitente" runat="server" ControlToValidate="txt_correoRemitente"
                            CssClass='lbl_mensaje' ValidationGroup="otros" ForeColor="">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_correoCertificado" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:RadioButtonList ID="rbl_correoCertificado" CssClass="rbl" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem Text='<%$ Resources: res_etiquetas,si %>' Value="1"></asp:ListItem>
                            <asp:ListItem Text='<%$ Resources: res_etiquetas,no %>' Value="0"></asp:ListItem>
                        </asp:RadioButtonList>   
                    </td>
                    <td style="width: 100%">
                        <asp:RequiredFieldValidator ID="rfv_correoCertificado" runat="server" ControlToValidate="rbl_correoCertificado"
                            CssClass='lbl_mensaje' ValidationGroup="otros" ForeColor="">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_correoPuerto" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txt_correoPuerto" runat="server" CssClass="txt">
                        </asp:TextBox></td>
                    <td style="width: 100%">
                        <asp:RequiredFieldValidator ID="rfv_correoPuerto" runat="server" ControlToValidate="txt_correoPuerto"
                            CssClass='lbl_mensaje' ValidationGroup="otros" ForeColor="">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_correoCredenciales" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txt_correoCredenciales" runat="server" CssClass="txt" TextMode="Password">
                        </asp:TextBox></td>
                    <td style="width: 100%">
                       </td>
                </tr>
                <tr>
                
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_servidor" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="width:100px">
                        <asp:textBox ID="txt_servidor" runat="server" CssClass="txt"></asp:textBox>
                    </td>
                </tr>
                <tr>        
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_puerto" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="width:100px">
                        <asp:textBox ID="txt_puerto" runat="server" CssClass="txt"></asp:textBox>
                    <cc1:filteredtextboxextender id='ftb_puerto' runat='server' targetcontrolid='txt_puerto' filtertype='Numbers,Custom'></cc1:filteredtextboxextender>
                    </td> 
                </tr>
                <tr>        
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_usuario" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="width:100px">
                        <asp:textBox ID="txt_usuario" runat="server" CssClass="txt"></asp:textBox>
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_clave" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="width:100px">
                        <asp:textBox ID="txt_clave" runat="server" CssClass="txt" TextMode="Password"></asp:textBox>
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_dominio" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td class="td_lblFormulario">
                        <asp:textBox ID="txt_dominio" runat="server" CssClass="txt"></asp:textbox>
                    </td>
                </tr>
                  <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_tiempoejecucion" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td class="td_lblFormulario">
                        <asp:textBox ID="txt_tiempoejecucion" runat="server" CssClass="txt"></asp:textbox>
                    </td>
                </tr>
                 <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_caracterBusquedaMultiple" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td class="td_lblFormulario">
                        <asp:textBox ID="txt_caracterBusquedaMultiple" runat="server" CssClass="txt"></asp:textbox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <bti:BotonImagen ID="btn_guardarOtros" runat="server" CssClass="imb" ImageUrl="~/images/botones/aceptar.png" ValidationGroup="otros" />
                    </td>
                </tr>                
            </table>
        </asp:View>
        <asp:View ID="svw_mobile" runat="server">
            <table class="tbl_marcoFormulario" width="720">
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_recordarComentarios" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:RadioButtonList ID="rad_recordarComentarios" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="1" Text="<%$ Resources: res_etiquetas,si %>">
                            </asp:ListItem>
                            <asp:ListItem Value="0" Text="<%$ Resources: res_etiquetas,no %>">
                            </asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td style="width: 100%">
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_recordarRecomendaciones" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:RadioButtonList ID="rad_recordarRecomendaciones" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="1" Text="<%$ Resources: res_etiquetas,si %>">
                            </asp:ListItem>
                            <asp:ListItem Value="0" Text="<%$ Resources: res_etiquetas,no %>">
                            </asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td style="width: 100%">
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_formatoSolicitud" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <bus:busquedaAvanzada ID="bus_formatoSol" runat="server" a_str_tabla='rep_reporte'
                            a_bol_postBack="false" a_str_filtros="esformato=1 and id in (select id_reporte from rep_reporte_categoria where reporte_categoria='SOL')" />
                    </td>
                    <td style="width: 100%">
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                        <asp:Label ID="lbl_formatoOt" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <bus:busquedaAvanzada ID="bus_formatoOt" runat="server" a_str_tabla='rep_reporte'
                            a_bol_postBack="false" a_str_filtros="esformato=1 and id in (select id_reporte from rep_reporte_categoria where reporte_categoria='OTT')" />
                    </td>
                    <td style="width: 100%">
                    </td>
                </tr>
            <tr>
                    <td class="td_lblFormulario">
                    </td>
                    <td style="width: 100px">
                        <bti:BotonImagen ID="btn_guardarMobile" runat="server" CssClass="imb" ImageUrl="~/images/botones/aceptar.png" /></td>
                </tr>
                <tr>
                    <td colspan="5">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="svm_alquiler" runat ="server" >
        <table class="tbl_marcoFormulario" width="100%">
       <%-- <tr>
        <td><asp:CheckBox ID="chk_efectuarAlquiler" runat="server" CssClass="lbl"  /></td>
        <td></td>
        </tr>--%>
        <tr>
        <td>
        <table>
          <tr>
          <td>
                     <asp:Label ID="lbl_reservarequalq" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:RadioButtonList ID="rbl_reservarequalq" CssClass="rbl" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem Text='<%$ Resources: res_etiquetas,si %>' Value="True"></asp:ListItem>
                            <asp:ListItem Text='<%$ Resources: res_etiquetas,no %>' Value="False"></asp:ListItem>
                        </asp:RadioButtonList>   
                    </td>
                   
        </tr>
        <tr>
          <td>
                     <asp:Label ID="lbl_efectuarAlquiler" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:RadioButtonList ID="rbl_efectuarAlquiler" CssClass="rbl" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem Text='<%$ Resources: res_etiquetas,si %>' Value="True"></asp:ListItem>
                            <asp:ListItem Text='<%$ Resources: res_etiquetas,no %>' Value="False"></asp:ListItem>
                        </asp:RadioButtonList>   
                    </td>
                   
        </tr>
        <tr>
          <td>
                     <asp:Label ID="lbl_detalleliquidacion" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:RadioButtonList ID="rbl_detalleliquidaicon" CssClass="rbl" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem Text='<%$ Resources: res_etiquetas,si %>' Value="True"></asp:ListItem>
                            <asp:ListItem Text='<%$ Resources: res_etiquetas,no %>' Value="False"></asp:ListItem>
                        </asp:RadioButtonList>   
                    </td>
                   
        </tr> 
        <tr>
          <td>
                     <asp:Label ID="lbl_bodegaperdidos" runat="server" CssClass="lbl"></asp:Label></td>
                    <td style="width: 100px">
                        <bus:busquedaAvanzadaMultiple ID="bus_bodegaPerdidos"  a_str_tabla="gen_bodega" runat="server"  />
                    </td>
                   
        </tr> 
        
        
        </table>
        </td>
        </tr>
        <tr>
        <td>  <bti:BotonImagen ID="btn_alquiler" runat="server" CssClass="imb" ValidationGroup='alq' CausesValidation="false"
                            ImageUrl="~/images/botones/aceptar.png" /></td>
        <td></td>
        </tr>
        </table>
        </asp:View>
        <asp:View ID="svw_param" runat="server">
            <table class="tbl_marcoFormulario" width="100%">             
                <tr>
                    <td width= "20%">
                        <asp:Label ID="lbl_camposEquipos" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="white-space:nowrap;">
                        <asp:CheckBoxList ID="chb_camposEquipos" runat="server" RepeatDirection="Horizontal" 
                        RepeatColumns="3" CssClass="lbl">
                        </asp:CheckBoxList>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td width = "20%">
                        <asp:Label ID="lbl_camposSolicitud" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="white-space:nowrap;">
                        <asp:CheckBoxList ID="chb_camposSolicitud" runat="server" RepeatDirection="Horizontal" 
                        RepeatColumns="3" CssClass="lbl">
                        </asp:CheckBoxList>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        &nbsp;</td>
                </tr>
                
                <tr>
                    <td width = "20%">
                        <asp:Label ID="lbl_camposOT" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="white-space:nowrap;">
                        <asp:CheckBoxList ID="chb_camposOT" runat="server" RepeatDirection="Horizontal" 
                        RepeatColumns="3" CssClass="lbl">
                        </asp:CheckBoxList>
                    </td>
                    <td>
                    </td>
                </tr>
                
                <tr>
                    <td width = "20%">
                        <asp:Label ID="lbl_camposOC" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="white-space:nowrap;">
                        <asp:CheckBoxList ID="chb_camposOC" runat="server" RepeatDirection="Horizontal" 
                        RepeatColumns="3" CssClass="lbl">
                        </asp:CheckBoxList>
                    </td>
                    <td>
                    </td>
                </tr>
                
                  <tr>
                    <td width = "20%">
                        <asp:Label ID="lbl_camposSolFormn" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="white-space:nowrap;">
                        <asp:CheckBoxList ID="chb_camposSolFormn" runat="server" RepeatDirection="Horizontal" 
                        RepeatColumns="3" CssClass="lbl">
                        </asp:CheckBoxList>
                    </td>
                    <td>
                    </td>
                </tr>
                 
                 
                  <tr>
                    <td width = "20%">
                        <asp:Label ID="lbl_camposALQ" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td style="white-space:nowrap;">
                        <asp:CheckBoxList ID="chb_camposALQ" runat="server" RepeatDirection="Horizontal" 
                        RepeatColumns="3" CssClass="lbl">
                        </asp:CheckBoxList>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                    </td>
                    <td style="width: 100px">
                        <bti:BotonImagen ID="btn_guardarParametros" runat="server" CssClass="imb" ValidationGroup='equ'
                            ImageUrl="~/images/botones/aceptar.png" /></td>
                    <td style="width: 100%">
                    </td>
                </tr>
                <tr>
                    <td class="td_lblFormulario">
                    </td>
                    <td colspan="2">
                        <asp:ValidationSummary ID='ValidationSummary1' runat='server' ValidationGroup='equ' CssClass='lbl_mensaje'
                            ForeColor='' />
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        &nbsp;
                    </td>
                </tr>
            </table>
        </asp:View>
     </asp:MultiView></div>
       <uc1:popup ID='popup1' runat='server' a_bol_visible='false' />
</asp:Content>