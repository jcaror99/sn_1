<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_cargarItemDocumento.ascx.vb" Inherits="website.samm_componentes.controles_doc_inc_cargarItemDocumento" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<table class="tbl_marcoFormulario">

<tr style="display:none">
<td class="comun" valign="top" colspan="2" height="26">
<asp:CheckBox ID="chb_codigoUnico" runat="server" CssClass="chb" Text='<%$Resources:res_etiquetas,codigoUnico %>' />
</td>
</tr>
    <tr>
        <td>
            <asp:FileUpload ID="ful_archivo" runat="server" CssClass="ful"  />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_hoja" runat="server" CssClass="lbl"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="txt_hoja" runat="server" CssClass="txt" Text="Hoja1"></asp:TextBox><asp:RequiredFieldValidator
                ID="rfv_hoja_1" runat="server" ErrorMessage="*" ValidationGroup="form" ControlToValidate="txt_hoja"></asp:RequiredFieldValidator><asp:RequiredFieldValidator
                    ID="rfv_hoja_2" runat="server" ErrorMessage="*" ValidationGroup="hoja" ControlToValidate="txt_hoja"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <cc1:BotonImagen ID="imbAceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                CausesValidation="true" ValidationGroup="hoja" />
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
    <td> <asp:LinkButton ID="lnk_plantilla" runat="server" CssClass="lnk" ></asp:LinkButton> </td>
    </tr>
    
    <tr>
    <td><%--<asp:LinkButton ID="lnk_otro" runat="server" CssClass="lnk" ></asp:LinkButton>--%> </td>
    </tr>
 
    <tr>
    <td>
     <asp:GridView ID="gvColumnas" runat="server"  AutoGenerateColumns="false"
                                         ShowFooter="false" >
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
        <asp:DropDownList ID="drpColumna" runat="server" CssClass="drp" ValidationGroup='compartir'>
        </asp:DropDownList>
        
        <asp:RequiredFieldValidator ID="rfiColumna" runat="server" CssClass='lbl_mensaje' ErrorMessage="*"
         ControlToValidate="drpColumna" ValidationGroup="compartir"  Enabled='<%# eval("requerido") %>' ></asp:RequiredFieldValidator>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="<%$ Resources:res_nombreColumna, columnaForanea %>">
        <ItemTemplate>
        <asp:DropDownList ID="drpForanea" runat="server" CssClass="drp" ValidationGroup='compartir'>
        
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
    <tr>
        <td>
           <asp:ValidationSummary ID='vlsFormulario' runat='server' ValidationGroup='compartir' CssClass='lbl_mensaje'
    ForeColor='' />
            <cc1:BotonImagen ID="bti_actualizar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                CausesValidation="false"  ValidationGroup="compartir"  />
        </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox BorderWidth="0px" ID="txtLog" runat="server" CssClass="txt_multilinea"
                ReadOnly="True" TextMode="MultiLine" Width="300px" Font-Size="10px" ForeColor="#cc6600"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:HyperLink ID="hprLog" runat="server" CssClass="comunNARANJA" Target="_blank"
                Text="<%$ Resources:res_controles, verLog %>"></asp:HyperLink>
        </td>
    </tr>
</table>