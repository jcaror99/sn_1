<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_progAuto.ascx.vb" Inherits="website.samm_componentes.controles_ort_pop_progAuto" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc3" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<table>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="<%$Resources:res_etiquetas_ort,ots %>"></asp:Label></td>
        <td>
            <uc2:busquedaAvanzadaMultiple ID="busOts" runat="server" a_str_campo="doc_documento_ot_documento_numero,documento.ot"
                a_str_tabla="doc_documento.ot" a_bln_obligatorio="true" a_str_grupoValidacion="autoprog" />
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="<%$Resources:res_etiquetas_ort,tecnico %>"></asp:Label></td>
        <td>
            <uc1:busquedaAvanzada ID="busTecnico" runat="server" a_str_filtros="id_cargo in(select id from seg_cargo where esTecnico=1)"
                a_str_tabla="seg_usuario" />
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="<%$Resources:res_metadata,ort_programacion_duracion %>"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtDuracion" runat="server" CssClass="txt_numero" ValidationGroup="autoprog"></asp:TextBox><br />
            <asp:CheckBox ID="chkDuracionPorOT" runat="server" CssClass="chk" Text="" /></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDuracion" ValidationGroup="autoprog">*</asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaInicial %>"></asp:Label></td>
        <td>
            <uc3:fechaAvanzada ID="fecDesde" runat="server" a_str_grupoValidacion="autoprog" a_str_prefijo="fh" />
        </td>
        <td>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label4" runat="server"  Text="<%$Resources:res_metadata,doc_documento_fechalimite_fh %>"></asp:Label></td>
        <td>
            <uc3:fechaAvanzada ID="fecHasta" runat="server" a_bln_obligatorio="true" a_str_grupoValidacion="autoprog" a_str_prefijo="fh" />
            <br />
            <asp:CheckBox ID="chkFechaLimitePorOt" runat="server" CssClass="chk" Text="" /></td>
        <td>
        </td>
    </tr>
    <tr>
        <td>
            <%--<asp:CheckBox ID="chkDesplazamiento" runat="server" CssClass="chk" Text='<%$ Resources:res_etiquetas_ort,progAutoObservacion %>' />--%><br />
            <br />
            <bti:botonimagen id="imbAceptar" runat="server" cssclass="imb" imageurl="../../images/botones/aceptar.png"
                onclick="imbAceptar_Click" validationgroup="autoprog"></bti:botonimagen>&nbsp;
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label></td>
        <td>
        </td>
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
        <asp:BoundField DataField="Hora de Cruce" />
        <asp:BoundField DataField="Motivo" />
        </Columns>
    </asp:GridView>
    </td>
    </tr>
</table>
