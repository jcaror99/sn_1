<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_ayuda.ascx.vb"
Inherits="website.samm_componentes.controles_pop_ayuda" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
       <asp:Panel ID="PanelBuscar" runat="server" GroupingText="">
         <table>
    
         <tr>
            <td>
                <asp:Label ID="lbl_notas" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,gen_config_descripcion%>'></asp:Label>
            </td>
            <td>
                <table>
                    <tr>
                        <td>
                            <asp:TextBox ID="txt_descripcion" runat="server" CssClass="txt_multilinea" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_descripcion" runat="server" CssClass="lbl_mensaje"
                                ForeColor="" SetFocusOnError="True" ValidationGroup="motivo" ControlToValidate="txt_descripcion">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
            <tr>
        <td>
           <cc1:BotonImagen ID="btn_help"   runat="server" ImageUrl="../../images/botones/aceptar.jpg" />
        </td>
        </tr>
        
        </tr>
        
    </table>
       </asp:Panel>
       
          <asp:Panel ID="PanelSolicitud" runat="server" GroupingText="" Visible=false>
         <table>
         
         <tr>
            <td>
                <asp:Label ID="lbl_solicitud" runat="server" CssClass="lbl" Text='<%$Resources:res_metadata,gen_config_descripcion%>'></asp:Label>
            </td>
            <td>
                <table>
                    <tr>
                        <td>
                            <asp:TextBox ID="txt_solicitud" runat="server" CssClass="txt_multilinea" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_descripcion_solicitud" runat="server" CssClass="lbl_mensaje"
                                ForeColor="" SetFocusOnError="True" ValidationGroup="motivo" ControlToValidate="txt_solicitud">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
            <tr>
        <td>
           <cc1:BotonImagen ID="btn_guardar"   runat="server" ImageUrl="../../images/botones/aceptar.jpg" />
        </td>
        </tr>
        
        </tr>
           <tr>
            <td>
                <asp:Label ID="lbl_respuesta" runat="server" CssClass="lbl"  Visible="false"></asp:Label>
            </td>
            <td>
             <asp:HyperLink ID="hyp_link" runat="server" Visible="false" class="lnk" Target="_new" ></asp:HyperLink>
            
             </td>
            </tr>
         </table>
         </asp:Panel>


