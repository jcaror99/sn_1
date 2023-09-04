<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="equ_documentosCurso.ascx.vb"
Inherits="website.samm_componentes.controles_equ_equ_documentosCurso" %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="uc1" %>
<table cellpadding="0" cellspacing="0">
<tr>
<td colspan="5" id="td_equipo" runat="server"></td>
</tr>
<tr align="left">
<td>
<asp:Image ID="img_garantiaFab" runat="server" ImageUrl="~/images/iconos/garantiaFab.gif" />
</td>
<td>
<asp:Image ID="img_garantia" runat="server" ImageUrl="~/images/iconos/garantia.gif" />
</td>
<td>
<asp:Image ID="img_prestamo" runat="server" ImageUrl="~/images/iconos/prestamo.gif" />
</td>                                                                                           
<td>
<asp:HyperLink ID="img_componente" runat="server" ImageUrl="~/images/iconos/componente.gif" />
</td>
<td>
<asp:HyperLink ID="img_hojaDeVida" runat="server" ImageUrl="~/images/iconos/hoja_de_vida.png" />
</td>
<td>
<asp:Image ID="img_contrato" runat="server" ImageUrl="~/images/iconos/contrato.gif" />
</td>
</tr>
<tr>
<td colspan="5">
<asp:HyperLink ID="lnk_ot" runat="server" CssClass="lnk" Font-Bold="True" Font-Underline="True"></asp:HyperLink>
<asp:Literal ID="ltr_separador" runat="server" Visible="false"></asp:Literal>
<asp:HyperLink ID="lnk_ots" runat="server" CssClass="lnk" Font-Bold="True" Font-Underline="True"></asp:HyperLink>
<asp:Label ID="lbl_guionSOL" runat="server" CssClass="lnk" Font-Bold="True" Text=" - "></asp:Label> 
<asp:HyperLink ID="lnk_sol" runat="server" CssClass="lnk" Font-Bold="True" Font-Underline="True"></asp:HyperLink>
<asp:Label ID="lbl_guionVER" runat="server" CssClass="lnk" Font-Bold="True" Text=" - "></asp:Label>
<asp:HyperLink ID="lnk_infoEquipo" runat="server" CssClass="lnk" Font-Bold="True" Font-Underline="True"></asp:HyperLink>
</td>
</tr>

<tr>


<td colspan="5">
<asp:Label ID='lbl_horometro2' runat='server' CssClass='lbl'></asp:Label>
</td>
</tr>



</table>
<table id="tbl_bocadilloInfoEquipo" border="0" cellpadding="0" cellspacing="0" style="display:none;width:183px;z-index:107">
<tr> 
<td align="left" height="11" valign="top" width="6%"><img src="../../images/boc/bocadillo_r1_c1.png" height="16" width="27"></td>
<td background="../../images/boc/bocadillo_r1_c3.png" height="11" width="90%"></td>
<td align="right" height="11" valign="top" width="4%"><img src="../../images/boc/bocadillo_r1_c4.png" height="16" width="16"></td>
</tr>
<tr> 
<td align="left" background="../../images/boc/bocadillo_r2_c1.png" valign="top" width="6%">&nbsp;</td>
<td id="td_BocadilloInfoEquipoTexto" class="unnamed1" style="white-space:nowrap" bgcolor="#ffffff" width="90%"></td>
<td align="right" background="../../images/boc/bocadillo_r2_c4.png" valign="top"
width="4%">&nbsp;</td>
</tr>
<tr> 
<td align="left" valign="top" width="6%"><img src="../../images/boc/bocadillo_r4_c1.png" height="16" width="27"></td>
<td background="../../images/boc/bocadillo_r4_c3.png" width="90%"></td>
<td align="right" valign="top" width="4%"><img src="../../images/boc/bocadillo_r4_c4.png" height="16" width="16"></td>
</tr>





</table>
