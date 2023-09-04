<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_buscarXatributos.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_buscarXatributos" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="uc3" %>
<table>
    <tr>
        <td>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lbl_documento" runat="server" Text='<%$ Resources: res_metadata,doc_documento_documento %>'></asp:Label>
                    </td>
                    <td class='td_controlesFormulario'>
                        <table cellpadding='0' cellspacing='0'>
                            <tr>
                                <td>
                                    <asp:TextBox ID='txt_prefijo' runat='server' MaxLength='10' CssClass='txt_formulario'
                                        Font-Bold="true" Width="50px"></asp:TextBox><asp:Label ID="lbl_separador" runat="server"
                                            Text="-"></asp:Label>
                                </td>
                                <td align='left'>
                                    <asp:TextBox ID='txt_documento_numero_bus' runat='server' CssClass='txt_entero'></asp:TextBox><act:FilteredTextBoxExtender
                                        ID='ftb_documento_numero' runat='server' TargetControlID='txt_documento_numero_bus'
                                        FilterType='Numbers' />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class='td_controlesFormulario'>
                        <asp:Label ID="lbl_fechaC" runat="server" Text="LabelFechaCi"></asp:Label>
                    </td>
                    <td style="white-space: nowrap;">
                        <uc2:fechaAvanzada ID="fec_fechaCierre" runat="server" a_str_prefijo="ff" />
                        <asp:Label ID="lbl_fechaC_a" runat="server" Text='<%$ Resources: res_controles,a %>'></asp:Label>
                        <uc2:fechaAvanzada ID="fec_fechaCierre_fin" runat="server" a_str_prefijo="ff" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_fecha" runat="server" Text="LabelFecha"></asp:Label>
                    </td>
                    <td class='td_controlesFormulario'>
                        <uc2:fechaAvanzada ID="fec_fecha" runat="server" a_str_prefijo="ff" />
                        <asp:Label ID="lbl_fecha_a" runat="server" Text='<%$ Resources: res_controles,a %>'></asp:Label>
                        <uc2:fechaAvanzada ID="fec_fecha_fin" runat="server" a_str_prefijo="ff" />

                    </td>
                    <td></td>
                    <td class='td_controlesFormulario'>
                        <asp:Label ID="lbl_estado" runat="server" Text='<%$ Resources: res_metadata,doc_estadotipodocumento_estadotipodocumento %>'></asp:Label>
                    </td>
                    <td>
                        <uc3:busquedaAvanzadaMultiple ID="bus_estado" runat="server" a_str_tabla="doc_estadoTipoDocumento" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_tipoServicio" runat="server" Text='<%$ Resources: res_metadata,gen_tiposervicio_tiposervicio %>'></asp:Label>
                    </td>
                    <td>
                        <uc3:busquedaAvanzadaMultiple ID="bus_tipoServicio" runat="server" a_str_tabla="gen_tipoServicio" />
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>
                        <asp:Label ID="lbl_usuario" runat="server" Text='<%$ Resources: res_metadata,seg_usuario_usuario %>'></asp:Label>
                    </td>
                    <td>
                        <uc3:busquedaAvanzadaMultiple ID="bus_usuario" runat="server" a_str_tabla="seg_usuario"
                            a_str_filtros="seg_cargo_esTecnico=1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_tempario" runat="server" Text='<%$ Resources: res_metadata,cat_catalogo_tempario_catalogo_tempario %>'></asp:Label>
                    </td>
                    <td>
                        <uc3:busquedaAvanzadaMultiple ID="bus_tempario" runat="server" a_str_tabla="cat_catalogo.tempario" />
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>
                        <asp:Label ID="lbl_asunto" runat="server" Text='<%$ Resources: res_metadata,doc_documento_ot_motivoservicio %>'></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_asunto" runat="server" CssClass='txt_formulario'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_catalogoEquipo" runat="server" Text='<%$ Resources: res_metadata,cat_catalogo_equipo_catalogo_equipo %>'></asp:Label>
                    </td>
                    <td>
                        <uc3:busquedaAvanzadaMultiple ID="bus_catalogoEquipo" runat="server" a_str_tabla="cat_catalogo.equipo" />
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>
                        <asp:Label ID="lblFamilia" runat="server" Text="<%$Resources: res_metadata,gen_familia_familia %>"></asp:Label>
                    </td>
                    <td>
                        <uc1:busquedaAvanzada ID="busFamilia" runat="server" a_str_tabla="gen_familia" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_conReporte" runat="server" Text='<%$ Resources: res_metadata,ort_reportetecnico_reportetecnico %>'></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID='rbl_conReporte' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
                            RepeatLayout='Flow'>
                            <asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
                            <asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>
                        <asp:Label ID="lblMarca" runat="server" Text="<%$Resources: res_metadata,cat_marca_marca %>"></asp:Label>
                    </td>
                    <td>
                        <uc1:busquedaAvanzada ID="busMarca" runat="server" a_str_tabla="cat_marca" />
                    </td>
                </tr>
                <tr id="tr_busqOTreporte">
                    <td>
                        <asp:Label ID="lblNumreporte" runat="server" Text="<%$Resources: res_metadata,ort_reporteTecnico_numero %>"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_numReporte" runat="server" CssClass='txt_formulario'></asp:TextBox>
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>
                        <asp:Label ID="lblFalla" runat="server" Text="<%$Resources: res_metadata,equ_falla_falla %>"></asp:Label>
                    </td>
                    <td>
                        <uc1:busquedaAvanzada ID="busFalla" runat="server" a_str_tabla="equ_falla" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_cliente" runat="server"></asp:Label>
                    </td>
                    <td>
                        <uc3:busquedaAvanzadaMultiple ID="bus_tercero" runat="server" a_str_tabla="ter_tercero" />
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>
                        <asp:Label ID="lbl_sucursal" runat="server"></asp:Label>
                    </td>
                    <td>
                        <uc3:busquedaAvanzadaMultiple ID="bus_sucursal" runat="server" a_str_tabla="ter_sucursal" />
                    </td>
                </tr>


                <tr>
                    <td>
                        <asp:Label ID="lbl_equipo" runat="server"></asp:Label>
                    </td>
                    <td>
                        <uc3:busquedaAvanzadaMultiple ID="bus_equipo" runat="server" a_str_tabla="equ_equipo" />
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>
                        <asp:Label ID="lbl_departamento" runat="server"></asp:Label>
                    </td>
                    <td>
                        <uc3:busquedaAvanzadaMultiple ID="bus_departamento" runat="server" a_str_tabla="ort_departamentoSolicitud" />
                    </td>
                </tr>


                <tr>
                    <td>
                        <asp:Label ID="lbl_subtipo" runat="server"></asp:Label>
                    </td>
                    <td>
                        <uc3:busquedaAvanzadaMultiple ID="bus_subtipo" runat="server" a_str_tabla="doc_subtipoDocumento" />
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>
                        <asp:Label ID="lbl_coordinador" runat="server"></asp:Label>
                    </td>
                    <td>
                        <uc3:busquedaAvanzadaMultiple ID="bus_coordinador" runat="server" a_str_tabla="seg_usuario"
                            a_str_filtros="seg_cargo_esCoordinador=1" />
                    </td>
                </tr>


                <tr>
                    <td>
                        <asp:Label ID="lbl_zona" runat="server"></asp:Label>
                    </td>
                    <td>
                        <uc3:busquedaAvanzadaMultiple ID="bus_zona" runat="server" a_str_tabla="gen_zona" />
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>
                        <asp:Label ID="lbl_taller" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID='rdl_taller' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
                            RepeatLayout='Flow'>
                            <asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
                            <asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_catalogo" runat="server"></asp:Label>
                    </td>
                    <td>
                        <uc3:busquedaAvanzadaMultiple ID="bus_catalogo" runat="server" a_str_tabla="cat_catalogo" a_str_campo="catalogo,catalogo_codigo,id_subTipoCatalogo" />
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>
                        <asp:Label ID="lbl_proveedor" runat="server"></asp:Label>
                    </td>
                    <td>
                        <uc3:busquedaAvanzadaMultiple ID="bus_proveedor" runat="server" a_str_tabla="ter_tercero" a_str_filtros="esProveedor=1" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<table>
    <tr>
        <td>
            <asp:Label ID="lblAtributos" runat="server" CssClass="lbl" Text="<%$Resources: res_metadata,cat_atributo_atributo %>"></asp:Label>:
        </td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:DataList ID="dtl_atributos" runat="server" RepeatColumns="2">
                <ItemTemplate>
                    <td>
                        <%#Eval("atributo")%>
                    </td>
                    <td>
                        <asp:Label ID="lbl" runat="server" Text='<%# eval("id") %>' Visible="false"></asp:Label><asp:Label
                            ID="lbl_1" runat="server" Text='<%# eval("id_tipoAtributo") %>' Visible="false"></asp:Label><table
                                cellpadding="0" cellspacing="0" style="width: 100%;">
                                <tr>
                                    <td class='<%# IIF(eval("id_tipoAtributo")=samm_logica.enu_tipoAtributo.numero, "","invisible") %>'>
                                        <asp:Label ID="lblDesde" runat="server" Text="<%$Resources: res_controles,desde %>"></asp:Label><asp:TextBox
                                            ID="txt_valor_desde" runat="server" CssClass='txt_numero' Text=''></asp:TextBox><asp:Label
                                                ID="lblHasta" runat="server" Text="<%$Resources: res_controles,a %>"></asp:Label><asp:TextBox
                                                    ID="txt_valor_hasta" runat="server" CssClass='txt_numero' Text=''></asp:TextBox>
                                    </td>
                                    <td class='<%# IIF(eval("id_tipoAtributo")=samm_logica.enu_tipoAtributo.texto, "","invisible") %>'>
                                        <asp:TextBox ID="txt_texto" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>
                                    <td class='<%# IIF(eval("id_tipoAtributo")=samm_logica.enu_tipoAtributo.fecha, "","invisible") %>'>
                                        <asp:Label ID="lbl_desde" runat="server" Text="<%$Resources: res_controles,desde %>"></asp:Label><uc2:fechaAvanzada
                                            ID="fec_desde" runat="server" a_str_prefijo="ff" />
                                        <asp:Label ID="lbl_hasta" runat="server" Text="<%$Resources: res_controles,a %>"></asp:Label>&nbsp;<uc2:fechaAvanzada
                                            ID="fec_hasta" runat="server" a_str_prefijo="ff" />
                                    </td>
                                    <td class='<%# IIF(eval("id_tipoAtributo")=samm_logica.enu_tipoAtributo.lista, "","invisible") %>'>
                                        <asp:DropDownList ID="drp" runat="server" CssClass="drp">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                    </td>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
    <tr>
        <td>&nbsp;
        </td>
        <td>
            <cc1:BotonImagen ID="btiAceptar" runat="server" ImageUrl="~/images/botones/aceptar.png"
                ValidationGroup="pop_buscar"></cc1:BotonImagen>
        </td>
    </tr>
</table>
