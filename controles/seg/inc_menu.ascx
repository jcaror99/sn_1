<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_menu.ascx.vb" Inherits="website.samm_componentes.controles_seg_inc_menu" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>

<asp:Panel ID='pan_formulario' runat='server' >
<table class='tbl_formulario' border='0' cellpadding='0' cellspacing='0'>
<tr>
<td align='right'>
</td>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_esMvc' runat='server' CssClass='lblobligatorio'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:RadioButtonList ID='rbl_esMvc' runat='server' CssClass='rbl' RepeatDirection='Horizontal'
RepeatLayout='Flow' AutoPostBack="true" >
<asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
<asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
</asp:RadioButtonList>
</td>

</tr>

<tr>
<td>
<asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='form' CssClass='lbl_mensaje'
ForeColor='' />
</td>

</tr>
</table>
</asp:Panel>

<asp:TreeView ID="trv_funcionalidad" runat="server" ShowCheckBoxes="All" CssClass='trv'
    LineImagesFolder="../../images/treelineimages" ShowLines="True" SkipLinkText="a" EnableClientScript="false">
    <SelectedNodeStyle CssClass="tre_seleccionado" />
    <RootNodeStyle CssClass="tre_raiz" />
    <NodeStyle CssClass="tre_nodo" />
</asp:TreeView>
<bti:BotonImagen ID="btn_aceptar" runat="server" CssClass='imb' ImageUrl="~/images/botones/aceptar.png"/>
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>

