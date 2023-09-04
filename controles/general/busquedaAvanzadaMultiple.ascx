<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="busquedaAvanzadaMultiple.ascx.vb"
Inherits="website.samm_controles.controles_general_busquedaAvanzadaMultiple" %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<asp:HiddenField ID="hdd_estadoPop" runat="server" Value="1"/>
<img ID="img_completoSincierre" runat="server" src="../../images/interfaz/spacer.gif"/>
<table>
<tr>
<td>
<asp:TextBox ID="txt_busqueda" runat="server" CssClass="txt" AutoPostBack="True"></asp:TextBox>
</td>
<td>
<asp:TextBox ID="txt_buscado" runat="server" CssClass="invisible"></asp:TextBox>
</td>
<td>
<bti:BotonImagen ID="bti_busqueda" runat="server" ImageUrl="../../images/botones/buscarBA.gif"
CausesValidation="false" />
</td>
<asp:RequiredFieldValidator ID="rfv_buscado" runat="server" ControlToValidate="txt_busqueda"
SetFocusOnError="True" CssClass="lbl_mensaje" ForeColor=''>*</asp:RequiredFieldValidator>
</tr>
</table>
<div id="divModal_bus" class="modalBackground_bus" runat="server" style="display:none; overflow:visible; width:100%; height:100%;">
</div>
<table id="tbl_popup" runat="server" width="49%" border="0" cellpadding="0" cellspacing="0"
class="tbl_popup_bus" style="display:none;" visible="false">
<tr id="tr_barratitulo" runat="server" class="tr_tituloPop">
<td width="99%">
</td>
<td width="1%" style="text-align:right ">
<bti:BotonImagen ID="bti_cerrar" runat="server" ImageUrl="../../images/botones/cerrar_pop.jpg"
CausesValidation="false" />
</td>
</tr>
<tr>
<td width="1%" valign="top" bgcolor="#E7EEF5">
<asp:Image ID="image" runat="server" ImageUrl="~/images/interfaz/spacer.gif" />
</td>
<td width="99%" valign="top" bgcolor="#E7EEF5">
<asp:Panel ID="pnl_control" runat="server" Height="100%" Width="100%" BackColor="white">
<table>
<tr>
<td colspan="3">
<asp:UpdatePanel ID="UpdatePanel" runat="server">
<ContentTemplate>
<table cellpadding="0" cellspacing="0">
<tr>
<td>
<asp:Panel ID="pnl_buscar" runat="server" DefaultButton="imb_buscar">
<table>
<tr>
<td>
<asp:GridView ID="grd_buscar" runat="server" AutoGenerateColumns="False" CellPadding="3"
GridLines="None" ShowHeader="false">
<Columns>
<asp:TemplateField ItemStyle-HorizontalAlign="Right">
<ItemTemplate>
<asp:Label ID="lbl_buscar" runat="server" CssClass="lbl" Text='<%#Eval("label") %>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField ItemStyle-HorizontalAlign="Left">
<ItemTemplate>
<asp:TextBox ID="txt_buscar" runat="server" CssClass="txt_formulario" Text='<%#Eval("buscar") %>'
Visible='<%# IIF(Eval("id"), False, True) %>'></asp:TextBox>
<asp:DropDownList ID="drp_buscar" runat="server" CssClass="drp">
</asp:DropDownList>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField></asp:TemplateField>
</Columns>
</asp:GridView>
</td>
<td valign="top">
<bti:BotonImagen ID="imb_buscar" runat="server" CausesValidation="false" CssClass="imb"
ImageUrl="~/images/botones/buscarBA.gif" />
</td>
<td valign="top">
<bti:BotonImagen ID="imb_nuevo" runat="server" CausesValidation="false" CssClass="imb"
ImageUrl="~/images/botones/nuevoDrop.gif" />
</td>
<td >
<asp:Label ID="lbl_cantidad" runat="server" CssClass="lbl"></asp:Label>
</td>
<td >
<asp:Label ID="lbl_cantidad2" runat="server" CssClass="lbl"></asp:Label>
</td>
</tr>
</table>
</asp:Panel>
</td>
</tr>
<tr>
<td colspan="3">
<div class="div_grillaBusquedaAvanzada">
<asp:GridView ID="grd_busquedaMultiple" runat="server" AllowPaging="true" HorizontalAlign="Center"
PagerSettings-Mode="Numeric" PageSize="15" Width="600px">
<Columns>
<asp:TemplateField>
<ItemTemplate>
<asp:Label ID="lbl_id" runat="server" Text='<%# Eval("id") %>' Visible="false"></asp:Label>
<asp:Label ID="lbl_campo" runat="server" Visible="false"></asp:Label>
<asp:CheckBox ID="chb_seleccionar" runat="server" />
</ItemTemplate>
<HeaderTemplate>
<asp:CheckBox ID="chb_seleccionar" runat="server" />
</HeaderTemplate>
</asp:TemplateField>
</Columns>
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
</asp:GridView>
</div>
</td>
</tr>
</table>
</ContentTemplate>
</asp:UpdatePanel>
<table>
<tr>
<td colspan="3">
<bti:BotonImagen ID="imb_aceptar" runat="server" CssClass='imb' CausesValidation="false"
ImageUrl="~/images/botones/aceptar.png" />
<asp:Label ID="lbl_buscado" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
</table>
</td>
</tr>
</table>
</asp:Panel>
</td>
</tr>
</table>
      <table id="tbl_bocadilloBusquedaAvanzadaMultiple" runat="server" border="0" cellpadding="0" cellspacing="0" style="display:none;width:183px">
        <tr> 
          <td align="left" height="11" valign="top" width="6%"><img src="../../images/boc/bocadillo_r1_c1.png" height="16" width="27"></td>
          <td background="../../images/boc/bocadillo_r1_c3.png" height="11" width="90%"></td>
          <td align="right" height="11" valign="top" width="4%"><img src="../../images/boc/bocadillo_r1_c4.png" height="16" width="16"></td>
        </tr>
        <tr> 
          <td align="left" background="../../images/boc/bocadillo_r2_c1.png" valign="top" width="6%">&nbsp;</td>
          <td id="td_textoBocadillo" runat ="server" class="unnamed1" bgcolor="#ffffff" width="90%"></td>
          <td align="right" background="../../images/boc/bocadillo_r2_c4.png" valign="top"
              width="4%">&nbsp;</td>
        </tr>
        <tr> 
          <td align="left" valign="top" width="6%"><img src="../../images/boc/bocadillo_r4_c1.png" height="16" width="27"></td>
          <td background="../../images/boc/bocadillo_r4_c3.png" width="90%"></td>
          <td align="right" valign="top" width="4%"><img src="../../images/boc/bocadillo_r4_c4.png" height="16" width="16"></td>
        </tr>
     </table>
<asp:LinkButton ID="lnk_nuevoDrp" runat="server" CssClass='invisible' ></asp:LinkButton>
<asp:HiddenField id="hdd_id" runat="server"/>
<asp:HiddenField ID="hdd_tbl_posX" runat="server" />
<asp:HiddenField ID="hdd_tbl_posY" runat="server" />
<asp:HiddenField ID="hdd_tbl_visible" runat="server" />
<asp:HiddenField ID="hdd_valorSeleccionado_unresultado" runat="server" />