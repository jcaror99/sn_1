<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_historicoEstatus.ascx.vb" Inherits="website.samm_componentes.controles_dis_pop_historicoEstatus" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='texa' %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="act" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>

<asp:Panel ID="Pabnel1" runat="server" CssClass="pnl">
<table>
<tr>
<td>
<asp:GridView ID="grd_historico" runat="server" AutoGenerateColumns="False">
    
        <Columns >
                <asp:TemplateField >
                    <HeaderTemplate>
                        <asp:Label ID="lbl_estado" runat="server" Text="Estado"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate >      
                         
                        <table>
                        <tr>
                        <td>
                        <asp:Label ID="lbl_id" runat="server" Text='<%# eval("id")%>' Visible ="false" ></asp:Label>
                        <asp:Label ID="lbl_estado" runat="server" Text='<%# eval("dis_estadoEvento_estadoEvento")%>' CssClass="lbl"  ></asp:Label>
                        </td>
                        </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
                       <asp:TemplateField>
                      <HeaderTemplate >
                       <HeaderTemplate>
                        <asp:Label ID="lbl_observaciones" runat="server" Text="Observaciones"></asp:Label>
                    </HeaderTemplate>
                      </HeaderTemplate>
                <ItemTemplate>
                <asp:TextBox  ID= "txt_obsevaciones" runat="server" CssClass='txt' Text ='<%# eval("observaciones")%>' ></asp:TextBox>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lbl_fechaEstado" runat="server" Text="Fecha"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate >
                        <table>
                        <tr>
                        <td>
                        <uc2:fechaAvanzada ID='fec_fechaStatusEvento' runat='server' a_str_prefijo='fh' FechaSeleccionada='<%# eval("fechaHoraRegistro_fh")%>'  a_bln_obligatorio='true' a_str_grupoValidacion='popHistorico'></uc2:fechaAvanzada>
                        </td>
                        </tr>
                        </table>
                   </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="afectacliente" >
                <ItemTemplate >
                <asp:CheckBox ID="chk_afectaCliente" runat="server" CausesValidation="false"  Checked='<%#eval("afectaCliente")%>'   />
                </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lbl_fechaFin" runat="server" Text="Sistema"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate >
                        <table>
                        <tr>
                        <td>
                        <bus:busquedaAvanzada ID="bus_sistema" runat ="server" a_str_tabla ="cat_sistema" ValorSeleccionado='<%#eval("id_sistema")%>'  />
                        </td>
                        </tr>
                        </table>
                   </ItemTemplate>
                </asp:TemplateField>
          <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lbl_acciones" runat="server" Text="Acciones"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate >
                        <asp:ImageButton ID="btn_cotizacionAprobada" runat="server"  CommandName="Eliminar"  CommandArgument='<%# eval("id") %>' ImageUrl="../../images/iconos/eliminar.gif" CausesValidation="False" />
                    </ItemTemplate>
                </asp:TemplateField>
               </Columns>
    <RowStyle CssClass="gri_item" />
   <SelectedRowStyle CssClass="gri_itemSeleccionado" />
   <PagerStyle CssClass="gri_paginacion" />
   <HeaderStyle CssClass="gri_titulo" />
    <AlternatingRowStyle CssClass="gri_itemAlterno" />
    </asp:GridView>
</td>
</tr>
</table>
<table>
<tr><td>
<asp:Label ID="lbl_mensaje" runat="server" CssClass='lbl_mensaje' ></asp:Label>
</td></tr>
<tr>
<td align="center" colspan="3">
<cc1:BotonImagen ID="bti_Aceptar" runat="server" ImageUrl="~/images/botones/aceptar.png"
ValidationGroup="popHistorico"/>
</td>
<td>
</td>
</tr>
 </table>   
</asp:Panel>