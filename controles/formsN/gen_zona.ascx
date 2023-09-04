<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='gen_zona.ascx.vb' Inherits='website.samm_componentes.controles_seg_gen_zona_N' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
&nbsp;&nbsp;<table class='tbl_marcoFormulario'>
<tr>
<td>
<asp:Panel ID='pan_formulario' runat='server' DefaultButton='imbGuardar'>
<table class='tbl_formulario' border='0' cellpadding='0' cellspacing='0'>
<tr>
<td align='right' colspan='1' class='td_formEspacioH'>
<img alt='' src='../../images/interfaz/spacer.gif' style='width: 17px; height: 1px' />
</td>
<td align='right' colspan='3' class='td_formEspacioV'>
</td>
</tr>
<tr>
<td align='right'>
</td>
<td align='right' valign='top'>
<act:togglebuttonextender id='ToggleButtonExtender1' runat='server' checkedimagealternatetext='<%$ Resources:res_controles,ayuda_especificano %>'
    checkedimageurl='../../images/iconos/ojo1.png' imageheight='26' imagewidth='30'
    targetcontrolid='chb_ayudaCampo' uncheckedimagealternatetext='<%$ Resources:res_controles,ayuda_especifica %>'
    uncheckedimageurl='../../images/iconos/ojo2.png'></act:togglebuttonextender>
<table border='0' cellpadding='0' cellspacing='0' id='tbl_estadoformulario'>
    <tr>
        <td>
            <asp:Label ID='lbl_estadoFormulario' runat='server' CssClass='lbl_estadoFormulario'></asp:Label>
        </td>
        <td>
            <asp:CheckBox ID='chb_ayudaCampo' runat='server' AutoPostBack='True' CssClass='chb' />
        </td>
    </tr>
</table>
<table>
    <tr>
        <td align='right'>
        </td>
        <td class='td_lblFormulario'>
            <asp:Label ID='lbl_zona' runat='server' CssClass='lblobligatorio'></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <asp:TextBox ID='txt_zona' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID='rfv_zona' runat='server' ControlToValidate='txt_zona'
                ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align='right'>
        </td>
        <td class='td_lblFormulario'>
            <asp:Label ID='lbl_zona_codigo' runat='server' CssClass='lblobligatorio'></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <asp:Label ID="lbl_zona_codigo_auto" runat="server" CssClass="lbl"></asp:Label><asp:TextBox
                ID='txt_zona_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfv_zona_codigo" runat="server" ControlToValidate="txt_zona_codigo"
                CssClass="lbl_mensaje" ForeColor="" SetFocusOnError="True" ValidationGroup="form">*</asp:RequiredFieldValidator>
        </td>
    </tr>
        <tr>
        <td align='right'>
        </td>
        <td class='td_lblFormulario'>
            <asp:Label ID='lbl_codigoExterno' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <asp:TextBox ID='txt_codigoExterno' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
        </td>
        <td>
        </td>
    </tr>
        <tr align='right'>
        <td align='right'>
        </td>
        <td>
            <table cellpadding='0' cellspacing='0'>
                <tr>
                    <td align='right'>
                        <asp:Label ID='lbl_tiempoDesplazamiento' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                    <td align='right' style='padding-left: 8px'>
                        <asp:Label ID='lbl_tiempoDesplazamiento_busDesde' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td align='right'>
                        <asp:Label ID='lbl_tiempoDesplazamiento_busA' runat='server' CssClass='lbl'></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
        <td class='td_controlesFormulario'>
            <table cellpadding='0' cellspacing='0'>
                <tr>
                    <td>
                        <asp:TextBox ID='txt_tiempoDesplazamiento' runat='server' CssClass='txt_numero'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID='txt_tiempoDesplazamiento_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
                    </td>
                </tr>
            </table>
        </td>
        <td>
            <act:filteredtextboxextender id='ftb_tiempoDesplazamiento' runat='server' targetcontrolid='txt_tiempoDesplazamiento'
                filtertype='Numbers,Custom' />
            <act:filteredtextboxextender id='ftb_tiempoDesplazamiento_bus' runat='server' targetcontrolid='txt_tiempoDesplazamiento_bus'
                filtertype='Numbers,Custom' />
        </td>
    </tr>
    <tr align='right' runat='server' visible='false'>
        <td align='right'>
        </td>
        <td>
            <table cellpadding='0' cellspacing='0'>
                <tr>
                    <td align='right'>
                        <asp:Label ID='lbl_nivel' runat='server' CssClass='lblobligatorio'></asp:Label>
                    </td>
                    <td align='right' style='padding-left: 8px'>
                        <asp:Label ID='lbl_nivel_busDesde' runat='server' CssClass='lblobligatorio'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td align='right'>
                        <asp:Label ID='lbl_nivel_busA' runat='server' CssClass='lblobligatorio'></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
        <td class='td_controlesFormulario'>
            <table cellpadding='0' cellspacing='0'>
                <tr>
                    <td>
                        <asp:TextBox ID='txt_nivel' runat='server' CssClass='txt_entero'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID='txt_nivel_bus' runat='server' CssClass='txt_entero_bus'></asp:TextBox>
                    </td>
                </tr>
            </table>
        </td>
        <td>
            <asp:RequiredFieldValidator ID='rfv_nivel' runat='server' ControlToValidate='txt_nivel'
                ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator><act:filteredtextboxextender
                    id='ftb_nivel' runat='server' targetcontrolid='txt_nivel' filtertype='Numbers' /><act:filteredtextboxextender
                        id='ftb_nivel_bus' runat='server' targetcontrolid='txt_nivel_bus' filtertype='Numbers' />
        </td>
    </tr>
    <tr>
        <td align='right'>
        </td>
        <td class='td_lblFormulario'>
            <asp:Label ID='lbl_id_zona' runat='server' CssClass='lbl'></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <bus:busquedaAvanzada ID='bus_zona' runat='server' a_str_tabla='gen_zona' />
        </td>
        <td>
        </td>
    </tr>
</table>
<table id='tbl_guardarformulario'>
    <tr>
        <td>
            <asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje'
                ForeColor='' />
        </td>
        <td valign='middle' align='right'>
            <bti:BotonImagen ID='imbGuardar' runat='server' ImageUrl='../../images/botones/aceptar.png'
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
<asp:HiddenField ID='hddEstadoFormulario' runat='server' Value='<%# samm_logica.enu_estadoFormulario.buscar %>' />
<boc:bocadillo ID="Bocadillo" runat="server" />
