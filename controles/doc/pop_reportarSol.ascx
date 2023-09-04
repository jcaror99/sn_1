<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_reportarSol.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_reportarSol" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="textoAvanzado" TagPrefix="tex" %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/busquedaAvanzadaMultiple.ascx' TagName='busquedaAvanzadaMultiple' TagPrefix='bus' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
<tr><td></td><td style="text-align :left" >
<asp:Label ID="lbl_reporte" runat="server" CssClass ="lbl" ></asp:Label>
</td></tr>

    <tr>
        <td class="td_lblFormulario">
            <asp:Label ID="lbl_inicio" runat="server" CssClass="lbl" ></asp:Label>
        </td>
        <td class="td_controlesFormulario">
            <fec:fechaAvanzada ID="fec_inicio" runat="server" a_bln_obligatorio="true" a_str_grupoValidacion="ot"
                a_str_prefijo="fh" />
        </td>
    </tr>
    <tr>
        <td class="td_lblFormulario">
            <asp:Label ID="lbl_trabajos" runat="server" CssClass="lblobligatorio" ></asp:Label>
        </td>
        <td class="td_controlesFormulario">
            <br />
            <tex:textoAvanzado ID="txt_trabajos" runat="server" a_bln_obligatorio="true" a_str_grupoValidacion="ot" 
                ContenidoEnPOP="true" CssClass="txt_formulario" />
        </td>
    </tr>
    <tr><td ></td ><td >
    <asp:RadioButtonList id="rdl_ot" runat ="server" RepeatDirection="Horizontal"  AutoPostBack="true" CssClass="lbl" > </asp:RadioButtonList>
    </td></tr>
    <tr runat="server" id="tr_Ots" >
        <td class="td_lblFormulario">
            <asp:Label ID="lbl_documento_ot" runat="server" CssClass="lbl" ></asp:Label>
        </td>
        <td class="td_controlesFormulario">
            <br />
            <bus:busquedaAvanzada ID="bus_ots" runat="server" a_bln_obligatorio="false" a_str_tabla="doc_documento.ot"
                a_str_grupoValidacion="ot" a_bol_postBack="true" />
        </td>
    </tr>
    <tr> <td colspan ="2">   <hr /></td></tr>
    <tr runat="server" id="tr_subtipoOt">
        <td class="td_lblFormulario">
         
            <asp:Label ID="lbl_subtipo" runat="server" CssClass="lbl" ></asp:Label>
        </td>
        <td class="td_controlesFormulario">
            <br />
            <bus:busquedaAvanzada ID="bus_subtipoOt" runat="server" a_str_tabla="doc_subtipoDocumento"
                a_str_grupoValidacion="ot"  a_bol_postBack =true />
        </td>
    </tr>
    <tr runat="server" id="tr_tipoServicio">
        <td class="td_lblFormulario">
            <asp:Label ID="lbl_servicio" runat="server" CssClass="lbl" ></asp:Label>
        </td>
        <td class="td_controlesFormulario">
            <br />
            <bus:busquedaAvanzada ID="bus_tipoServicio" runat="server" a_str_tabla="gen_tipoServicio"
                a_str_grupoValidacion="ot"  a_bol_postBack="true"/>
            
        </td>
    </tr>
      <tr> <td colspan ="2">  <hr /></td></tr>
    <tr>
        <td class="td_lblFormulario">
            <asp:Label ID="lbl_actividades" runat="server" CssClass="lblobligatorio" ></asp:Label>
        </td>
        <td class="td_controlesFormulario">
            <asp:CheckBoxList id="chb_actividades" runat="server" CssClass="chb"></asp:CheckBoxList>
        </td>
    </tr>
     <tr>
        <td class="td_lblFormulario"   >
            
        </td>
        <td class="td_controlesFormulario" runat ="server"  id="td_actividad" >
           <asp:HyperLink ID="lbl_actividad" runat="server" CssClass="lbl" ></asp:HyperLink>
           <bus:busquedaAvanzadaMultiple ID="bus_actividad" runat ="server" a_str_tabla ="cat_catalogo.actividad" a_str_campo ="catalogo.actividad,cat_catalogo_actividad_catalogo_codigo,cat_catalogo_actividad_codigoinventario" a_str_camposGrilla="[catalogo.actividad],cat_catalogo_actividad_catalogo_codigo,cat_catalogo_actividad_codigoinventario,cat_catalogo_actividad_gen_familia_familia" />
        </td>
    </tr>
    
   <tr>  <td colspan ="2">  <hr /></td></tr>
     <tr  runat="server" id="tr_checklist" >
        <td class="td_lblFormulario">
            <asp:Label ID="lbl_prueba" runat="server" CssClass="lbl" ></asp:Label>
        </td>
        <td class="td_controlesFormulario">
            <bus:busquedaAvanzada ID="bus_checklist" runat="server" a_str_tabla="cat_pruebaCheckList" a_bol_postBack="true"/>
        </td>
    </tr>
    <tr><td colspan ="2">
                    <asp:GridView ID="grd_datos" runat="server" ShowHeader="False" GridLines="None" 
                AutoGenerateColumns="false" style="font-style: italic">
                <Columns>
               <%-- <asp:TemplateField>
                <ItemTemplate>
                 <asp:CheckBox ID ="chk_seleccionar" runat="server" AutoPostBack ="true"  Checked='<%# eval("ver") %>' OnCheckedChanged="s_ver"  />
                </ItemTemplate>
                </asp:TemplateField>--%>
                    <asp:TemplateField ItemStyle-VerticalAlign="Top" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <table style="width: 100%">
                                <tr>
                                <td>
                               
                                </td>
                                    <td id="tdIzq" runat="server">
                                        <asp:Label ID="lbl_atributo" runat="server" CssClass="lbl" Text='<%#Eval("cat_atributo_atributo") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr id="trSeccion" runat="server">
                                    <td style="width: 100%">
                                   </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-VerticalAlign="Top" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:TextBox ID="lblID" runat="server" Visible="FALSE"></asp:TextBox><table style="width: 100%"
                                cellpadding="0" cellspacing="0">
                                <tr>
                                    <td id="tdDer" runat="server">
                                        <asp:Label ID="lblIdAtributo" runat="server" Visible="false"></asp:Label><asp:TextBox
                                            ID="txtValor" runat="server" CssClass="txt"></asp:TextBox><asp:CheckBoxList ID="chbValores"
                                                runat="server" CssClass="chk" RepeatColumns="2">
                                            </asp:CheckBoxList>
                                        <asp:TextBox ID="txtValorNumerico" runat="server" CssClass="txt_numero"></asp:TextBox><act:FilteredTextBoxExtender
                                            ID='ftbValorNumerico' runat='server' TargetControlID='txtValorNumerico' FilterType='Numbers,Custom' />
                                        <asp:DropDownList ID="drpValor" runat="server" CssClass="drp">
                                        </asp:DropDownList>
                                        <fec:fechaAvanzada ID="fecValor" runat="server" a_str_grupoValidacion='atr' a_bln_obligatorio='<%#Eval("obligatorio") %>' />
                                        <asp:RequiredFieldValidator ID="rfv_num" runat="server" Enabled='<%#Eval("obligatorio") %>'
                                            ControlToValidate='txtValorNumerico' ErrorMessage="" CssClass='lbl_mensaje' ValidationGroup='atr'>*</asp:RequiredFieldValidator><asp:RequiredFieldValidator
                                                ID="rfv_drp" runat="server" Enabled='<%#Eval("obligatorio") %>' ControlToValidate='drpValor'
                                                ErrorMessage="" CssClass='lbl_mensaje' ValidationGroup='atr'>*</asp:RequiredFieldValidator><asp:RequiredFieldValidator
                                                    ID="rfv_texto" runat="server" Enabled='<%#Eval("obligatorio") %>' ControlToValidate='txtValor'
                                                    ErrorMessage="" CssClass='lbl_mensaje' ValidationGroup='atr'>*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
<%--                    <asp:TemplateField>
                        <ItemTemplate>
                            <table style="width: 100%">
                                <tr>
                                    <td id="td_tomaDato" runat="server">
                                        <fec:fechaAvanzada ID="fecTomaDato" runat="server" a_str_prefijo="ff" a_bln_obligatorio="false" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
--%>                </Columns>
            </asp:GridView>

    
    </td></tr>
    <tr>  <td colspan ="2">  <hr /></td></tr>
     <tr runat ="server" id="tr_estadocer" >
        <td class="td_lblFormulario">
            <asp:Label ID="lbl_estadocer" runat="server" CssClass="lbl" ></asp:Label>
        </td>
        <td class="td_controlesFormulario">
            <bus:busquedaAvanzada ID="bus_estadosOT" runat="server" a_str_tabla="doc_estadoTipoDocumento" a_bol_postBack="false"/>
        </td>
    </tr>

  
     <tr>
    
        <td class="td_lblFormulario">
        
            <asp:Label ID="lbl_cierre" runat="server" CssClass="lbl" ></asp:Label>
        </td>
        <td class="td_controlesFormulario">
            <fec:fechaAvanzada ID="fec_fechaFin" runat="server" a_bln_obligatorio="false" a_str_grupoValidacion="ot"
                a_str_prefijo="fh" />
        </td>
    </tr>
    <tr><td></td><td><asp:CheckBox ID="chk_cerrarsol" runat ="server" CssClass ="lbl" /> </td></tr>
    <tr>
        <td colspan="2" align="center">
            <cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                ValidationGroup="ot"></cc1:BotonImagen>
            <asp:HyperLink ID="lnk_firmar" runat="server" Visible="false"></asp:HyperLink>
               <asp:Label ID="lbl_firmar" runat="server" Visible="false"></asp:Label>
        </td>
    </tr>
    <tr>
         <td colspan="2" align="center">
             <asp:Label ID="lbl_mensaje_exito" runat="server" CssClass="lbl" Visible ="false"></asp:Label>
         </td>
   </tr>
    <tr>
        <td colspan="2">
        <asp:Label ID="lbl_mensajeAdvertencia" runat="server" CssClass="lbl_mensaje" Visible ="false"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
        <td>
            <cc1:BotonImagen ID="btn_mostrardetalle" Visible="false" runat="server" ImageUrl="../../images/botones/buscarBA.gif" />
        </td>
        <td>
            <table id="tbl_bocadilloElemento" border="0" cellpadding="0" cellspacing="0" style="display: none;
                width: 183px; z-index: 107">
                <tr>
                    <td align="left" height="11" valign="top" width="6%">
                        <img src="../../images/boc/bocadillo_r1_c1.png" height="16" width="27">
                    </td>
                    <td background="../../images/boc/bocadillo_r1_c3.png" height="11" width="90%">
                    </td>
                    <td align="right" height="11" valign="top" width="4%">
                        <img src="../../images/boc/bocadillo_r1_c4.png" height="16" width="16">
                    </td>
                </tr>
                <tr>
                    <td align="left" background="../../images/boc/bocadillo_r2_c1.png" valign="top" width="6%">
                        &nbsp;
                    </td>
                    <td id="td_BocadilloElementotexto" style="white-space: nowrap" class="unnamed1" bgcolor="#ffffff"
                        width="90%">
                    </td>
                    <td align="right" background="../../images/boc/bocadillo_r2_c4.png" valign="top"
                        width="4%">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top" width="6%">
                        <img src="../../images/boc/bocadillo_r4_c1.png" height="16" width="27">
                    </td>
                    <td background="../../images/boc/bocadillo_r4_c3.png" width="90%">
                    </td>
                    <td align="right" valign="top" width="4%">
                        <img src="../../images/boc/bocadillo_r4_c4.png" height="16" width="16">
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
