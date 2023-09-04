<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_agregarItemsdeDocumento.ascx.vb"
Inherits="website.samm_componentes.controles_doc_pop_agregarItemsdeDocumento" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<div id="div_trvDocumentos" runat="server" style="background-color: White;">
<table>
<tr>
<td align="left">
<act:togglebuttonextender id='ToggleButtonExtender1' runat='server' checkedimagealternatetext='<%$ Resources:res_controles,ayuda_especificano %>'
checkedimageurl='../../images/iconos/ojo1.png' imageheight='26' imagewidth='30'
targetcontrolid='chb_ayudaCampo' uncheckedimagealternatetext='<%$ Resources:res_controles,ayuda_especifica %>'
uncheckedimageurl='../../images/iconos/ojo2.png'></act:togglebuttonextender>
<asp:CheckBox ID='chb_ayudaCampo' runat='server' CssClass='chb' AutoPostBack="true" />
<asp:Label ID="lbl_explica" runat="server"></asp:Label>
</td>
</tr>
&nbsp
<tr>
<td colspan="2">
<asp:TreeView ID="trv_documentos" runat="server" CssClass='trv' LineImagesFolder="../../images/treelineimages"
ShowLines="True" SkipLinkText="a" ShowCheckBoxes="all" EnableClientScript="True">
<SelectedNodeStyle CssClass="tre_seleccionado" />
<RootNodeStyle CssClass="tre_raiz" />
<NodeStyle CssClass="tre_nodo" />
</asp:TreeView>
</td>
</tr>
<tr>
<td valign="bottom">
<bti:BotonImagen ID="bti_agregarDocumento" runat="server" ImageUrl="~/images/botones/aceptar.jpg"
CausesValidation="false" />
</td>
</tr>
</table>
<table id="tbl_mostrarAyuda" runat="server" border="0" cellpadding="0" cellspacing="0" style='display:none;width:400px'>
<tr> 
<td align="left" height="11" valign="top" width="6%"><img src="../../images/boc/bocadillo_r1_c1.png" height="16" width="27"></td>
<td background="../../images/boc/bocadillo_r1_c3.png" height="11" width="90%"></td>
<td align="right" height="11" valign="top" width="4%"><img src="../../images/boc/bocadillo_r1_c4.png" height="16" width="16"></td>
</tr>
<tr> 
<td align="left" background="../../images/boc/bocadillo_r2_c1.png" valign="top" width="6%">&nbsp;</td>
<td id="td_mostrarAyuda" runat ="server"  bgcolor="#ffffff" width="90%"></td>
<td align="right" background="../../images/boc/bocadillo_r2_c4.png" valign="top"
width="4%">&nbsp;</td>
</tr>
<tr> 
<td align="left" valign="top" width="6%"><img src="../../images/boc/bocadillo_r4_c1.png" height="16" width="27"></td>
<td background="../../images/boc/bocadillo_r4_c3.png" width="90%"></td>
<td align="right" valign="top" width="4%"><img src="../../images/boc/bocadillo_r4_c4.png" height="16" width="16"></td>
</tr>
</table>
</div>
