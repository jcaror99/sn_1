<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_configSubtipos.ascx.vb" Inherits="website.samm_componentes.controles_doc_pop_configSubtipos" %>
<%@ Register assembly="controles" namespace="controles" tagprefix="bti" %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>

<table>
                <tr>
                    <td class='td_lblFormulario'>
                    <asp:Label ID="lbl_tipoLectura" runat="server" CssClass='lbl' ></asp:Label>
                    </td>
                    
                    <td class='td_controlesFormulario'>
                    <bus:busquedaAvanzada ID="bus_subtipoLectura" runat="server" a_str_campo="subtipodocumento,id_tipodocumento" a_str_tabla="doc_subtipoDocumento"  a_bol_postBack="true" CssClass="_bus" />
                    
                    </td>
                    
                    </tr>
                    
            </table>

            
            
 <asp:GridView ID="grv_Subtipos" runat="server" CssClass="gri_check" AutoGenerateColumns="False">
        <Columns>
                <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                   <HeaderTemplate>
                        <asp:CheckBox ID="chb_habilitarT" runat="server" Visible='true' />
                    </HeaderTemplate>
                     <ItemTemplate>
                         <asp:CheckBox ID="chb_habilitar" runat="server" />
                        <asp:Label ID="lblId" runat="server" Visible="false" Text='<%#Eval("id_lectura") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Prefijo">
                    <ItemTemplate>
                        <asp:Label ID="lbl_prefijo" runat="server" Text='<%#Eval("prefijo") %>' CssClass="lbl"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Subtipo">
                    <ItemTemplate>
                        <asp:Label ID="lbl_SubtipoLectura" runat="server" Visible="false" Text='<%#Eval("id_subtipoDocumento") %>'></asp:Label>
                        <asp:Label ID="lblIdSub" runat="server" Visible="False" Text='<%#Eval("id_subtipoDocumento_origen") %>'></asp:Label>
                        <asp:Label ID="lbl_subtipo" runat="server" Text='<%#Eval("subtipoDocumento") %>' CssClass="lbl"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            <asp:TemplateField HeaderText="Origen Tipo Documento"> <%--desde recursos--%>
                    <ItemTemplate>
                        <asp:Label ID="lbl_tipoDocumento" runat="server" Text='<%#Eval("tipoDocumento") %>' CssClass="lbl"></asp:Label>
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
<bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg" />
<bti:BotonImagen ID="btnEliminar" runat="server" ImageUrl="../../images/botones/quitar.gif"/>

<br />
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
