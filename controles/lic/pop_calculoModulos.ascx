<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_calculoModulos.ascx.vb" Inherits="website.samm_componentes.controles_gui_pop_calculoModulos" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<p>
            <asp:Label ID="Label1" runat="server" CssClass="lbl_titulo1"></asp:Label>
</p>
<table cellpadding="0" cellspacing="0" class="tbl_marcoFormulario">
    
    <tr runat="server" class="lbl_titulo1">
        <td colspan="2">

<asp:CheckBoxList ID="chek_modulos" runat="server" CssClass="chk" >
</asp:CheckBoxList>
        </td>
    </tr>
    <tr id="trCargar" runat="server">
        <td>
        
              

        </td>
        <td style="padding:2px;">
            <cc1:BotonImagen ID="ibtAceptar" runat="server" ImageUrl="../../images/botones/aceptar.png">
            </cc1:BotonImagen>
            <asp:Label ID="lbl_valor" runat="server" Text="" CssClass="lbl"></asp:Label>
            <br />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
    
    
     <tr>
        <td colspan="2">
           <%-- <asp:GridView ID="grvModulos" runat="server" AutoGenerateColumns="False" 
                EmptyDataText="<%$Resources:res_mensajes,grillaVacia %>" Width="171px">
                <FooterStyle CssClass="gri_pie" />
                <RowStyle CssClass="gri_item" />
                <PagerStyle CssClass="gri_paginacion" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                <Columns>
                   
                   
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                           
                                <asp:CheckBoxList ID="chk_modulos" runat="server" ></asp:CheckBoxList>
                                
                        </ItemTemplate>
                    </asp:TemplateField>
                  
                </Columns>
            </asp:GridView>--%>
        </td>
    </tr>
    
    
    
    </table>

