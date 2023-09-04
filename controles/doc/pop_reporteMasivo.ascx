<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_reporteMasivo.ascx.vb" Inherits="website.samm_componentes.controles_doc_pop_reporteMasivo" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<table style="white-space: nowrap;">
<tr><td><asp:Label ID="lbl_tusuario" CssClass="lbl"  runat="server"></asp:Label></td><td><asp:Label ID="lbl_usuario" runat="server"></asp:Label></td></tr>
<tr><td><asp:Label ID="lbl_tavance"  CssClass="lbl"  runat="server"></asp:Label></td><td><asp:Label ID="lbl_avance" runat="server"></asp:Label></td></tr>
<tr><td colspan="2"><asp:Label ID="lbl_resultado" runat="server" CssClass="lbl_mensaje" ></asp:Label></td></tr>
<tr><td colspan="2" style="text-align: center;">
<asp:HyperLink ID="hyp_descargaZip" runat="server" ></asp:HyperLink></td></tr>
<tr><td colspan="2" style="text-align: center;">
<bti:BotonImagen ID="bti_ejecutarReporte" runat="server"  ImageUrl="../../images/botones/aceptar.jpg" />
<br/>
<asp:LinkButton ID="btn_cancelar" runat="server" CausesValidation="false" ValidationGroup="reporteMasivo"  ></asp:LinkButton>
<asp:LinkButton ID="btn_cargarGrilla" runat="server"  CausesValidation="false" ValidationGroup="reporteMasivo"  ></asp:LinkButton>
</td></tr>
<tr><td colspan="2">
<asp:Label runat="server" ID="lbl_grilla" CssClass="lbl" ></asp:Label>
</td></tr>
</table>