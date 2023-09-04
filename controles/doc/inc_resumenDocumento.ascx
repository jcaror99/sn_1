<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_resumenDocumento.ascx.vb" Inherits="website.samm_componentes.controles_doc_inc_resumenDocumento" %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>

<table style="height: 100%;width: 100%;">
<tr>
<td>
<asp:GridView ID="grd" runat="server" AutoGenerateColumns="false" BorderStyle="None" GridLines="None" CssClass="table_completa" >
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="" />
<Columns>


<asp:TemplateField  HeaderStyle-HorizontalAlign="Left" >

<ItemTemplate >
<table style="height: 100%;width: 100%;     border-bottom: solid 6px white;">
 <tr Class="gri_titulo"  style="width: 100%;padding : 5px;" runat="server" id="tr_titulo" Visible='<%# IIF( Not IsDBNull(eval("tituloFinal")),true,false) %>' >
 <td  style="text-align: left;width: 100%;height: 35px;" >
 <asp:Label ID="lbl_tabs" runat= "server" Text='<%# eval("tituloFinal") %>' style="font-size: 14px; text-align:  left;"  Visible='<%# IIF( Not IsDBNull(eval("tituloFinal")),true,false) %>'  ></asp:Label> 
 </td>
 </tr>
 
 <tr style="width: 100%;">
  <td style="width: 50%; ">
  <asp:Label ID="lbl_descripcion" runat= "server"  Text='<%# eval("titulo") %>' CssClass="lbl" Visible='<%# IIF(IsDBNull(eval("tituloFinal")),true,false) %>' ></asp:Label> 

  </td>
  <td style="width: 50%;">
 <asp:TextBox  ID="txt_valorText" TextMode='MultiLine' runat="server"   Text='<%# eval("dato") %>'  CssClass="text_arera_resumen" Visible='<%# IIF(IsDBNull(eval("tituloFinal")),true,false) %>' W ReadOnly="true" ></asp:TextBox>
 </td>
  
 </tr>
</table>
</ItemTemplate>

</asp:TemplateField>

</Columns>
</asp:GridView>
</td>
</tr>
</table> 