<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="informacion.ascx.vb"
    Inherits="website.samm_controles.controles_general_informacion" %>


<table id="tblH" runat="server" cellpadding="0" cellspacing="0" border="0" visible="true" >
    <tr>
        <td>
        </td>
        <td style="padding-top:8px">
            <table style="background-color: white" cellspacing="8">
                <tr>
                    <td>
                        <asp:Image ID="imgH" runat="server"  style="width:138px;height:88px" ImageUrl="../../images/informacion/noimagen.jpg"/></td>
                   
                    <td style="width: 400px">
                        <asp:Label ID="lblH" runat="server" ></asp:Label></td>
                        
                      
                  <td >
                      <asp:ImageButton Visible="false" ID="button_imagenH" CausesValidation="false" name="button_imagenH" runat="server" style="border-width: 0px;padding-left: 86%; height: 64% !important;margin-top: -14%;outline: none;" imageurl="../../images/botones/btn_Girar.png" />
                   
                  </td>  
                                    </tr>

            </table>
        </td>
        <td style="background-color: #d7e8f2"></td>
    </tr>
   
</table>
<table id="tblV" runat="server" style="height: 100%;width:100%;padding:0px;border:none" visible="false"><tr><td>
    <table style="text-align: center;width:100%">
        <tr>
            <td style="text-align: center; width: 138px">
                <asp:Image ID="imgV" name="imgV" runat="server" Style="width: 138px; height: 88px" ImageUrl="../../images/informacion/noimagen.jpg" /></td>
        </tr>
        <tr>
            <td style="background-color: White; text-align: left">
                <asp:ImageButton Visible="false" ID="button_imagen" CausesValidation="false" name="button_imagen" runat="server" Style="border-width: 0px; padding-left: 83%; height: 67% !important; margin-top: -6%; outline: none;" ImageUrl="../../images/botones/btn_Girar.png" />
                <asp:Label ID="lblV" runat="server"></asp:Label></td>
        </tr>
    </table>
</td></tr></table>
