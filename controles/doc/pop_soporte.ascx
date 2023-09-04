<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_soporte.ascx.vb" Inherits="website.samm_componentes.controles_doc_pop_soporte" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="act" %>
<table>
    <tr>
        <td>
            <asp:Label ID="lbl_equiposSoporte" runat="server" Text='' CssClass="lbl">
            </asp:Label>
        </td>
        <td class='td_controlesFormulario'>&nbsp;        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario' colspan="2">
            <asp:GridView ID="grvDocumentos" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="equ_equipo_equipo" HeaderText="<%$Resources:res_campoGrilla,equ_equipo_equipo %>" />
                    <asp:BoundField DataField="fecha_ff" HeaderText="<%$Resources:res_campoGrilla,doc_documento_fecha_fh %>" />
                    <asp:TemplateField HeaderText="<%$Resources:res_campoGrilla,doc_documento_salida_documento_salida %>">
                        <ItemTemplate>
                            <asp:HyperLink ID="hprSalida" runat="server" CssClass="lnk" Text='<%# eval("documentoSalida") %>' Target="_blank" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="<%$Resources:res_campoGrilla,doc_documento_entrada_documento_entrada %>">
                        <ItemTemplate>
                            <asp:HyperLink ID="hprEntrada" runat="server" CssClass="lnk" Text='<%# eval("documentoentrada") %>' Target="_blank" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle CssClass="gri_pie" />
                <RowStyle CssClass="gri_item" />
                <PagerStyle CssClass="gri_paginacion" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblAgregarSoporte" runat="server" Text='' CssClass="lbl">
            </asp:Label>
        </td>
        <td class='td_controlesFormulario'>&nbsp;        </td>
    </tr>


    <tr>
        <td class='td_lblFormulario'>

            <asp:Label ID="Label2" runat="server" Text='<%$Resources:res_metadata,equ_equipo_soporte %>' CssClass="lbl_formulario"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <asp:CheckBox ID="chc_soporte" runat="server" AutoPostBack="True" />
        </td>
    </tr>


    <tr>
        <td class='td_lblFormulario'>

            <asp:Label ID="Label3" runat="server" Text='<%$Resources:res_metadata,equ_equipo_equipo %>' CssClass="lbl_formulario"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <uc1:busquedaAvanzada ID="bus_equipo" runat="server" a_bln_obligatorio="true" a_str_grupoValidacion="equipo" a_str_tabla="equ_equipo" />
        </td>
    </tr>




    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="Label1" runat="server" Text='<%$Resources:res_metadata,equ_trazabilidad_fecha_ff %>' CssClass="lbl_formulario"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <uc2:fechaAvanzada ID="fec_fecha" runat="server" a_bln_obligatorio="true" a_str_prefijo="ff" />
        </td>
    </tr>
    <tr>
        <td class='td_lblFormulario'>
            <asp:Label ID="Label4" runat="server" Text='<%$Resources:res_metadata,equ_equipo_horometroActual %>' CssClass="lbl_formulario"></asp:Label>
        </td>
        <td class='td_controlesFormulario'>
            <asp:TextBox ID="txt_horometro" runat="server" CssClass="txt_numero"></asp:TextBox><asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="txt_horometro" ForeColor="" CssClass="lbl_mensaje" ValidationGroup="equipo">*</asp:RequiredFieldValidator><act:FilteredTextBoxExtender ID='ftb_horometro' runat='server' FilterType='Numbers,Custom' TargetControlID='txt_horometro'></act:FilteredTextBoxExtender>
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <cc1:BotonImagen ID="bti_aceptar" runat="server" ValidationGroup="equipo" ImageUrl="../../images/botones/aceptar.jpg" />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:ValidationSummary ID='vls' runat='server' ValidationGroup='equipo' CssClass='lbl_mensaje' ForeColor='' HeaderText='<%$Resources:res_mensajes,camposObligatorios %>'></asp:ValidationSummary>
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
</table>
