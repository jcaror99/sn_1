<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_programacionTecnicos.ascx.vb"
    Inherits="website.samm_componentes.controles_doc_pop_programacionTecnicos" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="uc1" %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>

<table>
<tr align= 'left'>
<asp:Label ID='lbl_idUsuarioAsignado' runat= 'server' CssClass='lbl'></asp:Label>
</tr>
<tr align= 'left'> 
<td>
<asp:Label ID='lbl_tipoProgramacion' runat= 'server' CssClass='lbl' ></asp:Label>
</td>
<td>
<bus:busquedaAvanzada ID='bus_tipoProgramacion' runat= 'server' 
        a_str_tabla='ort_tipoProgramacion' a_bln_obligatorio='True' a_bol_postBack="True" 
/>
</td>
<td>
</td>
</tr>
</table>
<table>

    <tr>
        <td>
           <%-- <uc1:grilla ID="gri_tecnicos" runat="server" a_bln_noSeleccionable="true" a_bln_paginacionNormal="true" />--%>
            <asp:GridView ID="grd_tecnicos" runat ="server"  AllowPaging="true" AutoGenerateColumns="false" ShowHeader='true'   >
           <Columns >
           <asp:TemplateField Visible="false"    >
           <ItemTemplate>
           <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="false" > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText ='res_metadata,seg_usuario_nombre' >
           <ItemTemplate>
           <asp:Label ID="lbl_nombre" runat="server" Text='<%# bind("seg_usuario_nombre") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField  HeaderText ='res_metadata,ort_programacion_desde_fh'>
           <ItemTemplate>
           <asp:Label ID="lbl_desde" runat="server" Text='<%# bind("desde_fh") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField  HeaderText ='res_metadata,ort_programacion_duracion'>
           <ItemTemplate>
           <asp:Label ID="lbl_duracion" runat="server" Text='<%# bind("duracion") %>' > </asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText ='res_metadata,ort_tipoprogramacion_tipoprogramacion'>
           <ItemTemplate>
           <asp:Label ID="lbl_tipoProgramacion" runat="server" ToolTip ='<%# bind("ort_motivoCancelacion_motivoCancelacion") %>'  Text='<%# bind("ort_tipoProgramacion_tipoProgramacion") %>' > </asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
               <asp:TemplateField HeaderText ='res_metadata,ort_programacion_comentario'>
           <ItemTemplate>
           <asp:Label ID="lbl_comentario" runat="server"   Text='<%# bind("comentario") %>' ToolTip ='<%# bind("tooltip") %>' > </asp:Label>
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
    </tr>
</table>
