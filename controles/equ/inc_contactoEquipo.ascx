<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_contactoEquipo.ascx.vb"
    Inherits="website.samm_componentes.controles_inc_contactoEquipo" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>

&nbsp;<table>
<tr>
<td colspan="2">
&nbsp;&nbsp;
</td>
</tr>


<tr>


<td>
            <table>
                <tr>
                    <td class='td_lblFormulario'>
                    <asp:Label ID="lbl_tercero" runat="server" CssClass='lbl'></asp:Label>
                    </td>
                    
                    <td class='td_controlesFormulario'>
                    <bus:busquedaAvanzada ID="bus_tercero" runat="server" a_str_tabla="ter_tercero" a_bol_postBack="true" CssClass="_bus"   a_str_grupoValidacion="a"/>
                    
                    </td>
                    
                    </tr>
                    <tr>
                     <td class='td_lblFormulario'>
                    <asp:Label ID="lbl_sucursal" runat="server" CssClass='lbl'></asp:Label>
                    </td>
                    <td class='td_controlesFormulario'>
                    <bus:busquedaAvanzada ID="bus_sucursal" runat="server" a_str_tabla="ter_sucursal" a_bol_postBack="true"  CssClass="_bus"   a_str_grupoValidacion="a"/>
                    </td>
                    </tr>

            </table>
        </td>
</tr>


<tr>
<td>
<bti:BotonImagen ID="btnNuevo" runat="server" CausesValidation="False" ImageUrl="~/images/botones/agregar.gif"
CssClass='imb' />
<bti:BotonImagen ID="btn_editar" runat="server" ImageUrl="~/images/botones/editar.gif"
CausesValidation="false" CssClass='imb' />
<bti:BotonImagen ID="bti_actualizar" runat="server" CssClass="imb" ImageUrl="~/images/botones/actualizar.png" CausesValidation="false" />

</td>
</tr>


<tr>
<td>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</tr>
</td>
<tr>
<td>
<asp:GridView ID="grd_contactos_equipo" runat="server"  
                    AutoGenerateColumns="False" UseAccessibleHeader="False" BorderStyle="None" >
            
<Columns>
                        
<asp:TemplateField  >
<ItemTemplate>
 <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="false" > </asp:Label>
 <asp:Label ID="lbl_id_contacto" runat="server" Text='<%# eval("id_contacto") %>' Visible="false" > </asp:Label>
 
<asp:CheckBox ID="chk_actualizar" runat="server"  />

 </ItemTemplate>
</asp:TemplateField>
<asp:BoundField HeaderText="<%$ Resources:res_metadata,equ_equipo_nombrecontacto %>"
ItemStyle-HorizontalAlign="Center" DataField='ter_contacto_contacto' />
<asp:BoundField HeaderText="<%$ Resources:res_metadata,ter_contacto_telefono %>"
ItemStyle-HorizontalAlign="Center" DataField='ter_contacto_telefono' />
<asp:BoundField HeaderText="<%$ Resources:res_metadata,ter_contacto_fax %>"
ItemStyle-HorizontalAlign="Center" DataField='ter_contacto_Fax' />
<asp:BoundField HeaderText="<%$ Resources:res_metadata,ter_contacto_email %>"
ItemStyle-HorizontalAlign="Center" DataField='ter_contacto_Email' />
<asp:BoundField HeaderText="<%$ Resources:res_metadata,ter_sucursal_direccion %>"
ItemStyle-HorizontalAlign="Center" DataField='ter_contacto_Direccion' />
<%----%>


</Columns>
  <FooterStyle CssClass="gri_pie" />
                    <RowStyle CssClass="gri_item" />
                    <PagerStyle CssClass="gri_paginacion" />
                    <HeaderStyle CssClass="gri_titulo" />
                    <AlternatingRowStyle CssClass="gri_itemAlterno" />
                    <SelectedRowStyle CssClass="gri_itemSeleccionado" />
</asp:GridView>



</td>
</tr>

<tr id="tr_contacto" runat="server" visible=false>
<td>
<%--<gri:grilla ID="grd_contacto" runat="server" a_bln_paginacionNormal="true"/>--%>
<asp:GridView ID="grv_contacto" runat="server" AllowPaging="false" AutoGenerateColumns="false"  >
<Columns>
<asp:TemplateField>
<ItemTemplate>
<asp:CheckBox ID="chk_actualizar" runat="server"  />

<asp:Label ID="lbl_id" runat="server" Visible="false" Text='<%# bind("id") %>' ></asp:Label>
 <asp:Label ID="lbl_id_contacto" runat="server" Text='<%# eval("id_contacto") %>' Visible="false" > </asp:Label>

</ItemTemplate>
</asp:TemplateField>
<asp:BoundField HeaderText ="<%$ Resources:res_metadata,equ_equipo_nombrecontacto %>" DataField="contacto" />
<asp:BoundField HeaderText ="<%$ Resources:res_metadata,ter_contacto_telefono %>" DataField="telefonomovil" />
<asp:BoundField HeaderText="<%$ Resources:res_metadata,ter_contacto_fax %>"
ItemStyle-HorizontalAlign="Center" DataField='fax' />
<asp:BoundField HeaderText ="<%$ Resources:res_metadata,ter_contacto_email %>" ItemStyle-HorizontalAlign="Justify"  DataField="email" />
<asp:BoundField HeaderText ="<%$ Resources:res_metadata,ter_sucursal_direccion %>" DataField="direccion" />

</Columns>
 <FooterStyle CssClass="gri_pie" />
                    <RowStyle CssClass="gri_item" />
                    <PagerStyle CssClass="gri_paginacion" />
                    <HeaderStyle CssClass="gri_titulo" />
                    <AlternatingRowStyle CssClass="gri_itemAlterno" />
                    <SelectedRowStyle CssClass="gri_itemSeleccionado" />
</asp:GridView>
</td>
</tr>

<tr>

<td>

<bti:BotonImagen ID="btn_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.png"
CausesValidation="false" CssClass='imb' />
</td>
</tr>

</table>