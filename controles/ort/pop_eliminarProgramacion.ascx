<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_eliminarProgramacion.ascx.vb" Inherits="website.samm_componentes.controles_ort_pop_eliminarProgramacion" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="uc2" %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
    
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>

<asp:Panel ID="pnl_filtros" runat ="server" GroupingText="">
<table>

<tr>
<td >
<asp:Label ID='lbl_tecnico' runat='server' CssClass='lbl'></asp:Label></td>
<td >
<uc2:busquedaAvanzadaMultiple ID='bus_tecnico' runat='server' a_str_tabla="seg_usuario" />
</td>

</tr>

<tr>
        <td>
            <asp:Label cssclass="lbl" ID="Label1" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaInicial %>"></asp:Label></td>
        <td>
        
            <uc1:fechaAvanzada ID="fecFechaIni" runat="server" a_str_prefijo="ff" 
                a_bln_obligatorio="true" a_str_grupoValidacion="grv_variosDias" />
        </td>
        <td>
            <asp:Label cssclass="lbl" ID="Label2" runat="server" Text="<%$Resources:res_etiquetas_ort,fechaFinal %>"></asp:Label></td>
        
        <td>
            <uc1:fechaAvanzada ID="fecFechaFin" runat="server" a_str_prefijo="ff" 
                a_bln_obligatorio="true" a_str_grupoValidacion="grv_variosDias" />
        </td>
    </tr>
    

    
  
    
        <tr>
        <td>
        </td>
        <td colspan="3">
            <bti:botonimagen id="imbAceptar" runat="server" cssclass="imb" 
                imageurl="../../images/botones/aceptar.png" ValidationGroup="grv_variosDias"></bti:botonimagen>
        </td>
    </tr>
</table>

</asp:Panel>


   <asp:Panel ID="PanelEliminar" runat="server" GroupingText="">
      
   
 <table>
 <tr>
   
 <td colspan="2">   
    <div id="contenido_grilla" runat="server" >
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
                <asp:TemplateField HeaderText="Reporte">
                    <ItemTemplate>
                        <asp:Label ID="lbl_reporte" runat="server" Text='<%# eval("programacion") %>' CssClass="lbl"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                     <asp:TemplateField HeaderText="Fecha Inicio">
                    <ItemTemplate>
                        <asp:Label ID="lbl_fecha_inicio" runat="server" Text='<%# eval("desde_fh") %>' CssClass="lbl"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Fecha Fin">
                    <ItemTemplate>
                        <asp:Label ID="lbl_fecha_fin" runat="server" Text='<%# eval("hasta_fh") %>' CssClass="lbl"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                   <asp:TemplateField HeaderText="Usuario">
                    <ItemTemplate>
                        <asp:Label ID="lbl_usuario" runat="server" Text='<%# eval("seg_usuario_nombre") %>' CssClass="lbl"></asp:Label>
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
    </div >
    
    </td>
    </tr>
    
         
     <tr>
      <td>
            <asp:Label cssclass="lbl" ID="lbl_estado" runat="server" ></asp:Label></td>
     
        <td >
            <asp:RadioButtonList ID="rblTipo" runat="server"  RepeatColumns="2" AutoPostBack= "true" OnSelectedIndexChanged="rblTipo_SelectedIndexChanged">
                <asp:ListItem Value="cerrado" Text="<%$Resources:res_controles,cancelado %>"></asp:ListItem>
                <asp:ListItem  Value="eliminar" Text="<%$Resources:res_controles,eliminar %>"  Selected="true"></asp:ListItem>
            </asp:RadioButtonList></td>
                
    </tr>
    
    <tr>
<td >
<asp:Label ID='lbl_tipoCancelacion' runat='server' CssClass='lbl'></asp:Label></td>
<td >
<bus:busquedaAvanzada ID='bus_cancelacion' runat='server' a_str_tabla="ort_motivoCancelacion" />
</td>

</tr>
    
    <tr>
           
            <td >
            <asp:Label ID='lbl_comentario' runat='server' CssClass='lbl'></asp:Label>
            </td>
            <td >
            <txt:textoAvanzado ID='txt_comentario' runat='server' CssClass="txt_multilinea" ContenidoEnPOP="true"   a_int_maxLength = "70"  a_bln_obligatorio='false'>
            </txt:textoAvanzado>
            </td>
            
            </tr>
            
            
        <tr>
        <td>
        </td>
        <td colspan="3">
            <bti:botonimagen id="btn_eliminar" runat="server" cssclass="imb" 
                imageurl="../../images/botones/aceptar.png" ValidationGroup="grv_variosDias"></bti:botonimagen>
        </td>
    </tr>
 </table>
   </asp:Panel>
       