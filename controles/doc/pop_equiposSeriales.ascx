<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_equiposSeriales.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_equiposSeriales" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="act" %>
<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="textoAvanzado" TagPrefix="uc3" %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register assembly="controles" namespace="controles" tagprefix="bti" %>
<%@ Register src="~/controles/general/busquedaAvanzadaMultiple.ascx" tagname="busquedaAvanzadaMultiple" tagprefix="uc3" %>

<asp:Panel ID="pnl_filtros" runat ="server" GroupingText="">
<table>


<tr>
<td class='td_lblFormulario'>
</td>
<td class='td_controlesFormulario'>
<asp:Label ID='lbl_modelo' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>

<tr>

<td class='td_lblFormulario'>
<asp:Label ID='lbl_id_tercero_cliente' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_tercero_cliente' runat='server' a_str_tabla='ter_tercero'
a_bln_obligatorio='True' a_str_grupoValidacion='form' a_bol_postBack="true" />
</td>
</tr>

<tr>

<td class='td_lblFormulario'>
<asp:Label ID='lbl_sucursal' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_sucursal' runat='server' a_str_tabla='ter_sucursal'
 a_str_grupoValidacion='form' a_bol_postBack="true" />
</td>

</tr>



<tr>

<td class="td_lblFormulario">
<asp:Label ID="lbl_id_equipo" runat="server" CssClass="lbl"></asp:Label>
</td>
<td class="td_controlesFormulario">

<uc3:busquedaAvanzadaMultiple  ID="bus_equipo" runat="server" 
a_bln_mostrarNuevoConDrop="true" a_bln_obligatorio='false' a_str_grupoValidacion="form"
a_bol_postBack="True" a_str_campo="equipo_serial,equipo_codigo,equipo" 
a_str_tabla="equ_equipo" />

</td>
<td>
</td>
</tr>

</table>

 <asp:GridView ID="grv_programacion" runat="server" CssClass="gri_check" AutoGenerateColumns="False">
        <Columns>
                <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                   <HeaderTemplate>
                        <asp:CheckBox ID="chb_habilitarT" runat="server" Visible='true' />
                    </HeaderTemplate>
                     <ItemTemplate>
                         <asp:CheckBox ID="chb_habilitar" runat="server" />
                        <asp:Label ID="lblId" runat="server" Visible="false" Text='<%# eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                               
                 <asp:TemplateField HeaderText="<%$ Resources:res_campoAyuda,lic_licencia_serial %>">
                        <ItemTemplate>
                         <asp:TextBox ID='txt_serial' runat='server'    Text='<%# eval("equ_equipo_equipo_serial") %>'  CssClass='txt_numeroGrilla txt_tamanio' ></asp:TextBox>
                         </ItemTemplate>
                    </asp:TemplateField>
                    
                    
                      <asp:TemplateField HeaderText="<%$ Resources:res_metadata,equ_ciclohorometro_id_equipo %>">
                        <ItemTemplate>
                           <asp:Label ID="lbl_id_equipo" runat="server" Text='<%# eval("equ_equipo_equipo") %>' CssClass="lbl"></asp:Label>
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
<br />
<bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg" ValidationGroup = "form" />
<bti:BotonImagen ID="btnEliminar" runat="server" ImageUrl="../../images/botones/quitar.gif"/>

<br />
<asp:Label ID="lbl_mensaje" runat="server" CssClass='lbl_mensaje'></asp:Label>
</asp:Panel>

