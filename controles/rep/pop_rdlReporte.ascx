<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_rdlReporte.ascx.vb" Inherits="website.samm_componentes.controles_rep_pop_rdlReporte" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web"%>
<table style="background-color:White;">
<tr>
<td>
    <asp:Label ID="lbl_rdl" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
    <asp:HyperLink ID="hyp_rdl" runat="server" CssClass="lnk"></asp:HyperLink>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="lbl_nuevoRdl" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
    <asp:FileUpload ID="flu_nuevoRdl" runat="server" CssClass="lbl"/>
</td>
</tr>
<tr>
<td colspan="2">
<asp:GridView ID="grd_subreportes" runat="server" AutoGenerateColumns="False" BorderStyle="None" BorderColor="White">
    <Columns>
        <asp:BoundField DataField="lbl" ItemStyle-CssClass="lbl" />
        <asp:TemplateField ItemStyle-CssClass="lbl">
            <ItemTemplate>
                <asp:HyperLink ID="hyp_subRdl" runat="server" Text='<%# eval("txt") %>' NavigateUrl='<%# eval("ctrl") %>' CssClass="lnk" Visible='<%# eval("link") %>'></asp:HyperLink>
                <asp:FileUpload ID="flu_nuevoSubRdl" runat="server" CssClass="lbl" Visible='<%# IIF(eval("link"),False,True) %>'/>
                <asp:HiddenField ID="hdd_txt" runat="server" Value='<%# eval("txt") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>

</asp:GridView>
</td>
</tr>
<tr>
<td align="center" colspan="2">
<bti:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.png"
                CausesValidation="false" />
</td>
</tr>
<tr>
<td align="center" colspan="2">
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
</table>