<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="cargueArchivos.ascx.vb"
Inherits="website.samm_controles.controles_generales_cargueArchivos" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<table class="unnamed1" cellspacing="0" cellpadding="0" width="500px" border="0">
<tr>
<td width="1%">
<img name="pop_up_r1_c1" src="../../images/popup/pop_up_r1_c1.jpg" width="11" height="34"
border="0">
</td>
<td class="tituloPaginaazul" width="98%" background="../../images/popup/pop_up_r1_c4.jpg">
<asp:Label ID="lbl_titulo" runat="server" CssClass="lbl_titulo"></asp:Label>
</td>
<td width="1%">
<img name="pop_up_r1_c3" src="../../images/popup/pop_up_r1_c3.jpg" width="11" height="34"
border="0">
</td>
</tr>
</table>
<table bordercolor="#ffffff" height="100px" cellspacing="0" cellpadding="0" width="500px"
border="2">
<tr>
<td class="usuario" valign="top" align="middle" background="../../images/importar/fondo-sup.jpg"
height="959">
<table height="110" cellspacing="0" cellpadding="10" width="100%" border="0">
<tr>
<td class="tituloPaginaazulCopy" valign="top" background="../../images/importar/banner_samm_actualiza.jpg">
<table height="60" cellspacing="0" cellpadding="0" width="250" border="0">
<tr>
<td class="tituloPaginaazulCopy" height="76">
</td>
</tr>
</table>
</td>
</tr>
</table>
<table cellspacing="2" cellpadding="0" width="100%" border="0">
<tbody>
<tr>
<td valign="top" height="21">
<table cellspacing="3" cellpadding="7" width="100%" bgcolor="#d2e3f0" border="0">
<tbody>
<tr>
<td class="tituloPagina" valign="center" background="../../images/importar/fondo_bthome.jpg"
colspan="2">
<table cellspacing="0" cellpadding="0" width="100%" border="0">
<tbody>
<tr>
<td class="tituloPaginaazul" width="2%">
1.
</td>
<td colspan="4" width="98%" align="left">
<asp:Label ID="label11" runat="server" CssClass="tituloPagina" Text='<%$Resources:res_etiquetas,descargueSammWeb  %>'></asp:Label>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td class="comun" valign="center" bgcolor="#d2e3f0" height="37" style="width: 38%">
<asp:Label ID="Label1" runat="server" CssClass="lbl_titulo2" Text="<%$ Resources:res_etiquetas, descarguePlantilla %>"></asp:Label>
</td>
<td class="comun" valign="top" align="center" width="35%" height="37">
<table cellspacing="0" cellpadding="2" width="40" bgcolor="#d2e3f0" border="0">
<tr>
<td style="white-space: nowrap;">
<asp:LinkButton ID="lnkDescargar" runat="server"></asp:LinkButton><br />
<asp:LinkButton ID="lnkDescargarIds" runat="server"></asp:LinkButton>
&nbsp;&nbsp;&nbsp;
</td>
<td>
<asp:HyperLink ID="hprAyuda" runat="server" ImageUrl="~/images/botones/doc_relacionGasto.gif" Target="_blank" NavigateUrl="../../forms/general/ayuda.aspx?frm=importar">$Ayuda</asp:HyperLink>
</td>
</tr>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td valign="top">
<table cellspacing="3" cellpadding="7" width="100%" bgcolor="#d2e3f0" border="0">
<tbody>
<tr>
<td class="tituloPagina" valign="top" background="../../images/importar/fondo_bthome.jpg">
<table height="8" cellspacing="0" cellpadding="0" width="100%" border="0">
<tbody>
<tr>
<td class="tituloPaginaazul" width="5%" height="20">
2.
</td>
<td class="tituloPagina" height="20">
<asp:Label ID="label12" runat="server" Text='<%$Resources:res_etiquetas,seleccioneSuRed %>'></asp:Label>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td class="comun" valign="top" bgcolor="#d2e3f0" height="18">
<asp:Label ID="lbl_seleccioneArchivo" runat="server" CssClass="lbl_titulo2" Text="<%$ Resources:res_etiquetas, seleccioneArchivo %>"></asp:Label>
<br />
<asp:Label ID="lbl_tamañoArchivo" runat="server" CssClass="lbl_titulo2"></asp:Label>
</td>
</tr>
<tr>
<td class="comun" valign="top" bgcolor="#d2e3f0">
<table cellspacing="0" cellpadding="0" width="100%" border="0">
<tbody>
<tr>
<td valign="top" style="text-align: left">
<asp:Label ID="lblArchivo" runat="server" Text=""></asp:Label>
</td> <td>
<asp:FileUpload ID="ful_archivo" runat="server" CssClass="ful" />
<br />
</td>
</tr>
<tr>
<td valign="top" align="left" width="100%">
<asp:Label ID="lblNombreHoja" runat="server" Text=""></asp:Label>
</td>
<td>
<asp:TextBox ID="txtNombreHoja" runat="server" CssClass="txt"></asp:TextBox>
<br />
</td>

</tr>
<tr>
<td></td>
<td>
<cc1:BotonImagen ID="imbAceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
CausesValidation="false" />
</td>
</tr>
<tr>
<td class="comun" valign="top" colspan="2" height="26">
<asp:CheckBox ID="chb_editarExistencia" runat="server"  visible="false" CssClass="chb lblArchivo" Text='<%$Resources:res_etiquetas,editarExistencia %>' />
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>
<table cellspacing="3" cellpadding="7" width="100%" bgcolor="#d2e3f0" border="0">
<tbody>
<tr>
<td class="tituloPagina" valign="top" background="../../images/importar/fondo_bthome.jpg">
<table height="8" cellspacing="0" cellpadding="0" width="100%" border="0">
<tbody>
<tr>
<td class="tituloPaginaazul" width="5%" height="20">
3.
</td>
<td class="tituloPagina" height="20">
<asp:Label ID="label3" runat="server" Text='<%$Resources:res_etiquetas,elegirColumnas %>'></asp:Label>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td class="comun" valign="top" bgcolor="#d2e3f0" height="18">
<asp:Label ID="lbl_asignarcolumnas" runat="server" CssClass="lbl_titulo2" Text="<%$ Resources:res_etiquetas, asigneColumnas %>"></asp:Label>
</td>
</tr>
<tr>
<td class="comun" valign="top" bgcolor="#d2e3f0" height="18">
<table cellspacing="0" cellpadding="0" width="100%" border="0">
<tr>
<td>
<asp:GridView ID="gvColumnas" runat="server" AutoGenerateColumns="False">
<Columns>
<asp:TemplateField HeaderText="<%$ Resources:res_nombreColumna, columnaBD %>">
<ItemTemplate>
<asp:Label ID="lbl_col" runat="server" Text='<%#eval("columna") %>' CssClass='lbl_importacion' visible='<%# IIF(eval("requerido"),false,true) %>'></asp:Label>
<asp:Label ID="lbl_col1" runat="server" Text='<%#eval("columna") %>' CssClass='lbl_importacionobligatorio' visible='<%# IIF(eval("requerido"),true,false) %>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="<%$ Resources:res_nombreColumna, columnaBD %>">
<ItemTemplate>
<asp:Label ID="lbl_id" runat="server" Text='<%#eval("columna") %>'></asp:Label>
<asp:Label ID="lbl_esPadre" runat="server" Text='<%# eval("esTablaPadre") %>'></asp:Label>
</ItemTemplate>
<ItemStyle CssClass="invisible" />
<HeaderStyle CssClass="invisible" />
</asp:TemplateField>
<asp:TemplateField HeaderText="<%$ Resources:res_nombreColumna, columnaArchivo %>">
<ItemTemplate>
<asp:DropDownList ID="drpColumna" runat="server" CssClass="drp">
</asp:DropDownList>
<asp:RequiredFieldValidator ID="rfiColumna" runat="server" ErrorMessage="*" 
ControlToValidate="drpColumna" ValidationGroup="compartir" Enabled='<%# eval("requerido") %>'></asp:RequiredFieldValidator>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="<%$ Resources:res_nombreColumna, columnaForanea %>">
<ItemTemplate>
<asp:DropDownList ID="drpForanea" runat="server" CssClass="drp">
</asp:DropDownList>
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="defecto" HeaderText="<%$ Resources:res_nombreColumna, valorDefecto %>" />
<asp:BoundField DataField="tipo" />
<asp:BoundField DataField="tamano" />
</Columns>
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
</asp:GridView>
</td>
</tr>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td valign="top">
<table cellspacing="3" cellpadding="7" width="100%" bgcolor="#d2e3f0" border="0">
<tbody>
<tr>
<td class="tituloPagina" valign="top" background="../../images/importar/fondo_bthome.jpg">
<table cellspacing="0" cellpadding="0" width="100%" border="0">
<tbody>
<tr>
<td class="tituloPagina" width="2%">
<span class="tituloPaginaazul">4.</span>
</td>
<td width="98%">
<div class="tituloPagina" align="left">
<asp:Label ID="label13" runat="server" Text='<%$Resources:res_etiquetas,seleccioneOpcion  %>'></asp:Label>
</div>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td class="comun" valign="top" bgcolor="#d2e3f0" height="20">
<asp:Label ID="lbl_opciones" runat="server" Text='<%$Resources:res_etiquetas,opcionesImportacion %>'></asp:Label>
</td>
</tr>
<tr>
<td valign="top" height="49">
<table class="comunblanco" cellspacing="0" cellpadding="0" width="100%" border="0">
<tr>
<td>
<asp:RadioButtonList ID="rblEstrategiaActualziacion" runat="server" CssClass="rbl"
RepeatLayout="Flow">
<asp:ListItem Text="<%$ Resources:res_etiquetas, actualizacionCreacion %>" Value="1"
Selected="True"></asp:ListItem>
<asp:ListItem Text="<%$ Resources:res_etiquetas, creacion %>" Value="2"></asp:ListItem>
<asp:ListItem Text="<%$ Resources:res_etiquetas, actualizacion %>" Value="3"></asp:ListItem>
</asp:RadioButtonList>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="comun" valign="top" colspan="2" height="26">
<asp:CheckBox ID="chb_codigoUnico" runat="server" CssClass="chb" Text='<%$Resources:res_etiquetas,codigoUnico %>' />
</td>
</tr>

</tbody>
</table>
</td>
</tr>
<tr>
<td valign="top">
<table height="10" cellspacing="3" cellpadding="7" width="100%" bgcolor="#d2e3f0"
border="0">
<tr>
<td class="tituloPagina" valign="top" background="../../images/importar/fondo_bthome.jpg"
colspan="2">
<table cellspacing="0" cellpadding="0" width="100%" border="0">
<tbody>
<tr>
<td class="tituloPaginaazul" width="2%">
5.
</td>
<td class="tituloPagina" width="52%">
<asp:Label ID="Label2" runat="server" CssClass="lbl_titulo2" Text="<%$ Resources:res_etiquetas, subirArchivo %>"></asp:Label>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>
<table class="comunblanco" cellspacing="0" cellpadding="0" width="100%" border="0">
<tr>
<td valign="top" width="74%" height="26" style="text-align: center">
<cc1:BotonImagen ID="imbAceptarIniciar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
CausesValidation="false" />
</td>
</tr>
<tr>
<td class="comunNARANJA" valign="top" width="74%" bgcolor="#ffffff" height="26">
<table width='100%'>
<tr>
<td>
<asp:TextBox BorderWidth="0px" ID="txtLog" runat="server" CssClass="txt_multilinea"
ReadOnly="True" TextMode="MultiLine" Width="100%" Font-Size="10px" ForeColor="#cc6600"></asp:TextBox>
</td>
</tr>
<tr>
<td style="text-align: center">
<asp:HyperLink ID="hprLog" runat="server" CssClass="comunNARANJA" Target="_blank"
Text="<%$ Resources:res_controles, verLog %>"></asp:HyperLink>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</table>
