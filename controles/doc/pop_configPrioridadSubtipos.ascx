<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_configPrioridadSubtipos.ascx.vb" Inherits="website.samm_componentes.controles_doc_pop_configPrioridadSubtipos" %>
<%@ Register assembly="controles" namespace="controles" tagprefix="bti" %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>


 <asp:GridView ID="grv_Subtipos" runat="server" CssClass="gri_check" AutoGenerateColumns="False">
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
                <asp:TemplateField HeaderText="Prioridad">
                    <ItemTemplate>
                        <asp:Label ID="lbl_prioridad" runat="server" Text='<%# eval("prioridadDocumento") %>' CssClass="lbl"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                   <asp:TemplateField HeaderText="Codigo">
                    <ItemTemplate>
                        <asp:Label ID="lbl_codigo" runat="server" Text='<%# eval("prioridadDocumento_codigo") %>' CssClass="lbl"></asp:Label>
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

<br />
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
