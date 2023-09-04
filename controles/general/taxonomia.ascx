<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="taxonomia.ascx.vb"
Inherits="website.samm_controles.controles_general_taxonomia" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<asp:HiddenField ID="hdd_estadoPop" runat="server" Value="1"/>

<table>
    <tr>
        <td>
            <asp:TextBox ID='txt_taxonomia' runat='server' CssClass='txt' ReadOnly="true"></asp:TextBox>
        </td>
        <td>
            <bti:BotonImagen ID="imb_taxonomia" runat="server" CssClass='imb' CausesValidation="false"
                ImageUrl="~/images/botones/buscarBA.gif" />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfv_taxonomia" runat="server" ControlToValidate="txt_taxonomia" SetFocusOnError="True">*
            </asp:RequiredFieldValidator>    
        </td>
    </tr>
</table>
<div id="divModal_bus" class="modalBackground_bus" runat="server" style="display:none; overflow:visible; width:100%; height:100%;">
</div>
<table id="tbl_popup" runat="server" width="49%" border="0" cellpadding="0" cellspacing="0" class="tbl_popup_bus" style="display:none;" visible="false" >
    <tr id="tr_barratitulo" runat="server">
        <td width="1%">
            <img name="pop_up_r1_c1" src="../../images/popup/pop_up_r1_c1.jpg" width="11" height="34" border="0" alt="" />
        </td>
        <td width="98%" background="../../images/popup/pop_up_r1_c4.jpg">
            &nbsp;
        </td>
        <td width="1%">
            <bti:BotonImagen ID="btiCerrar" runat="server" ImageUrl="../../images/botones/cerrar_pop.jpg" CausesValidation="false" />
        </td>
    </tr>
    <tr>
        <td width="1%" bgcolor="#577DAC" height="8" background="pop_up_r2_c1.jpg">
            &nbsp;
        </td>
        <td width="98%" bgcolor="#577DAC" height="8" background="pop_up_r2_c1.jpg">
            &nbsp;
        </td>
        <td width="1%" bgcolor="#577DAC" height="8" background="pop_up_r2_c1.jpg">
            &nbsp;
        </td>
    </tr>

    <tr>
            <td width="1%" valign="top" bgcolor="#EAF2F7">
            <img name="pop_up_r3_c1" src="../../images/popup/pop_up_r3_c1.jpg" width="11" height="235"
            border="0"></td>
            <td width="98%" valign="top">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
            <td width="25%" valign="top" bgcolor="#E7EEF5">
            <asp:Image ID="image" runat="server" ImageUrl="~/images/popup/pop_up_r3_c2.jpg" />
            </td>
            <td width="75%" valign="top" bgcolor="#E7EEF5">
            <table width="100%" border="0" cellpadding="10" cellspacing="0">
            <tr>
            <td>
            <asp:Label ID="Label1" runat="server" CssClass="lbl_tituloPopup"></asp:Label></td>
            </tr>
            <tr>
            <td bgcolor="#FFFFFF" valign="top">
            <p class="comun">
            <asp:Panel ID="pnl_control" runat="server" BackColor="white">
            <table>
            <tr>
            <td colspan="3">
            <table id="tbl_arbol" runat="server" cellpadding="0" cellspacing="0">
            <tr>
            <td>
            <div class="div_grillaBusquedaAvanzada">
                <asp:TreeView ID="trv_taxonomia" runat="server" CssClass='trv' LineImagesFolder="../../images/treelineimages" ShowLines="True" 
                        SkipLinkText="a" EnableClientScript="false">
                            <SelectedNodeStyle CssClass="tre_seleccionado" />
                            <RootNodeStyle CssClass="tre_raiz" />
                            <NodeStyle CssClass="tre_nodo" />
                </asp:TreeView>
            </div>
            </td>
            </tr>
            </table>
            </td>
            </tr>
            <tr>
            <td colspan="3">
             <bti:BotonImagen ID="btn_aceptarTax" runat="server" CssClass='imb' CausesValidation="false"
                            ImageUrl="~/images/botones/aceptar.png" />
            </td>
            </tr>
            </table>
            </asp:Panel>
            </p>
            </td>
            </tr>
            </table>
            </td>
            </tr>
            </table>
            </td>
            <td width="1%" valign="top" bgcolor="#E7EEF5">
            <img name="pop_up_r3_c5" src="../../images/popup/pop_up_r3_c5.jpg" width="34" height="235"
            border="0"></td>
    </tr>
</table>
<asp:HiddenField ID="hdd_tbl_posX" runat="server" />
<asp:HiddenField ID="hdd_tbl_posY" runat="server" />
<asp:HiddenField ID="hdd_tbl_visible" runat="server" />