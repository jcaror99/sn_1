<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_turnos.ascx.vb" Inherits="website.samm_componentes.controles_cnt_pop_turnos" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="act" %>
<asp:Panel ID="Pabnel1" runat="server" CssClass="pnl">
    <table>
        <tr>
            <td>
                <asp:CheckBox ID="chb_guardarTurno" runat="server" />
            </td>
        </tr>
        <tr>
            <td valign="top">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_inicio" runat="server" CssClass="lbl"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID="Label2" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,equ_equipo_horometroactual%>"></asp:Label>
                        </td>
                        <td class='td_controlesFormulario'>
                            <asp:TextBox ID="txtNuevoHorometro" runat="server" CssClass="txt_numero"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_horometro" runat="server" ControlToValidate="txtNuevoHorometro"
                                CssClass="lbl_mensaje" ForeColor='' ValidationGroup="inc_horometro">*</asp:RequiredFieldValidator>
                            <act:FilteredTextBoxExtender ID='ftb_horometro' runat='server' FilterType='Numbers,Custom'
                                TargetControlID='txtNuevoHorometro'>
                            </act:FilteredTextBoxExtender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="Label1" runat="server" CssClass="txt_numero" Style="visibility: hidden;"
                                Text="a"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID="Label3" runat="server" CssClass="lbl" Text="<%$Resources:res_etiquetas_equ, fechaTomaDatos %>"></asp:Label>
                        </td>
                        <td class='td_controlesFormulario'>
                            <uc1:fechaAvanzada ID="fecFecha" runat="server" a_bln_obligatorio="true" a_str_grupoValidacion="inc_horometro"
                                a_bol_ignorarHora="true" a_str_prefijo="fh" />
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="top">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_fin" runat="server" CssClass="lbl"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID="Label2_f" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,equ_equipo_horometroactual%>"></asp:Label>
                        </td>
                        <td class='td_controlesFormulario'>
                            <asp:TextBox ID="txtNuevoHorometro_f" runat="server" CssClass="txt_numero"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_horometro_f" runat="server" ControlToValidate="txtNuevoHorometro_f"
                                CssClass="lbl_mensaje" ForeColor='' ValidationGroup="inc_horometro">*</asp:RequiredFieldValidator>
                            <act:FilteredTextBoxExtender ID='ftb_horometro_f' runat='server' FilterType='Numbers,Custom'
                                TargetControlID='txtNuevoHorometro_f'>
                            </act:FilteredTextBoxExtender>
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID="lbl_horasTotales" runat="server" CssClass="lbl"></asp:Label>
                        </td>
                        <td class='td_controlesFormulario'>
                            <asp:TextBox ID="txt_horasTotales" runat="server" CssClass="txt_numero"></asp:TextBox>
                        </td>
                        <td class="td_controlesFormulario">&nbsp;
                        </td>
                        <td class="td_controlesFormulario"></td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID="Label3_f" runat="server" CssClass="lbl" Text="<%$Resources:res_etiquetas_equ, fechaTomaDatos %>"></asp:Label>
                        </td>
                        <td class='td_controlesFormulario'>
                            <uc1:fechaAvanzada ID="fecFecha_f" runat="server" a_bln_obligatorio="true" a_str_grupoValidacion="inc_horometro"
                                a_str_prefijo="fh" />
                        </td>
                        <td class="td_controlesFormulario">&nbsp;
                        </td>
                        <td class="td_controlesFormulario">&nbsp;
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="top">
                <table>
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID='lbl_notas' runat='server' CssClass='lbl'></asp:Label></td>
                        <td>
                            <asp:TextBox ID='txt_notas' runat='server' CssClass='txt_numero'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <cc1:BotonImagen ID="btiEliminar" runat="server" ImageUrl="~/images/botones/quitar.gif"
                                Visible="False" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <cc1:BotonImagen ID="btiAceptar" runat="server" ImageUrl="~/images/botones/aceptar.png"
                    ValidationGroup="inc_horometro" Visible="False" />
            </td>
            <td>
                <asp:HiddenField ID="hdd_id_turnoIni" runat="server" />
                <asp:HiddenField ID="hdd_id_turnoFin" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Label ID="lblmensaje" CssClass="lbl_mensaje" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</asp:Panel>
