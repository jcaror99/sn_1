<%@ Control Language="VB" AutoEventWireup="false"  CodeBehind="pop_tarifa.ascx.vb" Inherits="website.samm_componentes.controles_alq_pop_tarifa" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc2" %>
<%@ Register Src="~/controles/cnt/inc_informacionEquipos.ascx" TagName="inc_informacionEquipos"
TagPrefix="uc3" %>
<%@ Register Src='~/controles/general/tabs.ascx' TagName='tabs' TagPrefix='tab' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register src="~/controles/general/informacion.ascx" tagname="informacion" tagprefix="uc4" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="uc1" %>

<table class="tbl_marcoFormulario" cellpadding="0" cellspacing="0" width="100%">
<tr><td>
<table>
<tr>
<td>
<asp:Label ID="lbl_tarifa" runat ="server" CssClass="lbl"></asp:Label>
    <uc1:busquedaAvanzadaMultiple  ID="bus_tarifa" runat="server" a_bln_obligatorio="false"  a_str_campo="codigoinventario,catalogo"
                            a_str_tabla="cat_catalogo"  a_bol_postBack ="true" />
   </td>
   <td>
<asp:Label ID="lbl_item" runat ="server" CssClass="lbl"></asp:Label>
    <uc1:busquedaAvanzadaMultiple  ID="bus_itemdocumento" runat="server" a_bln_obligatorio="false"  a_str_campo="itemdocumento,cat_catalogo_catalogo"
                            a_str_tabla="doc_itemDocumento"  a_bol_postBack ="true" />
   </td>
</tr>
</table>
</td></tr>
<tr><td><asp:GridView ID="grv_tarifa" runat="server" AutoGenerateColumns="false">
                            <EmptyDataTemplate>
                                        <asp:Label ID="lbl_grillaVacia" runat="server" CssClass='lbl_mensaje' Text='<%$ Resources:res_mensajes, grillaVacia %>'></asp:Label></EmptyDataTemplate>
      <Columns>
                    <asp:TemplateField HeaderText="res_etiquetas_alq,tarifa" ItemStyle-CssClass="columnasgrilla" >
                            <ItemTemplate>
                              <asp:HiddenField ID="hdd_id" runat ="server" value='<%# eval("id") %>' />
                                <asp:Label ID="lbl_tarifa" runat="server" Text='<%# eval("tarifa") %>'></asp:Label>
                                <asp:HiddenField ID="hdd_iditemdocumento" runat ="server" value='<%# eval("id_itemdocumento") %>' />
                                <asp:HiddenField ID="hdd_idtarifa" runat ="server" value='<%# eval("id_catalogo") %>' />
                                <asp:HiddenField ID="hdd_iddetalle" runat ="server" value='<%# eval("id_detallealquiler") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                           <asp:TemplateField HeaderText="res_etiquetas_alq,periodoalquiler" ItemStyle-CssClass="columnasgrilla" >
                            <ItemTemplate>
                              <asp:Label ID="lbl_periodoALQ" runat="server" Text='<%# eval("periodoalq") %>'  ></asp:Label> 
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="res_etiquetas_alq,valor" ItemStyle-CssClass="columnasgrilla" >
                            <ItemTemplate>
                                <asp:TextBox id="txt_valor" runat="server"  CssClass="txt_numero" Text='<%# formatCurrency( eval("valor"),2) %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="res_etiquetas_alq,descuento" ItemStyle-CssClass="columnasgrilla" >
                            <ItemTemplate>
                              <asp:TextBox  ID="txt_descuento" runat="server" CssClass="txt_numero"  Text='<%# eval("descuento") %>' ></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="res_metadata,doc_itemdocumento_porciva" ItemStyle-CssClass="columnasgrilla" >
                            <ItemTemplate>
                              <asp:TextBox  ID="txt_iva" runat="server" CssClass="txt_numero" Text='<%# eval("iva") %>' Enabled ="false"  ></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                            <asp:TemplateField HeaderText="res_etiquetas_alq,tipotarifa" ItemStyle-CssClass="columnasgrilla"  >
                            <ItemTemplate>
                                <asp:DropDownList  ID="drp_tipotarifa" runat="server"  CssClass ="drp"   ></asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="res_etiquetas_alq,horasincluida" ItemStyle-CssClass="columnasgrilla" >
                            <ItemTemplate>
                                <asp:TextBox  ID="txt_horasincluidas" CssClass="txt_numero" runat="server" Text='<%# eval("horasincluidas") %>' ></asp:TextBox> 
                            </ItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="res_etiquetas_alq,cantidadincluida" ItemStyle-CssClass="columnasgrilla" >
                            <ItemTemplate>
                                <asp:TextBox  ID="txt_cantidadincluidas" CssClass="txt_numero" runat="server" Text='<%# eval("cantidadincluida") %>' ></asp:TextBox> 
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                           <ItemTemplate>
                              <asp:ImageButton ID="imb_eliminar" runat ="server" Visible="true" ImageUrl ="../../images/iconos/eliminar.gif"  CommandArgument='<%# eval("id")%>' CommandName='eliminarTarifa' />
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

<tr>
<td>
<bti:BotonImagen  ID="btn_guardartarifa" runat="server" onclientclick="return confirm('¿Desea guardar la tarifa?')" ImageUrl= "../../images/botones/aceptar.png"  />
</td>

</tr>
<tr>
<td>
<asp:Label ID="lbl_mensaje" runat="server" Visible="false" CssClass ="lbl_mensaje" ></asp:Label>
</td>

</tr>

 </table>