<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_moverEquipo.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_moverEquipo" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="act" %>
<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="textoAvanzado" TagPrefix="uc3" %>
<table>
    <tr>
        <td valign="top">
            <cc1:BotonImagen ID="btiImprimir" runat="server" ImageUrl="~/images/botones/print.gif" />
        </td>
        <td class='td_lblFormulario'>
            <asp:GridView ID="grvTraslados" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:CommandField ShowSelectButton="True">
                        <ControlStyle CssClass="invisible" />
                        <HeaderStyle CssClass="invisible" />
                        <ItemStyle CssClass="invisible" />
                    </asp:CommandField>
                    <asp:TemplateField Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lbl_id" runat="server" viisble="false" Text='<%#Eval("id") %>'></asp:Label>
                            <asp:Label ID="lbl_idDocumento" runat="server" viisble="false" Text='<%#Eval("id_documento") %>'></asp:Label></ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="fecha_ff" HeaderText="<%$Resources:res_campoGrilla,doc_documento_fecha_fh %>" />
                    <asp:BoundField DataField="equ_trazabilidad" HeaderText="<%$Resources:res_campoGrilla,equ_trazabilidad_trazabilidad %>" />
                    <asp:BoundField DataField="terceroorigen" HeaderText="<%$Resources:res_nombreColumna,terceroOrigen %>" />
                    <asp:BoundField DataField="sucursalorigen" HeaderText="<%$Resources:res_nombreColumna,sucursalOrigen %>" />
                    <asp:BoundField DataField="tercerodestino" HeaderText='<%$Resources:res_nombreColumna,terceroDestino %>' />
                    <asp:BoundField DataField="sucursaldestino" HeaderText="<%$Resources:res_nombreColumna,sucursalDestino %>" />
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
        <td class='lbl' colspan="2">
            <asp:Panel ID="pnlCrear" runat="server">
                <table>
                    <tr>
                        <td class="td_lblFormulario">
                            <asp:Label ID="Label1" runat="server" CssClass="lbl_formulario" Text="<%$Resources:res_metadata,equ_trazabilidad_fecha_ff %>"></asp:Label>
                        </td>
                        <td class="td_controlesFormulario">
                            <uc2:fechaAvanzada ID="fec_fecha" runat="server" a_bln_obligatorio="true" ControlToValidate="txt_hora" a_str_grupoValidacion="equipo" a_str_prefijo="fh" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_lblFormulario">
                            <asp:Label ID="Label5" runat="server" CssClass="lbl_formulario" Text="<%$Resources:res_metadata,equ_trazabilidad_trazabilidad %>"></asp:Label>
                        </td>
                        <td class="td_controlesFormulario">
                            <uc3:textoAvanzado ID="tex_motivo" runat="server" a_str_grupoValidacion="equipo"
                                CssClass="txt_formulario" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_lblFormulario">
                            <asp:Label ID="Label2" runat="server" CssClass="lbl_formulario" Text="<%$Resources:res_metadata,ter_tercero_tercero %>"></asp:Label>
                        </td>
                        <td class="td_controlesFormulario">
                            <uc1:busquedaAvanzada ID="bus_tercero" runat="server" a_bln_mostrarNuevoConDrop="false"
                                a_bln_obligatorio="true" a_bol_postBack="true" a_str_grupoValidacion="equipo"
                                a_str_tabla="ter_tercero" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_lblFormulario">
                            <asp:Label ID="Label3" runat="server" CssClass="lbl_formulario" Text="<%$Resources:res_metadata,ter_sucursal_sucursal %>"></asp:Label>
                        </td>
                        <td class="td_controlesFormulario">
                            <uc1:busquedaAvanzada ID="bus_sucursal" runat="server"  a_bol_postBack="true"  a_bln_obligatorio="true" a_str_grupoValidacion="equipo"
                                a_str_tabla="ter_sucursal" />
                        </td>
                    </tr>
                   <tr>
                  <td>
                    
                  </td>
                  <td>
                  <asp:label ID="lbl_fech_lecuraHorometro" CssClass="lbl" runat="server" Visible="true"></asp:label>
                  </td>
                    </tr>
                    <tr>
                        <td class="td_lblFormulario">
                            <asp:Label ID="Label4" runat="server" CssClass="lbl_formulario" Text="<%$Resources:res_metadata,equ_equipo_horometroActual %>"></asp:Label>
                        </td>
                        <td class="td_controlesFormulario">
                            <asp:TextBox ID="txt_horometro" runat="server" CssClass="txt_numero"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="txt_horometro"
                                ValidationGroup="equipo" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                            <act:filteredtextboxextender id="ftb_horometro" runat="server" filtertype="Numbers,Custom"
                                targetcontrolid="txt_horometro"></act:filteredtextboxextender>
                        </td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID='lbl_ubicacion' runat='server' CssClass='lbl'></asp:Label>
                        </td>
                        <td class='td_controlesFormulario'>
                            <asp:TextBox ID='txt_ubicacion' runat='server' MaxLength='100' CssClass='txt'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_ubicacion" runat="server" ControlToValidate="txt_ubicacion"
                                CssClass="lbl_mensaje" ForeColor="" SetFocusOnError="True" ValidationGroup="equipo">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_lblFormulario">
                            <asp:Label ID="lbl_equipo" runat="server" CssClass="lbl_formulario"></asp:Label>
                        </td>
                        <td class="td_controlesFormulario">
                            <uc1:busquedaAvanzada ID="bus_equipos" runat="server" a_bln_obligatorio="true" a_str_grupoValidacion="equipo"
                                a_str_tabla="equ_equipo" />
                        </td>
                    </tr>
                   <tr>
                        <td>
                        </td>
                        <td class="td_controlesFormulario">
                            <asp:CheckBox ID="chk_moverComponentes" runat="server" CssClass="lbl" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                                ValidationGroup="equipo" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:ValidationSummary ID="vls" runat="server" CssClass="lbl_mensaje" ForeColor=""
                                HeaderText="<%$Resources:res_mensajes,camposObligatorios %>" ValidationGroup="equipo" />
                            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td class='lbl' colspan="2">
            <asp:Panel ID="pnl_instalar" runat="server">
                <table>
                    <tr>
                        <td class='lbl' colspan="2">
                            <table>
                                <tr>
                                    <td class="td_lblFormulario">
                                        <asp:Label ID="lbl_buscarPor" runat="server" CssClass="lbl_formulario"></asp:Label>
                                    </td>
                                    <td class="td_lblFormulario">
                                        <asp:Label ID="lbl_terceroInstalacion" runat="server" CssClass="lbl_formulario" Text="<%$Resources:res_metadata,ter_tercero_tercero %>"></asp:Label>
                                    </td>
                                    <td class="td_controlesFormulario">
                                        <uc1:busquedaAvanzada ID="bus_terceroInstalacion" runat="server" a_bln_mostrarNuevoConDrop="false"
                                            a_bln_obligatorio="false" a_bol_postBack="true" a_str_grupoValidacion="instalacion"
                                            a_str_tabla="ter_tercero" />
                                    </td>
                                    <td class="td_lblFormulario">
                                        <asp:Label ID="lbl_sucursalInstalacion" runat="server" CssClass="lbl_formulario"
                                            Text="<%$Resources:res_metadata,ter_sucursal_sucursal %>"></asp:Label>
                                    </td>
                                    <td class="td_controlesFormulario">
                                        <uc1:busquedaAvanzada ID="bus_sucursalInstalacion" runat="server" a_bln_obligatorio="false"
                                            a_bol_postBack="true" a_str_grupoValidacion="instalacion" a_str_tabla="ter_sucursal" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_lblFormulario">
                            <asp:Label ID="lbl_equipoInstalacion" runat="server" CssClass="lbl_formulario" Text="<%$Resources:res_metadata,equ_equipo_equipo %>"></asp:Label>
                        </td>
                        <td class="td_controlesFormulario">
                            <uc1:busquedaAvanzada ID="bus_equipoInstalacion" runat="server" a_bln_obligatorio="true"
                                a_bol_postBack="true" a_str_grupoValidacion="instalacion" a_str_tabla="equ_equipo" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_lblFormulario">
                            <asp:Label ID="lbl_fechaInstalacion" runat="server" CssClass="lbl_formulario" Text="<%$Resources:res_metadata,equ_trazabilidad_fecha_ff %>"></asp:Label>
                        </td>
                        <td class="td_controlesFormulario">
                            <uc2:fechaAvanzada ID="fec_fechaInstalacion" runat="server" a_bln_obligatorio="true"
                                a_str_prefijo="fh" a_str_grupoValidacion="instalacion" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_lblFormulario">
                            <asp:Label ID="lbl_motivoInstalacion" runat="server" CssClass="lbl_formulario" Text="<%$Resources:res_metadata,equ_trazabilidad_trazabilidad %>"></asp:Label>
                        </td>
                        <td class="td_controlesFormulario">
                            <uc3:textoAvanzado ID="txt_motivoInstalacion" runat="server" a_str_grupoValidacion="instalacion"
                                CssClass="txt_formulario" />
                        </td>
                    </tr>
                    <tr>
                    <td>
                    </td>
                    <td>
                   <asp:Label CssClass="lbl" ID="lbl_fechUltimalecturaSeleq" runat="server"></asp:Label>
                    </td>
                    
                    
                    </tr>
                    <tr>
                        <td class="td_lblFormulario">
                            <asp:Label ID="lbl_horometroInstalacion" runat="server" CssClass="lbl_formulario"
                                Text="<%$Resources:res_metadata,equ_equipo_horometroActual %>"></asp:Label>
                        </td>
                        <td class="td_controlesFormulario">
                            <asp:TextBox ID="txt_horometroInstalacion" runat="server" CssClass="txt_numero"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_HorometroInstalacion" runat="server" ControlToValidate="txt_horometroInstalacion"
                                SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="" ValidationGroup="instalacion">*</asp:RequiredFieldValidator>
                            <act:filteredtextboxextender id="ftb_horometroInstalacion" runat="server" filtertype="Numbers,Custom"
                                targetcontrolid="txt_horometroInstalacion"></act:filteredtextboxextender>
                        </td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID='lbl_ubicacionInstalacion' runat='server' CssClass='lbl'></asp:Label>
                        </td>
                        <td class='td_controlesFormulario'>
                            <asp:TextBox ID='txt_ubicacionInstalacion' runat='server' MaxLength='100' CssClass='txt'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_ubicacionInstalacion" runat="server" ControlToValidate="txt_ubicacionInstalacion"
                                CssClass="lbl_mensaje" ForeColor="" SetFocusOnError="True" ValidationGroup="instalacion">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <cc1:BotonImagen ID="bti_aceptarInstalacion" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                                ValidationGroup="instalacion" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:ValidationSummary ID="vls_instalacion" runat="server" CssClass="lbl_mensaje"
                                ForeColor="" HeaderText="<%$Resources:res_mensajes,camposObligatorios %>" ValidationGroup="instalacion" />
                            <asp:Label ID="lbl_mensajeInstalacion" runat="server" CssClass="lbl_mensaje"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
</table>
