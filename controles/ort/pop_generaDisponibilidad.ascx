<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_generaDisponibilidad.ascx.vb" Inherits="website.samm_componentes.controles_ort_pop_generaDisponibilidad" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="uc2" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register src="ort_actividadesProgramadas.ascx" tagname="ort_actividades" tagprefix="var" %>
<table>
    <tr>
        <td colspan="4">
            <asp:RadioButtonList ID="rblTipo" runat="server" RepeatDirection="Horizontal" RepeatColumns="2">
                <asp:ListItem Value="1" Text="<%$Resources:res_etiquetas_ort,esDisponibilidad %>"></asp:ListItem>
                <asp:ListItem Text="<%$Resources:res_etiquetas_ort,esNoDisponibilidad %>" Value="2" Selected="true"></asp:ListItem>
                <asp:ListItem Text="1" Value="3" Selected="false"></asp:ListItem>
            </asp:RadioButtonList></td>
                
    </tr>
    <tr>
        <td>
            <asp:Label cssclass="lbl" ID="Label1" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaInicial %>"></asp:Label></td>
        <td>
            <uc1:fechaAvanzada ID="fecFechaIni" runat="server" a_str_prefijo="ff" 
                a_bln_obligatorio="true" a_str_grupoValidacion="grv_variosDias" />
        </td>
        <td>
            <asp:Label cssclass="lbl" ID="Label2" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaFinal %>"></asp:Label></td>
        
        <td>
            <uc1:fechaAvanzada ID="fecFechaFin" runat="server" a_str_prefijo="ff" 
                a_bln_obligatorio="true" a_str_grupoValidacion="grv_variosDias" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label cssclass="lbl" ID="Label3" runat="server" Text="<%$Resources:res_etiquetas_ort,horaInicial %>"></asp:Label></td>
        <td>
            <table>
            <tr>
            <td>
             <uc1:fechaAvanzada ID="fecHoraIni" runat="server" a_str_prefijo="hh" 
                    a_bln_obligatorio="true" a_str_grupoValidacion="grv_variosDias" />
            </td> <td style="white-space:nowrap;">
            <asp:Label cssclass="lbl" ID="Label4" runat="server" Text="<%$Resources:res_etiquetas_ort,horaFinal %>"></asp:Label></td>
            <td>
            <uc1:fechaAvanzada ID="fecHoraFin" runat="server" a_str_prefijo="hh" 
                    a_bln_obligatorio="true" a_str_grupoValidacion="grv_variosDias" />
        </td>
            </tr>
            </table>
        </td>
       
        
        
    </tr>
    <tr>
        <td>
            <asp:Label cssclass="lbl" ID="Label5" runat="server" Text="<%$Resources:res_etiquetas_ort,diasSemana %>"></asp:Label></td>
        <td colspan="3">
            <asp:CheckBoxList ID="cblDiasSemana" runat="server" CssClass="cbl" RepeatColumns="4"
                RepeatDirection="Horizontal">
            </asp:CheckBoxList></td>
        
    </tr>
    <tr>
        <td style="white-space: nowrap">
            <asp:Label cssclass="lbl" ID="Label6" runat="server" Text="<%$Resources:res_etiquetas_ort,periodo %>"></asp:Label></td>
        <td colspan="3">
            <asp:TextBox ID="txtPeriodo" runat="server" CssClass="txt_entero" 
                ValidationGroup="grv_variosDias">1</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPeriodo"
                CssClass="lbl_mensaje" ValidationGroup="grv_variosDias">*</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ControlToValidate="txtPeriodo" CssClass="lbl_mensaje" ErrorMessage="+" 
                ForeColor="" MaximumValue="100" MinimumValue="1" Type="Integer" 
                ValidationGroup="grv_variosDias">+</asp:RangeValidator>
        </td>
        
    </tr>
    <tr id="tr_motivo" runat="server">
        <td>
            <asp:Label cssclass="lbl" ID="Label7" runat="server" Text="<%$Resources:res_etiquetas_ort,motivoDisponibilidad %>"></asp:Label></td>
        <td colspan="3">
            <asp:TextBox ID="txt_motivo" runat="server" CssClass="txt_multilinea" TextMode="MultiLine"></asp:TextBox>
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_motivo"
                CssClass="lbl_mensaje" ValidationGroup="disponib">*</asp:RequiredFieldValidator>--%></td>
    </tr>
    <tr>
        <td>
            <asp:Label cssclass="lbl" ID="Label9" runat="server" Text="<%$Resources:res_metadata,ort_programacion_comentario %>"></asp:Label></td>
        <td colspan="3">
            <asp:TextBox ID="txt_comentario" runat="server" CssClass="txt_multilinea" TextMode="MultiLine"></asp:TextBox>
            </td>
    </tr>
    <tr>
        <td>
            <asp:Label cssclass="lbl" ID="Label8" runat="server" Text="<%$Resources:res_etiquetas_ort,tecnicos %>"></asp:Label></td>
        <td colspan="3">
            <uc2:busquedaAvanzadaMultiple ID="busTecnicos" runat="server" a_str_campo="nombre,id_grupo"
                a_str_tabla="seg_usuario" a_bln_obligatorio="true" a_str_grupoValidacion="disponib" />
        </td>
        
    </tr>
    <tr>
    <td></td><td>
     <var:ort_actividades ID="ort_activida" runat="server" />
    </td>
    </tr>
    <tr>
        <td>
        </td>
        <td colspan="3">
            <bti:botonimagen id="imbAceptar" runat="server" cssclass="imb" 
                imageurl="../../images/botones/aceptar.png" ValidationGroup="grv_variosDias"></bti:botonimagen>&nbsp;
            <bti:BotonImagen ID="btiQuitar" runat="server" CssClass="imb" ImageUrl="../../images/botones/quitar.gif"
                ValidationGroup="disponib" />
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td colspan="3">
            <asp:Label ID="lblMensaje" runat="server" CssClass="lbl_mensaje"></asp:Label></td>
            
    </tr>
    <tr>
    <td colspan="2">
    <asp:GridView ID="grd_cruces" runat="server" AutoGenerateColumns="False">
        <FooterStyle CssClass="gri_pie" />
        <RowStyle CssClass="gri_item" />
        <PagerStyle CssClass="gri_paginacion" />
        <HeaderStyle CssClass="gri_titulo" />
        <AlternatingRowStyle CssClass="gri_itemAlterno" />
        <SelectedRowStyle CssClass="gri_itemSeleccionado" />
        <Columns>
         <asp:BoundField DataField="Nombre" />
        <asp:BoundField HeaderText="<%$Resources:res_metadata,cnt_contratoequipo_fecha_ff%>"
        DataField="Hora de Cruce" />
        <asp:BoundField HeaderText="<%$Resources:res_metadata,ort_motivocancelacion_motivocancelacion%>"
        DataField="Motivo" />
        </Columns>
    </asp:GridView>
    </td>
    </tr>
</table>
