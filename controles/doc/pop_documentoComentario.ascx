<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_documentoComentario.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_documentoComentario" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<asp:HiddenField ID="hdd_fecha" runat="server" />
<table>
    <tr>
        <td rowspan="8">
            <bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.gif" CausesValidation="false" />
            <div id="div_recordatorios" runat="server" style="overflow: auto; width: 250px; height: 200px; border: 1px solid #7F9DB9; white-space: nowrap">
                <asp:GridView ID="grd_comentario" runat="server" ShowHeader="false"
                    AutoGenerateColumns="false" Width="64px" BorderStyle="None">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnk_recordatorio" runat="server" name="tipodest" ToolTip='<%#Eval("comentario")%>' Text='<%# eval("documentoComentario")&" - "& eval("ter_tercero_cliente") %>' CommandArgument='<%#Eval("id") %>' Style="display: block" CausesValidation="false"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <RowStyle CssClass="gri_item" HorizontalAlign="Justify" />
                    <SelectedRowStyle CssClass="gri_itemSeleccionado" HorizontalAlign="Justify"  />
                </asp:GridView>
            </div>
        </td>
        <td>

            <table>
                <tr>
                    <td>
                        <bti:BotonImagen ID="bti_anterior" ImageUrl="~/images/botones/atras.png" runat="server" Visible="true" Width="30" Height="30" CausesValidation="false"></bti:BotonImagen>
                    </td>
                    <td colspan="3" align="center" style="white-space: nowrap; width: 250px;" align="center">
                        <asp:Label ID="lbl_fechaComentario" runat="server" CssClass='lbl_mensaje'></asp:Label><br />
                        <asp:HyperLink ID="hyp_documento" runat="server"></asp:HyperLink><br />
                        <asp:HyperLink ID="hyp_tercero" runat="server"></asp:HyperLink><asp:HyperLink ID="hyp_sucursal" runat="server"></asp:HyperLink><br />
                        <asp:HyperLink ID="hyp_equipo" runat="server"></asp:HyperLink>
                        <asp:HiddenField ID="hdd_recor" runat="server" Visible="true" />
                        <br />
                    </td>
                    <td colspan="1">
                        <bti:BotonImagen ID="bti_siguiente" runat="server" ImageUrl="~/images/botones/siguiente.png" Visible="true" Width="30" Height="30" CausesValidation="false"></bti:BotonImagen>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <div>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_Creacion" runat="server" CssClass="lbl"></asp:Label></td>
                        <td colspan="1" align="left">
                            <asp:Label ID="lbl_fechaCreacion" runat="server" CssClass="lbl"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:HyperLink ID="hpl_documento" runat="server" CssClass="link"></asp:HyperLink>
                        </td>
                    </tr>
                    <tr id="tr_tarea" runat="server">
                        <td>
                            <asp:Label ID="lbl_tarea" runat="server" CssClass="lbl"></asp:Label>
                        </td>
                        <td>
                            <bus:busquedaAvanzada runat="server" ID="bus_tarea" a_str_tabla="doc_tarea" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_comentario" runat="server" CssClass="lbl"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_texto" runat="server" CssClass="txt_grillaHistorial"></asp:TextBox>
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="lbl_contacto" runat="server" CssClass="lbl"></asp:Label>
                        </td>
                        <td>
                            <%-- <bus:busquedaAvanzada ID="bus_contacto" runat="server" a_str_tabla="ter_contacto"
            a_bln_obligatorio="false" a_str_grupoValidacion="form" />--%>
                            <asp:DropDownList ID="drp_contactos" runat="server" CssClass="drp" AutoPostBack="false"></asp:DropDownList>
                        </td>
                        <td style="white-space: nowrap">
                            <asp:HyperLink ID="hyp_infoContacto" runat="server" CssClass="lnk" Font-Bold="True" Font-Underline="True"></asp:HyperLink>
                        </td>
                        <td rowspan="1">
                            <div style="position: absolute; z-index: auto">
                                <table id="tbl_bocadilloElemento" border="0" cellpadding="0" cellspacing="0" style="display: none; width: 183px; z-index: 107">
                                    <tr>
                                        <td align="left" height="11" valign="top" width="6%">
                                            <img src="../../images/boc/bocadillo_r1_c1.png" height="16" width="27"></td>
                                        <td background="../../images/boc/bocadillo_r1_c3.png" height="11" width="90%"></td>
                                        <td align="right" height="11" valign="top" width="4%">
                                            <img src="../../images/boc/bocadillo_r1_c4.png" height="16" width="16"></td>
                                    </tr>
                                    <tr>
                                        <td align="left" background="../../images/boc/bocadillo_r2_c1.png" valign="top" width="6%">&nbsp;</td>
                                        <td id="td_BocadilloElementotexto" style="white-space: nowrap" class="unnamed1" bgcolor="#ffffff" width="90%"></td>
                                        <td align="right" background="../../images/boc/bocadillo_r2_c4.png" valign="top"
                                            width="4%">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top" width="6%">
                                            <img src="../../images/boc/bocadillo_r4_c1.png" height="16" width="27"></td>
                                        <td background="../../images/boc/bocadillo_r4_c3.png" width="90%"></td>
                                        <td align="right" valign="top" width="4%">
                                            <img src="../../images/boc/bocadillo_r4_c4.png" height="16" width="16"></td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr id="tr_comentario" runat="server">
                        <td>
                            <asp:Label ID="lbl_texto" runat="server" CssClass="lbl"></asp:Label>

                        </td>
                        <td>
                            <asp:TextBox ID="txt_comentario" runat="server" TextMode="MultiLine" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            <asp:HyperLink ID="hyp_historico" runat="server" Text="-" ImageUrl="../../images/iconos/doc_verHistorial.jpg"></asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="lbl_aplazado" runat="server" CssClass="lbl" Visible="false"></asp:Label></td>
                        <td>
                            <asp:Label ID="lbl_vecesAplazado" runat="server" CssClass="lbl_mensaje"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="2">
                            <asp:RadioButtonList ID='rbl_recordar' runat='server' RepeatDirection='Horizontal' CssClass="lbl"
                                RepeatLayout='Flow'>
                                <asp:ListItem Value='0'></asp:ListItem>
                                <asp:ListItem Value='1'></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID='rfv_mostrarBotones' runat='server' ControlToValidate='rbl_recordar' Enabled="true"
                                ValidationGroup="frm_recordatorio" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_lblFormulario"></td>
                        <td colspan="2">
                            <asp:CheckBox ID="chb_relevante" runat="server" CssClass="lbl" />
                        </td>
                        <td></td>
                    </tr>
                    <tr id="tr_fecha" runat="server">
                        <td align="left">
                            <asp:Label ID="lbl_fecha_recordatorio" runat="server" CssClass="lbl"
                                Visible="false"></asp:Label>
                        </td>
                        <td colspan="2" align="left">
                            <fec:fechaAvanzada ID="fec_fechaRecordar" runat="server" visible="false" a_str_grupoValidacion="frm_recordatorio" />
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="lbl_fechasugerida" runat="server" CssClass="lbl"></asp:Label>
                        </td>
                        <td colspan="2" align="left">
                            <fec:fechaAvanzada ID="fec_sugerida" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="1"></td>
                        <td colspan="2">
                            <bti:BotonImagen ID="btnAceptar" runat="server"
                                ImageUrl="../../images/botones/aceptar.jpg" CausesValidation="true" ValidationGroup="frm_recordatorio" />
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>
    <td>
        <asp:DropDownList ID="drp_datos" runat="server" CssClass="invisible" AutoPostBack="false"></asp:DropDownList>
    </td>
</table>

