<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_cambiarEstado.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_cambiarEstado" %>
<%@ Register Src="doc_bodegasItem.ascx" TagName="doc_bodegasItem" TagPrefix="uc2" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<asp:Panel ID="pnl_comentario" runat="server" DefaultButton="bti_aceptar">
    <table>
        <tr>
            <td>
                <asp:Label ID="lbl_estado" runat="server" CssClass="lbl"></asp:Label>
            </td>
            <td valign="middle">
                <table>
                    <tr>
                        <td>
                            <asp:DropDownList ID="drp_estados" runat="server" CssClass="drp" AutoPostBack="false">
                            </asp:DropDownList>
                            <asp:HiddenField ID="hdd_correosDefecto" runat="server" />
                            <asp:HiddenField ID="hdd_reportes" runat="server" />
                            <asp:DropDownList ID="drp_total" runat="server" CssClass="invisible" AutoPostBack="false">
                            </asp:DropDownList>
                            <asp:DropDownList ID="drp_colores" runat="server" CssClass="invisible" AutoPostBack="false">
                            </asp:DropDownList>
                            <asp:DropDownList ID="drp_orden" runat="server" CssClass="invisible" AutoPostBack="false">
                            </asp:DropDownList>
                            <asp:DropDownList ID="drp_descripcion" runat="server" CssClass="invisible" AutoPostBack="false">
                            </asp:DropDownList>
                            <asp:DropDownList ID="drp_inventario" runat="server" CssClass="invisible" AutoPostBack="false">
                            </asp:DropDownList>
                            <asp:HiddenField ID="hdd_motivoSeleccionado" runat="server" />
                        </td>
                        <td>
                            <asp:Panel ID="pnl_color" runat="server" Width="10px" Height="10px">
                            </asp:Panel>
                            <asp:RequiredFieldValidator ID="rfv_estados" runat="server" ErrorMessage="*" ValidationGroup="motivo"
                                ControlToValidate="drp_estados"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" align='center'>
                <asp:Label ID="lbl_descripcion" runat="server" class="lbl_estadoFormulario" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" align='center'>
                <asp:Label ID="lbl_avisoOrden" runat="server" CssClass='lbl_estadoFormulario' Text='<%$Resources:res_etiquetas_doc,estadoAnterior %>'></asp:Label>
            </td>
        </tr>
        <tr id="tr_motivo" runat="server">
            <td>
                <asp:Label ID="lbl_motivo" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,doc_motivoestado_motivoestado %>'></asp:Label>
            </td>
            <td>
                <table>
                    <tr>
                        <td>
                            <select id="drp_motivos" class="drp" runat="server">
                            </select>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_motivoObligatorio" runat="server" CssClass="lbl_mensaje"
                                ForeColor="" SetFocusOnError="True" ValidationGroup="motivo" ControlToValidate="drp_motivos">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr id="tr_trm" runat="server" style="display: none">
            <td>
                <asp:Label ID="lbl_trm" runat="server" CssClass="lbl" Text="<%$ resources:res_metadata,doc_documento_trm %>"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_trm" runat="server" CssClass="txt_numero"></asp:TextBox>
            </td>
            <td>
                <act:FilteredTextBoxExtender ID='ftb_trm' runat='server' TargetControlID='txt_trm'
                    FilterType='Numbers,Custom' />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_notas" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,doc_documento_estadotipodocumento_notas%>'></asp:Label>
            </td>
            <td>
                <table>
                    <tr>
                        <td>
                            <asp:TextBox ID="txt_notas" runat="server" CssClass="txt_multilinea" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td>    
                            <asp:RequiredFieldValidator ID="rfv_notas" runat="server" CssClass="lbl_mensaje"
                                ForeColor="" SetFocusOnError="True" ValidationGroup="motivo" ControlToValidate="txt_notas">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:CheckBox ID="chk_comentario" runat="server" CssClass="lbl" Checked="true" AutoPostBack="true" />
                <span id="span_adjuntar" runat="server">
                    <asp:CheckBox ID="chk_adjuntar" runat="server" CssClass="lbl" Checked="false" />

                </span>



            </td>

        </tr>
        <tr id="tr_cancelaPadre" runat="server">
            <td></td>
            <td>
                <asp:CheckBox ID="chb_cancelaPadre" runat="server" CssClass="lbl" Checked="false" />
            </td>
        </tr>
        <tr >
            <td></td>
            <td>
                <asp:CheckBox ID="chb_recordar" runat="server" CssClass="lbl" Checked="false" Visible="false"/>
            </td>
        </tr>
        <tr id="tr_visita" runat="server">
            <td></td>
            <td>
                <asp:CheckBox ID="chk_visita" runat="server" CssClass="lbl" Checked="false" />
            </td>
        </tr>
        <tr id="tr_alquiler" runat="server">
            <td></td>
            <td>
                <asp:CheckBox ID="chk_alquiler" runat="server" CssClass="lbl" Checked="false" />
            </td>
        </tr>
        <tr id="tr_remisionALQ" runat="server">
            <td></td>
            <td>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_fechamovimiento" runat="server" CssClass="lbl"></asp:Label>
                        </td>
                        <td>
                            <fec:fechaAvanzada ID="fec_remision" runat="server" a_str_prefijo="fh" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="lbl_maxNotas" runat="server" CssClass="lbl_mensaje"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lbl_correos" runat="server" CssClass="lbl"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:RadioButtonList ID="rbl_tipoTabla" runat="server" CssClass='rdb_lista' RepeatDirection='Horizontal'
                    RepeatLayout='Flow'>
                    <asp:ListItem Value='0' Text='<%$ Resources:res_metadata,seg_usuario_nombre %>' Selected="true"></asp:ListItem>
                    <asp:ListItem Value='1' Text='<%$ Resources:res_metadata,seg_usuario_email %>'></asp:ListItem>
                    <asp:ListItem Value='2' Text='<%$ Resources:res_metadata,_columnas_tipo %>'></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div id="div_envios" runat="server">
                    <table>
                        <tr>
                            <td>
                                <div id="div_correos" runat="server" style="overflow: auto; height: 100px; border: 1px solid #7F9DB9; white-space: nowrap">
                                    <asp:DataList ID="dtl_correos" runat="server" ShowHeader="False">
                                        <ItemTemplate>
                                            <table id="tbl_correos" runat="server" cellpadding="0" cellspacing="0" style="width: 100%;">
                                                <tr class="correoSeleccionado">
                                                    <td>
                                                        <asp:Label ID="lbl_tipodestinatario" runat="server" name="tipodest" Text='<%# eval("tipodestinatario") %>'></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lbl_destinatario" runat="server" name="dest" Text='<%# eval("destinatario") %>'></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lbl_correo" runat="server" name="corr" Text='<%# eval("correo") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </div>
                            </td>
                            <td></td>
                            <td>
                                <asp:TextBox ID="txt_correosAlternativos" runat="server" CssClass="txt_multilinea"
                                    Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RegularExpressionValidator ID="rev_correosAlternativos" runat="server" ControlToValidate="txt_correosAlternativos"
                                    CssClass="lbl_mensaje" ErrorMessage="*" ForeColor="" ValidationGroup="motivo">*</asp:RegularExpressionValidator>
                            </td>
                            <td>
                                <table cellspacing="0" border="0">
                                    <tr>
                                        <td style="white-space: nowrap">
                                            <img alt="" id="img_impresion" runat="server" src="../../images/treelineimages/dashplus.gif" />
                                            <asp:CheckBox ID="chb_impresion" runat="server" CssClass="cbl_lista" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="white-space: nowrap">
                                            <asp:CheckBoxList ID="cbl_impresion" runat="server" CssClass="cbl_lista">
                                            </asp:CheckBoxList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="white-space: nowrap">
                                            <img alt="" id="img_adjuntos" runat="server" src="../../images/treelineimages/dashplus.gif" /><asp:CheckBox
                                                ID="chb_adjuntos" runat="server" CssClass="cbl_lista" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="white-space: nowrap">
                                            <asp:CheckBoxList ID="cbl_adjuntos" runat="server" CssClass="cbl_lista">
                                            </asp:CheckBoxList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="white-space: nowrap">
                                            <img alt="" id="img_adjuntosEquipo" runat="server" src="../../images/treelineimages/dashplus.gif" /><asp:CheckBox
                                                ID="chb_adjuntosEquipo" runat="server" CssClass="cbl_lista" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="white-space: nowrap">
                                            <asp:CheckBoxList ID="cbl_adjuntosEquipo" runat="server" CssClass="cbl_lista">
                                            </asp:CheckBoxList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="white-space: nowrap">
                                            <img alt="" id="img_adjuntosModelo" runat="server" src="../../images/treelineimages/dashplus.gif" /><asp:CheckBox
                                                ID="chb_adjuntosModelo" runat="server" CssClass="cbl_lista" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="white-space: nowrap">
                                            <asp:CheckBoxList ID="cbl_adjuntosModelo" runat="server" CssClass="cbl_lista">
                                            </asp:CheckBoxList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="white-space: nowrap">
                                            <img alt="" id="img_adjuntosFamilia" runat="server" src="../../images/treelineimages/dashplus.gif" /><asp:CheckBox
                                                ID="chb_adjuntosFamilia" runat="server" CssClass="cbl_lista" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="white-space: nowrap">
                                            <asp:CheckBoxList ID="cbl_adjuntosFamilia" runat="server" CssClass="cbl_lista">
                                            </asp:CheckBoxList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="white-space: nowrap">
                                            <img alt="" id="img_ItemsCotizacion" runat="server" src="../../images/treelineimages/dashplus.gif" /><asp:CheckBox
                                                ID="chb_ItemsCotizacion" runat="server" CssClass="cbl_lista" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="white-space: nowrap">
                                            <asp:CheckBoxList ID="cbl_ItemsCotizacion" runat="server" CssClass="cbl_lista">
                                            </asp:CheckBoxList>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td style="white-space: nowrap">
                                            <asp:Label ID="lbl_responderA" CssClass="lbl" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_respondera" CssClass="txt" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <cc1:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="true" ImageUrl="../../images/botones/aceptar.jpg"
                    ValidationGroup="motivo" />
                <br />
                <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
                <br />
                <asp:Label ID="lbl_error" runat="server" CssClass="lbl_mensaje"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:ValidationSummary ID="vlsFormulario" runat="server" CssClass="lbl_mensaje" ForeColor=""
                    ValidationGroup="motivo" />
            </td>
        </tr>
    </table>
</asp:Panel>
<table id="tbl_actualizarDocumentos" runat="server" visible="false">
    <tr>
        <td>
            <asp:Label ID="lbl_listadoDocumentos" runat="server" CssClass="lbl"></asp:Label><asp:Label
                ID="lbl_docPrincipal" runat="server" Visible="false"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <cc1:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                CausesValidation="false" />
        </td>
    </tr>
</table>
