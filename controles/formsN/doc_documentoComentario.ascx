<%@ Control Language='VB' AutoEventWireup='false' CodeBehind='doc_documentoComentario.ascx.vb'
 Inherits='website.samm_componentes.controles_seg_doc_documentoComentario_N' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
TagPrefix="uc3" %>
<style type="text/css">
    .style1
    {
        width: 194px;
    }
</style>

<table class='tbl_marcoFormulario'>
<tr>
<td>
<asp:Panel ID='pan_formulario' runat='server' DefaultButton='imbGuardar'>
<table class='tbl_formulario' border='0' cellpadding='0' cellspacing='0'>
<tr>
<td align='right' colspan='1' class='td_formEspacioH'>
<img alt="" src="../../images/interfaz/spacer.gif" style="width: 17px; height: 1px" /><img
alt='' src='../../images/interfaz/spacer.gif' style='width: 17px; height: 1px' />
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
<td align='right' class="style1">
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_documentoComentario' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_documentoComentario' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID='rfv_documentoComentario' runat='server' ControlToValidate='txt_documentoComentario'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr runat="server" visible="false">
<td align='right' class="style1">
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_documentoComentario_codigo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID='txt_documentoComentario_codigo' runat='server' MaxLength='100' CssClass='txt_multilinea'></asp:TextBox>
</td>
<td>
</td>
</tr>
<tr>
<td align='right' class="style1">
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_comentario' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<txt:textoAvanzado ID='txt_comentario' runat='server' a_bln_obligatorio='True' a_str_grupoValidacion='form'></txt:textoAvanzado>
</td>
<td>
</td>
</tr>
<tr>
<td align='right' class="style1">
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_documento' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_documento' runat='server' a_str_tabla='doc_documento'
a_bln_obligatorio='True' a_str_grupoValidacion='form' />
</td>
</tr>
<tr>
<td align="right" class="style1">
</td>
<td class="td_lblFormulario" >
<asp:Label ID="lbl_contacto" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">
<bus:busquedaAvanzada ID="bus_contacto" runat="server" a_str_tabla="ter_contacto"
a_bln_obligatorio="false" a_str_grupoValidacion="form" a_bln_mostrarNuevoConDrop="True" />
</td>
</tr>
<tr>
<td align='right' class="style1">
</td>
<td class='td_lblFormulario'>

<asp:Label ID='lbl_recordar' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_recordar' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
RepeatLayout='Flow'>
<asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
<asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
</td>
</tr>

<tr ID="tr_opcionRecordar" runat="server">
<td align='right' class="style1">
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_siguienteDocumento' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_opcionRecordar' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
RepeatLayout='Flow'>
<asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
<asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
</asp:RadioButtonList>
</td>
<td>
</td>
</tr>

<tr ID="tr_fechaRecordar" runat="server"><td></td>
        <td class="td_lblFormulario">
            <asp:Label ID="lbl_fecha_recordatorio" runat="server" CssClass="lblobligatorio" 
                Visible="true" ></asp:Label>
        </td>
        <td>
            <fec:fechaAvanzada ID="fec_fecha_recordatorio" runat="server" 
                a_str_prefijo="fh" CssClass="txt_fecha_bus" CssClassHora="txt_hora_bus" 
                Visible="true"/>
        </td>
</tr>
<tr id="tr_usuario" runat ="server" >
<td></td>
<td class='td_lblFormulario'><asp:Label ID='lbl_id_usuario' runat="server" CssClass='lblobligatorio' Visible="true"></asp:Label></td> 
<td><%--<uc3:busquedaAvanzadaMultiple ID="bus_usuario" runat="server" 
        a_str_campo="nombre,id_perfil,id_cargo" a_str_tabla="seg_usuario" 
        Visible="true"/>--%>
    <%--Seccion Tecnicos Usuarios --%>
    <div id="div_tecnicos" runat="server" class="container">
        <div class="row text-primary container-fluid" style="text-align: center">
            <h3>
                <label id="lbl_sectecnicos" runat="server" class="control-label">
                </label>
            </h3>
        </div>
        <div class="row col-md-12 form-group text-primary">
            <label id="lbl_tecnico" runat="server">
            </label>
            <asp:DropDownList ID="drp_tecnicos" runat="server" CssClass="drp" AutoPostBack="true">
            </asp:DropDownList>
        </div>
        <div>
            <asp:GridView ID="grd_tecnicos" runat="server" AutoGenerateColumns="false" RowStyle-CssClass="form-group"
                ShowHeader="false" ShowFooter="false" BorderStyle="None" GridLines="None">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <label id="lbl_tecnico" runat="server" class="txtSamm">
                                <%# Eval("tecnico") %></label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ID="imb_eliminar" runat="server" ImageUrl="~/images/botones/btnelimina.png"
                                CommandName="eliminar" CommandArgument='<%# Eval("id") %>' ValidationGroup="otro" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
    </td>
</tr>
<tr>
<td colspan='3' align='center'>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
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
