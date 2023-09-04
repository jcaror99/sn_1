<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_elementos.ascx.vb"
    Inherits="website.samm_componentes.controles_equ_inc_elementos" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table style="width: 850px;">
    <tr>
        <td>
            <asp:RadioButtonList ID="rbl_filtro" runat="server" CssClass="rbl" RepeatDirection="Horizontal" AutoPostBack="true">
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif" CausesValidation="false" OnClientClick="return false;" />
            <bti:BotonImagen ID="bti_imprimir" runat="server" ImageUrl="../../images/botones/print.gif" CausesValidation="false" OnClientClick="return false;" />
            <bti:BotonImagen ID="bti_crearOT" runat="server" ImageUrl="../../images/botones/crearOT.gif" CausesValidation="false" OnClientClick="return false;" />
            <bti:BotonImagen ID="bti_desafiliar" runat="server" ImageUrl="../../images/botones/quitar.gif" CausesValidation="false"  />
            <bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.png" />
        </td>
    </tr>
    <tr>
        <td colspan="3">
         <%--   <gri:grilla ID="gri_detalle" runat="server"  a_bln_paginacionNormal="true" />--%>
           <asp:GridView ID="gri_detalle" runat ="server"  AllowPaging="true" AutoGenerateColumns="false" ShowHeader='true' PageSize="30"   >
           <Columns >
           <asp:TemplateField Visible="false"    >
           <ItemTemplate>
           <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id") %>' Visible="false" > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField  HeaderText="res_metadata,equ_equipo_equipo" >
           <ItemTemplate>
           <asp:Label ID="lbl_equipo" runat="server" Text='<%# eval("equipo") %>'> </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="res_metadata,equ_equipo_equipo_serial" >
           <ItemTemplate>
           <asp:Label ID="lbl_serial" runat="server" Text='<%# bind("serial") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="res_metadata,ter_sucursal_sucursal">
           <ItemTemplate>
           <asp:Label ID="lbl_sucursal" runat="server" Text='<%# bind("sucursal") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="despacho">
           <ItemTemplate>
           <asp:Label ID="lbl_despacho" runat="server" Text='<%# bind("despacho") %>' > </asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="res_campogrilla,equ_detallealquiler_fechaultimafactura_fh">
           <ItemTemplate>
           <asp:Label ID="lbl_factura" runat="server" Text='<%# bind("factura") %>' > </asp:Label>
            </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="devolucion">
           <ItemTemplate>
           <asp:Label ID="lbl_devolucion" runat="server" Text='<%# bind("devolucion") %>' > </asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="res_campogrilla,equ_detallealquiler_estadoalquiler">
           <ItemTemplate>
           <asp:Label ID="lbl_estado" runat="server" Text='<%# bind("estado") %>' > </asp:Label>
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
