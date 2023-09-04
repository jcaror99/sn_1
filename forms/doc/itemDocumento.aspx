<%@ Page Language="VB" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master"
    AutoEventWireup="false" CodeBehind="itemDocumento.aspx.vb" Inherits="website.samm_web.forms_doc_itemDocumento" %>
<%@ Register Src="~/controles/general/infItems.ascx" TagName="informacion" TagPrefix="uc3" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="pop" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName='tabs' TagPrefix='tab' %>
<%@ Register Src="~/controles/doc/precioVentaItemDocumento.ascx" TagName="precioVentaItemDocumento" TagPrefix="uc4" %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" runat="Server">
    <asp:Label ID="lbTitulo" runat="server" Text="<%$ Resources:res_titulopagina,forms_doc_itemDocumento %>"
        CssClass="lbl_titulo"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" runat="Server">
    <tab:tabs ID='Tabs' runat="server" />

    <uc3:informacion ID="inf_documento" runat="server" a_bln_orientacionVertical="false" />

    <act:CollapsiblePanelExtender ID="clp_filtro" runat="server" TargetControlID="pnl_filtros"
CollapsedSize="0" Collapsed="True" ExpandControlID="imb_ext" CollapseControlID="imb_ext" TextLabelID="lbl_indicador"
AutoCollapse="False" AutoExpand="False" ScrollContents="false" ExpandedImage="../../images/menu/lnk_menos.png"
CollapsedImage="../../images/menu/lnk_mas.png" ImageControlID="imb_ext" ExpandDirection="Vertical" ExpandedText="-" CollapsedText="+">
</act:CollapsiblePanelExtender>

    <asp:Label ID="lbl_indicador" runat="server" CssClass="lbl"></asp:Label>
    <img alt="" id="imb_ext" src="../../images/menu/lnk_mas.png" runat="server"/>

    <asp:Panel ID="pnl_filtros" runat="server" CssClass="pnl" >
                    <table class="tbl_marcoFormulario" cellpadding="0" cellspacing="0">
                        <tr>
                            <td class="td_lblFormulario" colspan="2">
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class='td_lblFormulario'>
                                <asp:Label ID="lbl_tipoCatalogo" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,cat_tipocatalogo_tipocatalogo %>'></asp:Label>
                            </td>
                            <td class='td_controlesFormulario'>
                                <asp:DropDownList ID="drp_tipoCatalogo" runat="server" CssClass="drp" AutoPostBack="true">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td id="Td1" class='td_lblFormulario' runat="server">
                                <asp:Label ID="lbl_familia" runat="server" CssClass="lbl"></asp:Label>
                            </td>
                            <td class='td_controlesFormulario'>
                                <bus:busquedaAvanzada ID="bus_familia" runat="server" a_bol_postBack="true" a_str_tabla="gen_familia" />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:CheckBox ID="chk_filtraTarifas" AutoPostBack="true" runat="server" CssClass="lbl" />
                            </td>
                        </tr>
                        <tr id="tr_catalogo" runat="server">
                            <td class='td_lblFormulario'>
                                <asp:Label ID="lbl_catalogo" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,cat_catalogo_catalogo %>'></asp:Label>
                            </td>
                            <td class='td_controlesFormulario'>
                                <uc2:busquedaAvanzadaMultiple ID="bus_catalogo" runat="server" a_bol_postBack="true" a_str_tabla="cat_catalogo"
                                    Onseleccionar="bus_catalogo_seleccionar" a_str_campo="codigoInventario,catalogo,catalogo_codigo,descripcion"
                                    a_str_filtros="id not in(select id from [cat_catalogo.repuesto] where vigente=0)" />
                                <uc2:busquedaAvanzadaMultiple ID="bus_catalogo_actividad" runat="server" a_bol_postBack="true"
                                    a_str_tabla="cat_catalogo.actividad" Onseleccionar="bus_catalogo_seleccionar"
                                    Visible="false" a_str_campo="cat_catalogo_actividad_codigoInventario,catalogo.actividad,cat_catalogo_actividad_catalogo_codigo,cat_catalogo_actividad_descripcion" />
                                <uc2:busquedaAvanzadaMultiple ID="bus_catalogo_equipo" runat="server" a_bol_postBack="true"
                                    a_str_tabla="cat_catalogo.equipo" Onseleccionar="bus_catalogo_seleccionar" Visible="false"
                                    a_str_campo="cat_catalogo_equipo_codigoInventario,catalogo.equipo,cat_catalogo_equipo_catalogo_codigo,cat_catalogo_equipo_descripcion" />
                                <uc2:busquedaAvanzadaMultiple ID="bus_catalogo_otro" runat="server" a_bol_postBack="true"
                                    a_str_tabla="cat_catalogo.otro" Onseleccionar="bus_catalogo_seleccionar" Visible="false"
                                    a_str_campo="cat_catalogo_otro_codigoInventario,catalogo.otro,cat_catalogo_otro_catalogo_codigo,cat_catalogo_otro_descripcion" />
                                <uc2:busquedaAvanzadaMultiple ID="bus_catalogo_producto" runat="server" a_bol_postBack="true"
                                    a_str_tabla="cat_catalogo.producto" Onseleccionar="bus_catalogo_seleccionar"
                                    Visible="false" a_str_campo="cat_catalogo_producto_codigoInventario,catalogo.producto,cat_catalogo_producto_catalogo_codigo,cat_catalogo_producto_descripcion" />
                                <uc2:busquedaAvanzadaMultiple ID="bus_catalogo_repuesto" runat="server" a_bol_postBack="true"
                                    a_str_tabla="cat_catalogo.repuesto" Onseleccionar="bus_catalogo_seleccionar"
                                    Visible="false" a_str_campo="cat_catalogo_repuesto_codigoInventario,catalogo.repuesto,cat_catalogo_repuesto_catalogo_codigo,cat_catalogo_repuesto_descripcion"
                                    a_str_filtros="vigente=1" />
                                <%--<bus:busquedaAvanzada ID="bus_catalogo_tempario" runat="server" a_bol_postBack="true" a_str_tabla="cat_catalogo.tempario" Onseleccionar="bus_catalogo_seleccionar" Visible="false"   a_str_campo="catalogo.tempario,cat_catalogo_tempario_codigoInventario,cat_catalogo_tempario_catalogo_codigo" />--%>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Label ID="lbl_agregaCatalogo" runat="server" CssClass="lbl_mensaje"></asp:Label>
                            </td>
                        </tr>
                        <tr runat="server" id="tr_modeloRecu">
                            <td align="right">
                                <asp:Label ID="lbl_modelo" runat="server" CssClass="lbl"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="drp_modelos" runat="server" CssClass="drp" AutoPostBack="true">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr id="tr_tempario" runat="server">
                            <td class='td_lblFormulario'>
                                <asp:Label ID="lbl_tempario" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,cat_catalogo_tempario_catalogo_tempario %>'></asp:Label>
                            </td>
                            <td class='td_controlesFormulario'>
                                <br />
                                <bus:busquedaAvanzada ID="bus_tempario" runat="server" a_str_tabla="cat_catalogo.tempario"
                                    a_str_campo="catalogo.tempario,cat_catalogo_tempario_codigoInventario,cat_catalogo_tempario_catalogo_codigo"
                                    a_bol_postBack="true" />
                            </td>
                        </tr>

                        <tr id='tr_documentos' runat='server'>
                            <td class='td_lblFormulario'>
                                <asp:Label ID="lbl_documento" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,doc_documento_documento %>'></asp:Label>
                            </td>
                            <td class='td_controlesFormulario'>
                                <uc2:busquedaAvanzadaMultiple ID="bus_documento" runat="server" a_str_tabla="doc_documento"
                                    a_str_campo="documento,documento_numero,id_subtipodocumento" />
                            </td>
                        </tr>
                        <tr runat="server" id="tr_doc_padre">
                            <td class='td_lblFormulario'>
                                <asp:Label ID="lbl_documento_padre" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,doc_documento_doc_documento_padre %>'></asp:Label>
                            </td>
                            <td class='td_controlesFormulario'>
                                <bti:BotonImagen ID="bti_documentoPadre" runat="server" ImageUrl="../../images/botones/buscarba.gif"
                                    CausesValidation="false" />
                            </td>
                        </tr>
                        <tr>
                            <td class='td_lblFormulario'>
                                <asp:Label ID="lbl_contrato" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,cnt_contrato_contrato %>'></asp:Label>
                            </td>
                            <td class='td_controlesFormulario'>
                                <bti:BotonImagen ID="bti_mostrarContrato" runat="server" ImageUrl="../../images/botones/agregar.gif"
                                    CausesValidation="false" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan='2' align='center'>
                                <asp:Label ID="lbl_monedaDocumento" runat="server" CssClass="lbl_etiquetaInformacion"></asp:Label>
                            </td>
                        </tr><tr>
            <td>
                <asp:LinkButton runat="server" ID="lnk_importar" CssClass="lnk"></asp:LinkButton>
            </td>
        </tr>
                    </table>
                </asp:Panel>
            
    <table>
        <tr><td>
    </td>
    <td>
    </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_agregavigencia" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <hr />
            <table class="tbl_marcoFormulario" cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        <bti:BotonImagen ID="bti_agregarItem" runat="server" CausesValidation="false" ImageUrl="../../images/botones/agregar.gif" />
                        <bti:BotonImagen ID="bti_editarItem" runat="server" CausesValidation="false" ImageUrl="../../images/botones/aplicarVariosItems.gif" />
                        <bti:BotonImagen ID="bti_imprimir" runat="server" CausesValidation="False" ImageUrl="../../images/botones/print.gif" />
                        <bti:BotonImagen ID="bti_eliminar" runat="server" CausesValidation="False" ImageUrl="~/images/botones/quitar.gif" />
                        <bti:BotonImagen ID="bti_fechasGarantia" runat="server" CausesValidation="False"
                            ImageUrl="~/images/botones/doc_fechaGarantia.png" />
                        <bti:BotonImagen ID="bti_reorden" runat="server" CausesValidation="false" ImageUrl="~/images/botones/doc_reorden.png" />
                        <bti:BotonImagen ID="bti_recostear" runat="server" CausesValidation="False" ImageUrl="../../images/botones/recostear.gif" />
                        <bti:BotonImagen ID="bti_doc_apptmp" runat="server" CausesValidation="False" ImageUrl="../../images/botones/doc_apptmp.gif" />
                        <bti:BotonImagen ID="bti_gas_relacion" runat="server" CausesValidation="False" ImageUrl="../../images/botones/doc_relacionGasto.gif" />

                        <bti:BotonImagen ID="bti_archivos" runat="server" CausesValidation="False" ImageUrl="../../images/botones/archivos.gif" />
                        <bti:BotonImagen ID="bti_disponibles" runat="server" CausesValidation="False" ImageUrl="../../images/botones/equ_desmontar.gif" />
                        <bti:BotonImagen ID="bti_calcular" runat="server" CausesValidation="False" ImageUrl="../../images/botones/bontonCalcular.png" />

                        <asp:CheckBox ID="chb_editarTempario" runat="server" AutoPostBack="true" CssClass="lbl" />
                        <asp:CheckBox ID="chb_mostrarUbicacionesExistencia" runat="server" AutoPostBack="true" CssClass="lbl" />
                        <asp:CheckBox ID="chb_mostrarUltimosRepuestos" runat="server" AutoPostBack="true" CssClass="lbl" Visible="false" />

                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="grd_itemDocumento" runat="server" ShowFooter='true' AutoGenerateColumns="False">
                <FooterStyle CssClass="gri_pie" />
                <RowStyle CssClass="gri_item" />
                <Columns>
                    <asp:CommandField SelectImageUrl="~/images/botones/seleccionarGrilla.gif" ShowSelectButton="True"
                        ButtonType="Image"></asp:CommandField>
                     <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ID="bti_genealogia" runat="server" ImageUrl="~/images/iconos/genealogia.png" CausesValidation="false" CommandName="genealogia" CommandArgument='<%#Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_esurgente %>">
                        <ItemTemplate>
                            <asp:CheckBox ID="chb_urgente" runat="server" Checked='<%# eval("urgente") %>' Visible='<%# IIF(eval("id_catalogo")=0,false,true) %>'></asp:CheckBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="" HeaderStyle-HorizontalAlign="Left">
                        <HeaderTemplate>
                            <asp:CheckBox ID="chb_habilitar" runat="server" />
                            <asp:Label ID="lbl" runat="server" Text='<%$ Resources:res_campoGrilla,doc_itemdocumento_itemdocumento %>' CssClass="gri_titulo"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="chb_habilitar" runat="server" />
                            <asp:Label ID="lbl_item" runat="server" Text='<%# eval("item_espacio") %>' CssClass="lbl_grilla"></asp:Label>
                            <asp:TextBox ID="txt_item" runat="server" Text='<%# eval("item") %>' CssClass="txt_itemGrilla"
                                ToolTip='<%# eval("catalogo") %>'></asp:TextBox><span style="text-align: right; width: 100%">
                                    <asp:RequiredFieldValidator ID="rfv_item" runat="server" CssClass="lbl_mensaje" ValidationGroup="item"
                                        ControlToValidate="txt_item" ForeColor="">*</asp:RequiredFieldValidator>
                                    <asp:ImageButton ID="bti_duplicar" runat="server" ImageUrl="~/images/iconos/duplicar.png" CausesValidation="false" CommandName="duplicar" CommandArgument='<%#Eval("id") %>' />
   </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible" FooterStyle-CssClass='invisible'>
                        <ItemTemplate>
                            <asp:Label ID="lbl_id" runat="server" Text='<%#Eval("id") %>' CssClass='invisible'></asp:Label>
                            <asp:Label ID="lbl_id_itemDoc" runat="server" Text='<%#Eval("id_itemDoc") %>' Visible="false"></asp:Label>
                            <asp:Label ID="lbl_id_itemDoc_sup" runat="server" Text='<%#Eval("id_itemDoc_sup") %>'></asp:Label>
                            <asp:Label ID="lbl_itemDoc_padre_cantidad" runat="server" Text='<%#Eval("itemDoc_padre_cantidad") %>'></asp:Label>
                            <asp:Label ID="lbl_costear" runat="server" Text='<%#Eval("costear") %>'></asp:Label>
                            <asp:Label ID="lbl_id_catalogo" runat="server" Text='<%#Eval("id_catalogo") %>'></asp:Label>
                            <asp:Label ID="lbl_idBodega" runat="server" Text='<%#Eval("id_bodega") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterStyle CssClass="invisible"></FooterStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_campoGrilla,cat_catalogo_codigoinventario">
                        <ItemTemplate>
                            <asp:Label ID="lbl_codigo" runat="server" DataField="codigo" Text='<%#Eval("codigo")%>'> </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_metadata,doc_centrocosto_centrocosto">
                        <ItemTemplate>
                            <bus:busquedaAvanzada ID="bus_centrocosto" runat="server" a_str_tabla="doc_centroCosto" a_str_campo="centrocosto,centrocosto_codigo" CssClass="_bus" />

                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="res_metadata,doc_incoterm_incoterm">
                        <ItemTemplate>
                            <bus:busquedaAvanzada ID="bus_incoterm" runat="server" a_str_tabla="doc_incoterm" a_str_campo="incoterm,incoterm_codigo" CssClass="_bus" />

                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_costoplaneado %>"
                        FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
                        <ItemTemplate>
                            <asp:Label ID="lbl_costoPlaneado" runat="server" CssClass="lbl_grilla" Text='<%# eval("costo_P") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label ID="lbl_TOTcostoPlaneado" runat="server" CssClass="lbl_grilla"></asp:Label>
                        </FooterTemplate>
                        <FooterStyle HorizontalAlign="Right"></FooterStyle>
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_costoejecutado %>"
                        FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
                        <ItemTemplate>
                            <asp:Label ID="lbl_costoEjecutado" runat="server" CssClass="lbl_grilla" Text='<%# eval("costo_E") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label ID="lbl_TOTcostoEjecutado" runat="server" CssClass="lbl_grilla"></asp:Label>
                        </FooterTemplate>
                        <FooterStyle HorizontalAlign="Right"></FooterStyle>
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_cantidadplaneado %>"
                        ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:TextBox ID='txt_cantidadPlaneado' runat='server' Text='<%# eval("cantidad") %>'
                                CssClass='txt_numeroGrilla' Enabled='<%# IIF(eval("id_catalogo")=0 and eval("id_itemDoc")=0,false,true) %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID='rfv_cantidadPlaneado' runat='server' ControlToValidate='txt_cantidadPlaneado'
                                ValidationGroup="item" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor=""
                                Enabled='<%# IIF(eval("id_catalogo")=0 and eval("id_itemDoc")=0,false,true) %>'>*</asp:RequiredFieldValidator>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_cantidadejecutado %>"
                        ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:Label ID="lbl_cantidadEjecutado" runat="server" CssClass="lbl_grilla" Text='<%# eval("cantidad_e") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="res_campoGrilla,gen_unidad_unidad"
                        ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:Label ID="lbl_unidades" runat="server" CssClass="lbl_grilla" Text='<%#Eval("unidades") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="res_campoGrilla,doc_itemdocumento_cantAuxiliar"
                        ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:TextBox ID='txt_cantidadAuxiliar' runat='server' Text='<%#Eval("cantAuxiliar") %>'
                                CssClass='txt_numeroGrilla'></asp:TextBox>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_valorBase %>">
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                        <ItemTemplate>

                            <asp:Label ID="txt_vlrbase" runat="server" CssClass="lbl" Text='<%# eval("precioBase") %>' Enabled="false" />
                            <asp:HiddenField ID="hdd_vlrenLista" runat="server" Value='<%#eval("valorLista") %>' />
                            <asp:HiddenField ID="hdd_porcDescuento" runat="server" Value='<%#eval("porcDescuento") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_valorunitarioplaneado %>"
                        ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Bottom">
                        <ItemTemplate>
                            <asp:TextBox ID='txt_valorUnitarioPlaneado' runat='server' Text='<%# eval("precio") %>'
                                CssClass='txt_precioGrilla'></asp:TextBox>
                            <asp:HiddenField ID="hdd_idlistaprecio_ppal" runat="server" Value='<%#eval("id_listaprecio") %>' />
                            <uc4:precioVentaItemDocumento
                                ID="precioVentaItemDocumento1" runat="server" />
                            <asp:RequiredFieldValidator ID='rfv_valorUnitarioPlaneado' runat='server' ControlToValidate='txt_valorUnitarioPlaneado'
                                ValidationGroup="item" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor=""
                                Enabled='<%# IIF(eval("id_catalogo")=0,false,true) %>'>*</asp:RequiredFieldValidator>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Bottom"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_valorunitarioejecutado %>"
                        ItemStyle-HorizontalAlign="Right">
                        <ItemTemplate>
                            <asp:Label ID="lbl_valorUnitarioEjecutado" runat="server" CssClass="lbl_grilla" Text='<%# eval("precio_e") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_porcdto %>"
                        ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:TextBox ID='txt_porcdto' runat='server' Text='<%# eval("descuento") %>' CssClass='txt_numeroGrilla'
                                Enabled='<%# IIF(eval("id_catalogo")=0,false,true) %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID='rfv_porcdto' runat='server' ControlToValidate='txt_porcdto'
                                ValidationGroup="item" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor=""
                                Enabled='<%# IIF(eval("id_catalogo")=0,false,true) %>'>*</asp:RequiredFieldValidator>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_dtoplaneado %>"
                        FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
                        <ItemTemplate>
                            <asp:Label ID="lbl_dtoPlaneado" runat="server" CssClass="lbl_grilla" Text='<%# eval("descuento_P") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label ID="lbl_TOTdtoPlaneado" runat="server" CssClass="lbl_grilla"></asp:Label>
                        </FooterTemplate>
                        <FooterStyle HorizontalAlign="Right"></FooterStyle>
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_dtoejecutado %>"
                        FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
                        <ItemTemplate>
                            <asp:Label ID="lbl_dtoEjecutado" runat="server" CssClass="lbl_grilla" Text='<%# eval("descuento_E") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label ID="lbl_TOTdtoEjecutado" runat="server" CssClass="lbl_grilla"></asp:Label>
                        </FooterTemplate>
                        <FooterStyle HorizontalAlign="Right"></FooterStyle>
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_subtotalplaneado %>"
                        FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
                        <ItemTemplate>
                            <asp:Label ID="lbl_subTotalPlaneado" runat="server" CssClass="lbl_grilla" Text='<%# eval("subTotalPlaneado") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label ID="lbl_TOTsubTotalPlaneado" runat="server" CssClass="lbl_grilla"></asp:Label>
                        </FooterTemplate>
                        <FooterStyle HorizontalAlign="Right"></FooterStyle>
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:TemplateField>
                    <%--<asp:BoundField DataField="subTotalPlaneado" HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_subtotalplaneado %>"></asp:BoundField>--%>
                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_subtotalejecutado %>"
                        FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
                        <ItemTemplate>
                            <asp:Label ID="lbl_subTotalEjecutado" runat="server" CssClass="lbl_grilla" Text='<%# eval("subTotalEjecutado") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label ID="lbl_TOTsubTotalEjecutado" runat="server" CssClass="lbl_grilla"></asp:Label>
                        </FooterTemplate>
                        <FooterStyle HorizontalAlign="Right"></FooterStyle>
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:TemplateField>
                    <%--<asp:BoundField DataField="subTotalEjecutado" HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_subtotalejecutado %>"></asp:BoundField>--%>
                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_porciva %>"
                        ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:TextBox ID='txt_porciva' runat='server' Text='<%# eval("porciva") %>' CssClass='txt_numeroGrilla'
                                Visible='<%# IIF(eval("id_catalogo")=0 and eval("porciva")=0 ,false,true) %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID='rfv_porciva' runat='server' ControlToValidate='txt_porciva'
                                ValidationGroup="item" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor=""
                                Enabled='<%# IIF(eval("id_catalogo")=0,false,true) %>'>*</asp:RequiredFieldValidator>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_ivaplaneado %>"
                        FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
                        <ItemTemplate>
                            <asp:Label ID="lbl_ivaPlaneado" runat="server" CssClass="lbl_grilla" Text='<%# eval("ivaPlaneado") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label ID="lbl_TOTivaPlaneado" runat="server" CssClass="lbl_grilla"></asp:Label>
                        </FooterTemplate>
                        <FooterStyle HorizontalAlign="Right"></FooterStyle>
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:TemplateField>
                    <%--<asp:BoundField DataField="ivaPlaneado" HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_ivaplaneado %>"></asp:BoundField>--%>
                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_ivaejecutado %>"
                        FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
                        <ItemTemplate>
                            <asp:Label ID="ivaEjecutado" runat="server" CssClass="lbl_grilla" Text='<%# eval("ivaEjecutado") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label ID="lbl_TOTivaEjecutado" runat="server" CssClass="lbl_grilla"></asp:Label>
                        </FooterTemplate>
                        <FooterStyle HorizontalAlign="Right"></FooterStyle>
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:TemplateField>
                    <%--<asp:BoundField DataField="ivaEjecutado" HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_ivaejecutado %>"></asp:BoundField>--%>
                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_totalplaneado %>"
                        FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
                        <ItemTemplate>
                            <asp:Label ID="lbl_TotalPlaneado" runat="server" CssClass="lbl_grilla" Text='<%# eval("TotalPlaneado") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label ID="lbl_TOTTotalPlaneado" runat="server" CssClass="lbl_grilla"></asp:Label>
                        </FooterTemplate>
                        <FooterStyle HorizontalAlign="Right"></FooterStyle>
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:TemplateField>
                    <%--<asp:BoundField DataField="TotalPlaneado" HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_totalplaneado %>"></asp:BoundField>--%>
                    <asp:TemplateField HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_totalejecutado %>"
                        FooterStyle-HorizontalAlign='Right' ItemStyle-HorizontalAlign="Right">
                        <ItemTemplate>
                            <asp:Label ID="lbl_TotalEjecutado" runat="server" CssClass="lbl_grilla" Text='<%# eval("TotalEjecutado") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label ID="lbl_TOTTotalEjecutado" runat="server" CssClass="lbl_grilla"></asp:Label>
                        </FooterTemplate>
                        <FooterStyle HorizontalAlign="Right"></FooterStyle>
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:TemplateField>

                    <asp:TemplateField>

                        <ItemTemplate>

                            <asp:ImageButton ID="imbSerial" runat="server" CausesValidation="False"
                                CommandName='serial' CommandArgument='<%#Eval("id") %>' Visible="false" />

                        </ItemTemplate>
                    </asp:TemplateField>

                    <%--<asp:BoundField DataField="TotalEjecutado" HeaderText="<%$ Resources:res_campoGrilla,doc_itemdocumento_totalejecutado %>"></asp:BoundField>--%>
                </Columns>
                <PagerStyle CssClass="gri_paginacion" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td style="text-align: right;">
            <bti:BotonImagen ID="bti_actualizarGrilla" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                ValidationGroup="item" />
        </td>
        <td style="text-align: left;">
            <bti:BotonImagen ID="bti_guardarYVolver" runat="server" ImageUrl="../../images/botones/saveGo.png"
                ValidationGroup="item" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:ValidationSummary ID='vls' runat='server' ValidationGroup='item' CssClass='lbl_mensaje'
                ForeColor='' HeaderText='<%$Resources:res_mensajes,camposObligatorios %>'></asp:ValidationSummary>
            <asp:Label ID="lbl_mensaje" runat="server" CssClass='lbl_mensaje'></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: left;">
            <br />
            <asp:Label ID="lbl_procedimientoAlmacenado" runat="server" CssClass='lbl_mensaje'></asp:Label>
        </td>
    </tr>
    </table>
    <pop:popup ID="pop" runat="server" />
    <div class="invisible">
        <uc1:fechaAvanzada ID="FechaAvanzada1" runat="server" Visible="true" />
    </div>
    <boc:bocadillo ID="Bocadillo" runat="server" />
</asp:Content>
