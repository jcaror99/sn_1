<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_tiempos.ascx.vb"
    Inherits="website.samm_componentes.controles_ort_inc_tiempos" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="pop" %>
<%@ Register Src="ort_actividades.ascx" TagName="ort_actividades" TagPrefix="actividad" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAv" TagPrefix="feAv" %>
<pop:popup ID="pop_tiempos" runat="server" />
<table id="tblTiempos" runat="server" class="tbl_marcoFormulario">
    <tr>
        <td>
            &nbsp;
        </td>
        <td>
            <br />
            <asp:Label ID="lbl_agregarActividad" runat="server" CssClass="lbl" Text="<%$Resources:res_etiquetas_ort,agregarActividades %>"></asp:Label><br />
            <table style="background-color: white">
                <tr>
                    <td>
                        <actividad:ort_actividades ID="Ort_actividades2" runat="server" />
                        <br />
                        <asp:CheckBox ID="chb_agregarTiempo" runat="server" Text='<%$Resources:res_etiquetas_ort,agregarTiempo %>'
                            CssClass="chk"></asp:CheckBox>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txt_masTiempo" runat="server" CssClass='txt_numero'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_masTiempo" runat="server" ControlToValidate="txt_masTiempo"
                            ValidationGroup="ort_tiempo" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <bti:BotonImagen ID="bti_agregarActividad" runat="server" CausesValidation="true"
                            ImageUrl="../../images/botones/aceptar.jpg" ValidationGroup="ort_tiempo" />
                    </td>
                </tr>
            </table>
            <br />
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <asp:GridView ID="grvTiempos" runat="server" AutoGenerateColumns="False" BorderStyle="None"
                UseAccessibleHeader="False">
                <FooterStyle CssClass="gri_pie" />
                <Columns>
                    <asp:BoundField DataField="cat_catalogo.actividad_catalogo.actividad" HeaderText="<%$ Resources:res_campoGrilla,cat_catalogo_actividad_catalogo_actividad %>">
                    </asp:BoundField>
                    <asp:BoundField DataField="seg_usuario_nombre" HeaderText="<%$ Resources:res_nombreColumna,tecnico %>">
                    </asp:BoundField>
                    <asp:BoundField DataField="desde_fh" HeaderText="<%$ Resources:res_campoGrilla,ort_programacion_desde_fh %>">
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="hasta">
                        <ItemTemplate>
                            <feAv:fechaAv ID="txtHasta" runat="server" a_str_prefijo="hh"></feAv:fechaAv>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,ort_programacion_duracion %>">
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%# bind("id") %>' Visible="false"></asp:Label>
                            <asp:TextBox ID="txtCantidad" runat="server" CssClass="txt_numero" Text='<%# eval("duracion") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCantidad"
                                ValidationGroup="ort_tiempo" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="<%$ Resources:res_etiquetas_ort, duracionTempario %>">
                        <ItemTemplate>
                            <asp:Label ID="lblTempario" runat="server" Text='<%# bind("duracionestimada_actividad") %>'
                                CssClass="lbl"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <bti:BotonImagen ID="bti_Eliminar" runat="server" ImageUrl="../../images/iconos/eliminar.gif"
                                CommandName="delete" CausesValidation="False" />
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
    <tr>
        <td>
        </td>
        <td>
            <bti:BotonImagen ID="imbGuardarTiempos" runat="server" CssClass="imb" ImageUrl="../../images/botones/aceptar.png"
                OnClick="imbGuardarTiempos_Click" ValidationGroup="ort_tiempo" />
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <asp:Label ID="lblMensajeTiempos" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
</table>

