﻿<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_agregarTempario.ascx.vb"  Inherits="website.samm_componentes.controles_doc_pop_agregarTempario" %> <%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %> <div id="div_trvDetalleTempario" runat="server" style="background-color: White;"> <table> <tr> <td colspan="2"> <asp:TreeView ID="trv_detalleTempario" runat="server" CssClass='trv' LineImagesFolder="../../images/treelineimages" ShowLines="True" SkipLinkText="a" ShowCheckBoxes="all"> <SelectedNodeStyle CssClass="tre_seleccionado" /> <RootNodeStyle CssClass="tre_raiz" /> <NodeStyle CssClass="tre_nodo" /> </asp:TreeView> </td>  </tr> <tr> <td valign="bottom"> <bti:BotonImagen ID="bti_agregarTempario" runat="server" ImageUrl="~/images/botones/aceptar.jpg" CausesValidation="false" /> </td> </tr>  <tr> <td> <asp:Label ID="lbl_mensaje" CssClass="lbl_mensaje" runat="server"></asp:Label> </td> </tr> </table> </div>