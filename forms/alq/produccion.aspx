<%@ Page Language="VB" AutoEventWireup="false" CodeBehind="produccion.aspx.vb"  MasterPageFile="~/master/master/mas_FormularioSinGrilla.master"  Inherits="website.samm_web.forms_alq_produccion" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Src='~/controles/general/tabs.ascx' TagName='tabs' TagPrefix='tab' %>
<%@ Register Src="~/controles/general/informacion.ascx" TagName="informacion"
    TagPrefix="uc4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" runat="Server">
   
    <asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo'></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" runat="Server">
    <table>
        <tr>
            <td>
                <uc4:informacion ID="inf_alquiler" runat="server" a_bln_orientacionVertical="false" />
            </td>
        </tr>
        <tr>
            <td>
                <table cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <tab:tabs ID='Tabs' runat="server" />
                        </td>
                    </tr>
                </table>
                <table class="tbl_marcoFormulario" cellpadding="5px" cellspacing="0" width="100%">
    
    <tr><td colspan ="4"><asp:Label ID="lbl_fechasMenu" runat="server" CssClass="lbl" ></asp:Label>
</td></tr>           
<tr>
<td>
<asp:Label ID="lbl_equipo" runat="server"  CssClass="lbl" ></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID="bus_equipo" runat="server" a_str_tabla ="equ_equipo" a_str_campo ="equipo,equipo_serial" a_bol_postBack="true" />
</td>

<td>
</td>
<td>
<asp:Label ID="lbl_detalleequipo" runat="server"  CssClass="lbl" ></asp:Label>
</td>
</tr>

 

<tr><td>
<asp:Label ID="lbl_fecha" runat="server"  CssClass ="lbl" ></asp:Label>
</td><td>
<fec:fechaAvanzada ID="fec_evento" runat="server" a_str_prefijo="fh" a_bln_obligatorio ="true"   a_str_grupoValidacion="pro"  />
</td>
<td>
<asp:Label ID="lbl_fecha_horometroInicio" runat="server"  CssClass ="lbl" ></asp:Label></td><td>
<asp:TextBox ID="txt_horometro"  runat="server" CssClass ="txt" CausesValidation="true" ValidationGroup ="pro" ></asp:TextBox>
</td>
</tr>

<tr><td>
<asp:Label ID="lbl_fechaFin" runat="server"  CssClass ="lbl" ></asp:Label>
</td><td>
<fec:fechaAvanzada ID="fec_evento_fin" runat="server" a_str_prefijo="fh" a_bln_obligatorio ="true"   a_str_grupoValidacion="pro"  />
</td>
<td>
<asp:Label ID="lbl_fecha_horometroFin" runat="server"  CssClass ="lbl" ></asp:Label></td><td>
<asp:TextBox ID="txt_horometroFin"  runat="server" CssClass ="txt" CausesValidation="true" ValidationGroup ="pro" ></asp:TextBox>
</td>
</tr>
<tr><td><asp:Label ID="lbl_dif" runat ="server"  CssClass="lbl" > </asp:Label></td><td><asp:Label ID="lbl_diferencia" runat ="server"  CssClass="lbl" > </asp:Label></td></tr>





<%--<tr><td>
<asp:Label ID="lbl_horometro" runat="server"  CssClass ="lbl" ></asp:Label>
</td><td>
<asp:TextBox ID="txt_horometro" runat="server" CssClass ="txt" CausesValidation="true" ValidationGroup ="pro" ></asp:TextBox></td>
</tr>
--%>
<tr><td>
<asp:Label ID="lbl_codigo" runat="server"  CssClass ="lbl" ></asp:Label>
</td><td>
<asp:TextBox ID="txt_codigo" runat="server" CssClass="txt" CausesValidation="true" ValidationGroup ="pro" ></asp:TextBox>
</td>
 <td></td>
</tr>
<tr><td colspan="4"><asp:Label ID="lbl_error" runat="server"    CssClass ="lbl" ></asp:Label></td></tr>
</table>
<table>
<tr> <td colspan="2">


  <asp:GridView ID="grd_detalle" runat="server" AutoGenerateColumns="False">
            <Columns>
            <asp:TemplateField  HeaderText='res_metadata,cat_catalogo_catalogo'>
            <ItemTemplate >
            <asp:label ID="lbl_idCatalogo" runat ="server" casclass='invisible' Text='<% #eval("id_catalogo") %>' ></asp:label>
             <asp:label ID="lbl_catalogo" runat ="server" casclass='lbl' Text='<% #eval("catalogo") %>' ></asp:label>
            </ItemTemplate>     
               </asp:TemplateField>    
<%--             <asp:TemplateField HeaderText="Tarifa">
            <ItemTemplate > 
              <asp:label ID="lbl_produccion" runat ="server"  Text='<% #eval("tarifa") %>' ></asp:label>
              </ItemTemplate>   
            </asp:TemplateField>--%>

            <asp:TemplateField HeaderText='res_metadata,gen_localizacion_itemdocumento_cantidad'> 
            <ItemTemplate >
            <asp:TextBox ID="txt_cantidad" runat="server"  CssClass ="txt" CausesValidation ="true" ValidationGroup ="pro" ></asp:TextBox>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText='res_metadata,dis_obra_catalogo_valorunitario'> 
            <ItemTemplate >
            <asp:label ID="lbl_precio" runat ="server"  Text='<% #eval("precio") %>' ></asp:label>
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
            
            
            </br>
            <asp:GridView  ID="grd_seleccionado" runat="server"  AutoGenerateColumns="False">
            <Columns>
            <asp:TemplateField HeaderText='res_metadata,cnt_visitafija_fecha_ff'>  
            <ItemTemplate >
            <asp:label ID="lbl_fechas" runat ="server" Text='<% # eval("link") %>' ></asp:label>
            </ItemTemplate>     
            </asp:TemplateField> 
            <asp:TemplateField HeaderText='res_metadata,cnt_contratoequipo_id_equipo'>  
            <ItemTemplate >
            <asp:label ID="lbl_equipos" runat ="server" Text='<% # eval("equipo") %>'></asp:label>
            </ItemTemplate>     
            </asp:TemplateField>    
            
            <asp:TemplateField HeaderText='res_etiquetas_alq,tarifa_catalogo'>  
            <ItemTemplate >
            <asp:label ID="lbl_tarifaCatalogo" runat ="server"  Text='<% # eval("catalogo") %>'></asp:label>
            </ItemTemplate>     
            </asp:TemplateField> 
            <asp:TemplateField HeaderText='res_metadata,gen_localizacion_itemdocumento_cantidad'> 
            <ItemTemplate >
            <asp:label ID="lbl_cantidad" runat ="server"  Text='<% # eval("cantidad") %>' ></asp:label>
            </ItemTemplate>     
            </asp:TemplateField>  
             
            <asp:TemplateField HeaderText='res_metadata,gen_impuesto_impuesto_codigo'> <ItemTemplate >
            <asp:label ID="lbl_codigos" runat ="server" Text='<% # eval("codigo") %>' ></asp:label>
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

</td></tr>


</table>
</td> </tr>
<tr><td></td><td>
<bti:BotonImagen ID="bti_aceptar" runat="server" ValidationGroup="pro" CausesValidation="true"   ImageUrl= "../../images/botones/aceptar.png"  />
</td></tr>

         </table>

</asp:Content>

