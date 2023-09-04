<%@ Page Language="VB" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master"
    AutoEventWireup="false" CodeBehind="detalleTempario.aspx.vb" Inherits="website.samm_web.forms_cat_detalleTempario" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src="~/controles/general/informacion.ascx" TagName="informacion"
    TagPrefix="uc3" %>

<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada"
    TagPrefix="uc2" %>
    <%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="uc4" %>

<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc1" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" runat="Server">
    <asp:Label ID="lbTitulo" runat="server" Text="<%$ Resources:res_titulopagina,forms_cat_detalleTempario %>"
        CssClass="lbl_titulo"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" runat="Server">
    <table cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="2">
                <uc3:informacion ID="inf_tempario" runat="server" a_bln_orientacionVertical="true" />
            </td>
        </tr>
        <tr>
            <td colspan="1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="1">
            </td>
            <td class="tbl_marcoFormulario">
                <asp:LinkButton id="lnkTipoCatalogo" runat="server" 
                    OnClick="lnkTipoCatalogo_Click" CssClass="lbl" 
                    text="<%$Resources:res_etiquetas_cat,agregarDetalleTempario %>"></asp:LinkButton></td>
        </tr>
        <tr>
            <td colspan="1">
            </td>
            <td>
                <table runat="server" style="border-right: black 1px solid; border-top: black 1px solid; border-left: black 1px solid; border-bottom: black 1px solid" id="tbl_agregarCatalogo" visible="true" class="tbl_marcoFormulario">
                    <tr>
                        <td>
                            <asp:Label id="Label3" runat="server" 
                                Text="<%$ Resources:res_metadata, cat_tipocatalogo_tipocatalogo %>" 
                                CssClass="lbl"></asp:Label></td>
                        <td>
                            <uc2:busquedaAvanzada ID="bus_tipoCatalogo" runat="server" a_bol_postBack="true"
                                a_str_tabla="cat_tipoCatalogo" />
                        </td>
                        <td>
                            </td>
                    </tr>
                    <%--<tr>
                        <td><asp:Label id="Label2" runat="server" 
                                Text="<%$ Resources:res_metadata, cat_familia_familia %>" CssClass="lbl"></asp:Label></td>
                        <td>
                            <uc4:busquedaAvanzadaMultiple ID="bus_familia" runat="server" a_str_tabla="gen_familia" a_bln_obligatorio="true" a_str_grupoValidacion="insDetalle" a_str_campo="familia,familia_codigo" />
                        </td>
                        <td>
                        </td>
                    </tr>--%>
                    <tr>
                        <td><asp:Label id="lbl_familia" runat="server" 
                                Text="<%$ Resources:res_metadata, cat_familia_familia %>" CssClass="lbl"></asp:Label></td>
                        <%--<td>
                            <uc4:busquedaAvanzadaMultiple ID="bus_familia" runat="server" a_str_tabla="gen_familia" a_bol_postBack="true" />
                        </td>--%>
                        <td class='td_controlesFormulario'>
                            <uc2:busquedaAvanzada ID="bus_familia" runat="server" a_bol_postBack="true" a_str_tabla="gen_familia" />
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td><asp:Label id="Label4" runat="server" 
                                Text="<%$ Resources:res_metadata, cat_catalogo_catalogo %>" CssClass="lbl"></asp:Label></td>
                        <td>
                            
                                <uc2:busquedaAvanzadaMultiple ID="bus_catalogo" runat="server" a_bol_postBack="true" a_str_tabla="cat_catalogo"
                                a_bln_obligatorio="true" a_str_grupoValidacion="insDetalle"
                                a_str_campo="codigoInventario,catalogo,catalogo_codigo,descripcion"
                                a_str_filtros="id not in(select id from [cat_catalogo.repuesto] where vigente=0)" />
                                
                                <uc2:busquedaAvanzadaMultiple ID="bus_catalogo_actividad" runat="server" a_bol_postBack="true"
                                a_str_tabla="cat_catalogo.actividad" 
                                Visible="false" a_str_campo="cat_catalogo_actividad_codigoInventario,catalogo.actividad,cat_catalogo_actividad_catalogo_codigo,cat_catalogo_actividad_descripcion" />
                                
                                <uc2:busquedaAvanzadaMultiple ID="bus_catalogo_equipo" runat="server" a_bol_postBack="true"
                                a_str_tabla="cat_catalogo.equipo" Visible="false"
                                a_str_campo="cat_catalogo_equipo_codigoInventario,catalogo.equipo,cat_catalogo_equipo_catalogo_codigo,cat_catalogo_equipo_descripcion" />
                                
                                <uc2:busquedaAvanzadaMultiple ID="bus_catalogo_otro" runat="server" a_bol_postBack="true"
                                a_str_tabla="cat_catalogo.otro" Visible="false"
                                a_str_campo="cat_catalogo_otro_codigoInventario,catalogo.otro,cat_catalogo_otro_catalogo_codigo,cat_catalogo_otro_descripcion" />
                                
                                <uc2:busquedaAvanzadaMultiple ID="bus_catalogo_producto" runat="server" a_bol_postBack="true"
                                a_str_tabla="cat_catalogo.producto"
                                Visible="false" a_str_campo="cat_catalogo_producto_codigoInventario,catalogo.producto,cat_catalogo_producto_catalogo_codigo,cat_catalogo_producto_descripcion" />
                                
                                <uc2:busquedaAvanzadaMultiple ID="bus_catalogo_repuesto" runat="server" a_bol_postBack="true"
                                a_str_tabla="cat_catalogo.repuesto"
                                Visible="false" a_str_campo="cat_catalogo_repuesto_codigoInventario,catalogo.repuesto,cat_catalogo_repuesto_catalogo_codigo,cat_catalogo_repuesto_descripcion"
                                a_str_filtros="vigente=1" />
                                
                                <uc2:busquedaAvanzada ID="bus_tempario" runat="server" a_str_tabla="cat_catalogo.tempario" Visible ="false"
                                a_str_campo="catalogo.tempario,cat_catalogo_tempario_codigoInventario,cat_catalogo_tempario_catalogo_codigo"
                                a_bol_postBack="true" />
                            
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label id="Label5" runat="server" 
                                Text="<%$ Resources:res_metadata, cat_detalletempario_id_sistema %>" 
                                CssClass="lbl"></asp:Label></td>
                        <td>
                            <uc2:busquedaAvanzada ID="bus_sistema" runat="server" a_str_tabla="cat_sistema" a_bln_obligatorio="false" />
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label id="Label6" runat="server" 
                                Text="<%$ Resources:res_metadata,cat_detalletempario_cantidadestandar %>" 
                                CssClass="lbl"></asp:Label></td>
                        <td>
                            <asp:TextBox id="txtCantidad" runat="server" CssClass="txt_numero"></asp:TextBox><asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                                ControlToValidate="txtCantidad" CssClass="lbl_mensaje" ForeColor=""
                                ValidationGroup="insDetalle">*</asp:RequiredFieldValidator></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td><bti:BotonImagen ID="btnAgregar" runat="server" CssClass="imb"
                    ImageUrl="~/images/botones/aceptar.png" EnableViewState="False" OnClick="btnAgregar_Click" ValidationGroup="insDetalle" /></td>
                        <td>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="1">
            </td>
            <td class="tbl_marcoFormulario">
                <bti:BotonImagen ID="btnNuevo" runat="server" CausesValidation="False" CssClass="imb"
                    ImageUrl="~/images/botones/agregar.gif" OnClick="btnNuevo_Click" Visible="False"></bti:BotonImagen>
                <bti:BotonImagen ID="btnEliminar" runat="server" CausesValidation="false" CssClass="imb"
                    ImageUrl="~/images/botones/quitar.gif" OnClick="btnEliminar_Click"></bti:BotonImagen>
                <bti:BotonImagen ID="btn_editar" runat="server" CausesValidation="false" CssClass="imb"
                    ImageUrl="~/images/botones/editar.gif" OnClick="btn_editar_Click" Visible="False">
                </bti:BotonImagen>&nbsp;<bti:BotonImagen ID="imbCompartir" runat="server" 
                    CausesValidation="false" CssClass="imb"
                    ImageUrl="~/images/botones/compartirclaro.gif" />
                <bti:BotonImagen ID="imbImprimir" runat="server" CausesValidation="false" CssClass="imb"
                    ImageUrl="~/images/botones/print.gif" /></td>
        </tr>
        <tr>
            <td colspan="1" style="margin-top: 10px; padding-top: 10px; background-color: white">
            </td>
            <td style="margin-top: 10px; padding-top: 10px; background-color: white">
                <asp:Label id="lblMensaje" runat="server" CssClass="lbl_mensaje"></asp:Label></td>
        </tr>
             <tr>
            <td></td>
            <td>
                <table>
                    <tr>
                        <td>
                            <asp:Label id="lbl_pruebaCheckList" runat="server" Text="" CssClass="lbl"></asp:Label>
                        </td>
                        <td>
                            <uc2:busquedaAvanzada ID="bus_pruebaCheckList" runat="server" a_bol_postBack="true" a_str_tabla="cat_pruebaCheckList" a_str_filtros="activo = 1" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

            <td class="tbl_marcoFormulario" colspan="1">
            </td>
            <td class="tbl_marcoFormulario">
                <asp:GridView ID="grvLista" runat="server" DataKeyNames="id" AutoGenerateColumns="False"
                    UseAccessibleHeader="False">
                    <footerstyle cssclass="gri_pie" />
                    <rowstyle cssclass="gri_item" />
                    <columns>
                    
<asp:TemplateField>
<HeaderTemplate>
<asp:CheckBox ID="chb_habilitar" runat="server" />
</HeaderTemplate>
<ItemTemplate>
<asp:CheckBox ID="chb_habilitar"  runat="server" CssClass="lbl" />
</ItemTemplate>
</asp:TemplateField>

<asp:TemplateField><ItemTemplate>
<asp:Label id="Label1" runat="server" Text='<%# eval("item") %>' Font-Bold='<%# iif(Eval("id")=0,true,false) %>'></asp:Label> 
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField HeaderText="<%$ Resources:res_campoGrilla,cat_catalogo_codigoinventario%>" DataField="cat_catalogo_codigoinventario" HeaderStyle-CssClass="gri_titulo" />

<asp:BoundField HeaderText='res_campoGrilla,cat_catalogo_unidad' DataField="unidad" HeaderStyle-CssClass="gri_titulo" />

<asp:BoundField HeaderText="<%$ Resources:res_campoGrilla,cat_subtipocatalogo_subtipocatalogo%>" DataField="subtipo" HeaderStyle-CssClass="gri_titulo" />
<asp:TemplateField HeaderText="<%$ Resources:res_metadata,cat_detalletempario_cantidadestandar%>"><ItemTemplate>
<asp:TextBox ID="txtCantidadFabricante" runat="server" CssClass="txt_numeroGrilla"  Visible='<%# iif(Eval("id")>0,not eval("essoporte"),false) %>' Text='<%# eval("cantidadEstandar") %>'></asp:TextBox>
                            
</ItemTemplate>

<HeaderStyle CssClass="gri_titulo"></HeaderStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
</asp:TemplateField>
<asp:TemplateField HeaderText="<%$ Resources:res_metadata,cat_detalletempario_cantidadtropicalizada %>"><ItemTemplate>
                            
                                <asp:TextBox ID="txtCantidad" runat="server" CssClass="txt_numeroGrilla"  Visible='<%# iif(eval("essoporte"),true,iif(Eval("id")>0 , eval("esactividad"),false)) %>' Text='<%# eval("cantidadTropicalizada") %>'></asp:TextBox>
                            
</ItemTemplate>

<HeaderStyle CssClass="gri_titulo"></HeaderStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
</asp:TemplateField>
<asp:TemplateField HeaderText="<%$ Resources:res_metadata,cat_detalletempario_orden %>"><ItemTemplate>
                                <asp:TextBox ID="txtOrden" runat="server" CssClass="txt_numeroGrilla"  Visible='<%# iif(Eval("id")>0, true,false) %>' Text='<%# eval("orden") %>'></asp:TextBox>
                            
</ItemTemplate>

<HeaderStyle CssClass="gri_titulo"></HeaderStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
</asp:TemplateField>

<asp:TemplateField ><ItemTemplate>
        <asp:HyperLink runat="server" ID="hy_tempario" Target="_new" Visible='<%# iif(Eval("id_tipo")=4,true,false) %>' NavigateUrl='<%# eval("url") %>' Text="<%$ Resources:res_metadata,cat_tempario %>"></asp:HyperLink>              
</ItemTemplate>

<HeaderStyle CssClass="gri_titulo"></HeaderStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
</asp:TemplateField>

</columns>
                    <pagerstyle cssclass="gri_paginacion" />
                    <emptydatatemplate>
                    
                    
</emptydatatemplate>
                    <selectedrowstyle cssclass="gri_itemSeleccionado" />
                    <headerstyle cssclass="gri_titulo" />
                    <alternatingrowstyle cssclass="gri_itemAlterno" />
                </asp:GridView>
                <uc1:popup ID="popup1" runat="server" a_bol_visible='false' a_bol_mostrarSAMM="false" />
                &nbsp; &nbsp;
                <bti:BotonImagen ID="btiAceptar" runat="server" CausesValidation="false" CssClass="imb"
                    ImageUrl="~/images/botones/aceptar.png" EnableViewState="False" /></td>
        </tr>
        <tr>
            <td class="tbl_marcoFormulario" colspan="1">
            </td>
            <td class="tbl_marcoFormulario">
            <br />
                <asp:Label ID="lbl_procedimientoAlmacenado" runat="server" CssClass='lbl_mensaje'></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
