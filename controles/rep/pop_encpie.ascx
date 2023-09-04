<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="~/controles/rep/pop_encpie.ascx.vb" Inherits="website.samm_componentes.controles_rep_pop_encpie"  %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<p>
            <asp:Label ID="Label1" runat="server" CssClass="lbl_titulo1"></asp:Label>
</p>
<table cellpadding="0" cellspacing="0" class="tbl_marcoFormulario">
    
    
    <tr runat="server" class="lbl_titulo1">
        <td>
            <%--<asp:Label ID="lbl_info" runat="server" CssClass="lbl" Text="Se dispone a crear cambiar los Encabezados y Pies, ¿Esta seguro?"></asp:Label>
 --%>
 
           
 
            
        </td>                     
   
    </tr>
    
    <tr>
        <td>
             <table cellspacing="10" runat="server">
                <tr>
                    <td>
                        <asp:CheckBox ID="chb_enc" runat="server" Text="Encabezado" CssClass="chk" />
                    
                    </td>    
                    <td>
                        <asp:TextBox ID="txt_encabezado" runat="server" Rows="7" TextMode="MultiLine" CssClass="txt_multilineaLargo"></asp:TextBox>
                        
                    </td>
                
                </tr>      
                
               
                <tr>
                    <td>
                         <asp:CheckBox ID="chb_pie" runat="server" Text="Pie" CssClass="chk"/>
                         
                    </td>    
                    <td>
                        <asp:TextBox ID="txt_pie" runat="server" Rows="7" TextMode="MultiLine" CssClass="txt_multilineaLargo"></asp:TextBox>
                    
                    </td>
                
                </tr>      
                <tr>
                    <td>
                        <bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="false" CssClass="imb" ImageUrl="../../images/botones/aceptar.png" />
                    </td>
                </tr>
                
            </table>
        
        
        </td>
    
    
    
    </tr>
    
    <tr>
        <td>
            <asp:Label ID="lbl_mensajeFInal" runat="server" CssClass="lbl" Text="" Visible ="false"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>

            <asp:HyperLink ID="hyp_link" runat="server" Visible="false"></asp:HyperLink>
        </td>
    </tr>
    
    
    </table>

