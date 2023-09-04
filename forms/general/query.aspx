<%@ Page Language="VB" AutoEventWireup="false" CodeBehind="query.aspx.vb" Inherits="website.samm_web.forms_general_query" MasterPageFile="~/master/master/mas_FomularioSinGrillaNoAjax.master" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc1" %>
<asp:Content ContentPlaceHolderID="cph_general" runat="server">
    <div>
     <asp:FileUpload ID="ful_archivo" runat="server" CssClass="txt" /><br />
     <asp:TextBox ID="txtComando" runat="server" Height="120px" TextMode="MultiLine" 
            Width="850px" CssClass="txt_multilinea"></asp:TextBox><br />
        &nbsp;
        <asp:DropDownList ID="drpTipoComando" runat="server">
            <asp:ListItem Value="4">Tabla de Datos</asp:ListItem>
            <asp:ListItem Value="2">Cuerpo SP</asp:ListItem>
            <asp:ListItem Value="1">NonQuery</asp:ListItem>
            <asp:ListItem Value="0">Archivo</asp:ListItem>
        </asp:DropDownList>&nbsp; &nbsp;<asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" />
        <br />
        &nbsp;
        <asp:Label ID="lblMensaje" runat="server" cssclass="lblmensaje"></asp:Label>&nbsp;
   
        <div class="tbl_marcoFormulario">
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        </div>
    </div>
     <asp:UpdatePanel ID="UpdatePanel1"  runat="server" >
    <ContentTemplate >
        <uc1:popup ID='popup1' runat='server' a_bol_visible='false' />
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
    
    