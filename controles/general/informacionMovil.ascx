<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="informacionMovil.ascx.vb"
    Inherits="website.samm_controles.controles_general_informacionMovil" %>


<table id="tblH" runat="server" cellpadding="0" cellspacing="0" border="0" visible="true" >
    <tr>
        <td style="background-color: #d7e8f2">
        </td>
        <td style="background-color: #d7e8f2;padding-top:8px">
            <table style="background-color: white" cellspacing="8">
                <tr>
                    <td>
                        <asp:Image ID="imgH" runat="server"  style="width:138px;height:88px" ImageUrl="../../images/informacion/noimagen.jpg"/></td>
                   
                    <td style="width: 400px">
                        <asp:Label ID="lblH" runat="server" ></asp:Label></td>
                        
                      
                </tr>
                 <tr>
                    <td style="background-color: White; width: 138px">
                        <asp:Label ID="lbl_informacionH" runat="server"></asp:Label></td>
                </tr>
                  <td >
                      <asp:ImageButton Visible="false" ID="button_imagenH" CausesValidation="false" name="button_imagenH" runat="server" style="border-width: 0px;padding-left: 86%; height: 64% !important;margin-top: -14%;outline: none;" imageurl="../../images/botones/btn_Girar.png" />
                   
                  </td>  
            </table>
        </td>
        <td style="background-color: #d7e8f2"></td>
    </tr>
</table>
<table id="tblV" runat="server" border="0" cellpadding="0" cellspacing="0" style="height: 100%" visible="false"><tr><td>
            <table>
                <tr>
                    <td style="text-align: center; width: 138px">
                        <asp:Image ID="imgV" name="imgV"  runat="server"  style="width:138px;height:88px" ImageUrl="../../images/informacion/noimagen.jpg"/></td>
                       <td style="background-color: White; width: 100%">
                        <asp:Label ID="lblV" runat="server"></asp:Label></td>
                </tr>
               <tr>
                    <td style="background-color: White; width: 138px">
                        <asp:Label ID="lbl_informacionV" runat="server"></asp:Label></td> 
                   <td >
                      <asp:ImageButton Visible="false"  ID="button_imagen" CausesValidation="false" name="button_imagen" runat="server" style="border-width: 0px; padding-left: 83%; height: 67% !important; margin-top: -6%;outline: none;" imageurl="../../images/botones/btn_Girar.png" />
                      </td>  
                </tr>
            </table>
        </td></tr></table>
        