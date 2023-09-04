<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_agregarItemDocumento.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_agregarItemDocumento" %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="pop" %>
<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="textoAvanzado" TagPrefix="uc1" %>
<table style="width: 100%">
    <tr style="width: 100%">
        <td class="tbl_marcoFormulario" colspan="1" style="white-space: nowrap; width: 100%">
            <bti:BotonImagen ID='bti_eliminar' runat='server' ImageUrl='../../images/botones/quitar.gif'
                CausesValidation="false" CssClass='imb' />
        </td>
    </tr>
</table>
<table class='tbl_marcoFormulario'>
    <tr>
        <td>
            <asp:Panel ID='pan_formulario' runat='server' DefaultButton='imbGuardar'>
                <table class='tbl_formulario' border='0' cellpadding='0' cellspacing='0'>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID="lbl_docPadre" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,doc_documento_doc_documento_padre %>'></asp:Label>
                        </td>
                        <td class='td_controlesFormulario'>
                            <asp:HyperLink ID="hyp_documentoPadre" runat="server" CssClass="lnk"></asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID='lbl_itemDocumento' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                        <td class='td_controlesFormulario'>
                            <asp:TextBox ID='txt_itemDocumento' runat='server' MaxLength='100' CssClass='txt_largo'></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID='rfv_itemDocumento' runat='server' ControlToValidate='txt_itemDocumento'
                                ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID='lbl_detalle' runat='server' CssClass='lbl'></asp:Label>
                        </td>
                        <td class='td_controlesFormulario'>
                            <uc1:textoAvanzado ID='txt_detalle' runat='server' CssClass="txt_formulario" a_int_maxLength='8000' ></uc1:textoAvanzado>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID='lbl_id_catalogo' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                        <td class='td_controlesFormulario'>
                            <bus:busquedaAvanzada ID='bus_catalogo' runat='server' a_str_tabla='cat_catalogo'
                                a_bln_obligatorio='True' a_bol_postBack="true" a_str_campo="catalogo,catalogo_codigo,codigoInventario"  />
                            <asp:Label ID="lbl_procedimientoAlmacenado" runat="server" CssClass='lbl_mensaje'></asp:Label>
                            <asp:Label ID="lbl_resumenrepuesto" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                 
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID='lbl_id_itemDocumento_superior' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                        <td class='td_controlesFormulario'>
                            <bus:busquedaAvanzada ID='bus_itemDocumento_superior' runat='server' a_str_tabla='doc_itemDocumento'
                                a_bln_obligatorio='False' a_str_filtros="id_catalogo=0" />
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID='lbl_costear' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                        <td class='td_controlesFormulario'>
                            <asp:RadioButtonList ID='rbl_costear' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
                                RepeatLayout='Flow'>
                                <asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
                                <asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            <%--<asp:RequiredFieldValidator ID='rfv_costear' runat='server' ControlToValidate='rbl_costear'    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>--%>
                        </td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID='lbl_esUrgente' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                        <td class='td_controlesFormulario'>
                            <asp:RadioButtonList ID='rbl_esUrgente' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
                                RepeatLayout='Flow'>
                                <asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
                                <asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            <%--<asp:RequiredFieldValidator ID='rfv_esUrgente' runat='server' ControlToValidate='rbl_esUrgente'    ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>--%>
                        </td>
                    </tr>
                      <tr>
                    <td></td>
                    <td><asp:CheckBox ID="chk_sugerirLoc" runat="server" CssClass ="lbl" Visible="false"   /></td>
                    <td></td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID='lbl_id_bodega' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                        <td class='td_controlesFormulario'>
                            <bus:busquedaAvanzada ID='bus_bodega' runat='server' a_str_tabla='gen_bodega' a_bln_obligatorio='True' a_bol_postBack="false" />
                        </td>
                        <td>
                        </td>
                    </tr>
                   <tr>
                    <td>
                    </td>
                    <td>
                    <asp:GridView ID ="grd_localizaciones" runat="server" AutoGenerateColumns="false" ShowFooter="true" >
                    <Columns>
                    <asp:TemplateField Visible="false"  >
                    <ItemTemplate>
                    <asp:Label id="lbl_idLoc" runat="server" CssClass='lbl' Text='<%#Bind("id") %>' ></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                       <asp:TemplateField HeaderText ="res_metadata,gen_localizacion_localizacion"   >
                    <ItemTemplate>
                    <asp:Label id="lbl_localizacion" runat="server" CssClass='lbl' Text='<%#Bind("localizacion") %>' ></asp:Label>
                    </ItemTemplate>
                      <FooterTemplate >
                    <asp:Label ID="lbl_plan" runat="server" CssClass='lbl'></asp:Label>
                    </FooterTemplate>
                    </asp:TemplateField>
                   <asp:TemplateField  HeaderText ="res_metadata,gen_localizacion_existencia"  >
                    <ItemTemplate>
                    <asp:Label id="lbl_existencia" runat="server" CssClass='lbl' Text='<%#Bind("existencia") %>' ></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate >
                    <asp:label ID="lbl_planeado" runat="server" CssClass='lbl' ></asp:label>
                    </FooterTemplate>
                    </asp:TemplateField>
                       <asp:TemplateField   HeaderText ="res_metadata,gen_localizacion_itemdocumento_cantidad" >
                    <ItemTemplate>
                    <asp:TextBox ID ="txt_cantidad" runat="server" CssClass='txt' Text ='<%#Eval("cantidadI") %>'  ></asp:TextBox>
                    </ItemTemplate>
                     <FooterTemplate >
                    <asp:Label ID="lbl_total" runat="server" CssClass='lbl'>
                    </asp:label>
                    </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField   HeaderText ="res_metadata,gen_localizacion_existenciamaxima" >
                    <ItemTemplate>
                    <asp:Label  ID ="lbl_maxima" runat="server" CssClass='lbl' Text ='<%#Eval("existenciamaxima") %>'  ></asp:label>
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
                    <td></td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID='lbl_id_incoterm' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                        <td class='td_controlesFormulario'>
                            <bus:busquedaAvanzada ID='bus_incoterm' runat='server' a_str_tabla='doc_incoterm'
                                a_bln_obligatorio='True' />
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID='lbl_id_centroCosto' runat='server' CssClass='lblobligatorio'></asp:Label>
                        </td>
                        <td class='td_controlesFormulario'>
                            <bus:busquedaAvanzada ID='bus_centroCosto' runat='server' a_str_tabla='doc_centroCosto'
                                a_bln_obligatorio='True' />
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID='lbl_vencimientoGarantia_ff' runat='server' CssClass='lbl'></asp:Label>
                        </td>
                        <td class='td_controlesFormulario'>
                            <fec:fechaAvanzada ID='fec_vencimientoGarantia_ff' runat='server' a_str_prefijo='ff'
                                a_bln_obligatorio='false'></fec:fechaAvanzada>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class='td_lblFormulario'>
                            <asp:Label ID='lbl_horasGarantia' runat='server' CssClass='lbl'></asp:Label>
                        </td>
                        <td class='td_controlesFormulario'>
                            <asp:TextBox ID='txt_horasGarantia' runat='server' CssClass='txt_numero'></asp:TextBox>
                        </td>
                        <td>
                            <act:filteredtextboxextender id='ftb_horasGarantia' runat='server' targetcontrolid='txt_horasGarantia'
                                filtertype='Numbers,Custom' />
                        </td>
                    </tr>
                </table>
                <table id='tbl_guardarformulario'>
                    <tr>
                        <td>
                            <asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje'
                                ForeColor='' />
                        </td>
                        <td valign='middle' align='right'>
                            <bti:BotonImagen ID='imbGuardar' runat='server' ImageUrl='../../images/botones/aceptar.png'
                                ValidationGroup='form' CssClass='imb' />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
</table>
<pop:popup ID="pop" runat="server" />
