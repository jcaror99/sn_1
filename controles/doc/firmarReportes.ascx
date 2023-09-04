<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="firmarReportes.ascx.vb" Inherits="website.samm_componentes.controles_doc_firmarReportes" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="bus" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<link rel="stylesheet" type="text/css" href="../../css/samm/firmarReportes.css" />
<table>
<tr>
<td>
    <asp:Literal ID="litScripts" runat="server"></asp:Literal>
<table>
<tr>
<td align='left'>
<bti:BotonImagen ID="bti_atras" runat="server" ImageUrl="../../images/botones/atras.png" />
<bti:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/actualizar.png" />
</td>
</tr>
<tr>
<td style="text-align :left" ><asp:Label ID="lbl_numeroREG" runat="server" CssClass ="lbl" ></asp:Label></td>
</tr>
<tr>
<td>
<asp:GridView ID="grd_reportes" runat="server" AllowPaging="False" Width="600px" AutoGenerateColumns="False">
 <Columns>
                                <asp:TemplateField ItemStyle-HorizontalAlign='Center'>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_id" runat="server" Text='<%# Eval("id") %>' Visible="false"></asp:Label><asp:Label
                                            ID="lbl_campo" runat="server" Visible="false"></asp:Label><asp:CheckBox ID="chb_seleccionar"
                                                runat="server" /></ItemTemplate>
                                    <HeaderTemplate>
                                        <asp:CheckBox ID="chb_seleccionar" runat="server" /></HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-HorizontalAlign='Left' HeaderText="<%$ Resources:res_campoGrilla,ort_reportetecnico_reportetecnico_codigo %>">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_doc" runat="server" Text='<%#Eval("reporteTecnico_codigo") %>' Visible="false"></asp:Label>
                                        <asp:HyperLink ID="hyp_reporte" CssClass='hyp' runat="server" Visible='true' Text='<%#Eval("reporteTecnico_codigo") %>'></asp:HyperLink>
                                    </ItemTemplate>
                                    
                                </asp:TemplateField>
                                <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="reporteTecnico" HeaderText="<%$ Resources:res_campoGrilla,equ_equipoatributo_id_reportetecnico %>"
                                    ReadOnly="True" SortExpression="reporteTecnico" />
                                 <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="fechaCreacion" HeaderText="<%$ Resources:res_campoGrilla,doc_documento_fecha_fh %>"
                                    ReadOnly="True" SortExpression="fechaCreacion" />
                                <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="trabajos" HeaderText="<%$ Resources:res_campoGrilla,ort_reportetecnico_trabajos %>"
                                    ReadOnly="True" SortExpression="trabajos" />
                                 <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="seg_usuario_nombre" HeaderText="<%$ Resources:res_campoGrilla,seg_cargo_estecnico %>"
                                    ReadOnly="True" SortExpression="seg_usuario_nombre" />
                                <%--<asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="estadoTipoDocumento"
                                    HeaderText="<%$ Resources:res_campoGrilla,doc_estadotipodocumento_estadotipodocumento %>"
                                    ReadOnly="True" SortExpression="estadoTipoDocumento" />
                                <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="zona" HeaderText="<%$ Resources:res_campoGrilla,gen_zona_zona %>"
                                    ReadOnly="True" SortExpression="zona" />
                                <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="tercero_cliente" HeaderText="<%$ Resources:res_campoGrilla,doc_documento_id_tercero_cliente %>"
                                    ReadOnly="True" SortExpression="tercero_cliente" />
                                <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="sucursal" HeaderText="<%$ Resources:res_campoGrilla,ter_sucursal_sucursal %>"
                                    ReadOnly="True" SortExpression="sucursal" />
                                <asp:BoundField ItemStyle-HorizontalAlign='Left' DataField="contrato" HeaderText="<%$ Resources:res_campoGrilla,cnt_contrato_contrato %>"
                                    ReadOnly="True" SortExpression="contrato" />--%>
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

      <tr id="tr_worpace" runat="server" visible="true">
        <td>
            <div id="workspace" class="pencil">
                                    <div style="background: #ffffff">
                                    <table >
                                     <tr >
                                                                         <td align="right">
                                                    <canvas id="draw-canvas" width="600" height="400" >
		 			                No tienes un buen navegador.
		 		                </canvas>
                                    </td>
                                    </tr>

                                            <tr  >
                                    <td colspan="3" align="center">
                                       <asp:Button ID="btn_limpiarfirma" CssClass='imb' runat="server" Text="Limpiar" OnClientClick="c.clearRect(0, 0, canvas.width, canvas.height);c.fillRect(0, 0, canvas.width, canvas.height);return false;" />
                                        <asp:ValidationSummary ID="vls_login" runat="server" ValidationGroup="login" CssClass="lbl_mensaje"
                                            ForeColor='' />
                                    </td>
                                </tr>
                              
                            </table>
                       
                    </div>
            
                </div>
             <input type="hidden" id="hdd_image" runat="server" />
        </td>
    </tr>

</table>


</td>
</tr>
<tr>
<table>
<tr>
<td colspan='4'>
<bti:BotonImagen ID="bti_aceptar" runat="server"   ImageUrl="../../images/botones/aceptar.jpg"
ValidationGroup='form' />
</td>
</tr>
<tr>
<td colspan='2'>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
</table>
</tr>
</table>
