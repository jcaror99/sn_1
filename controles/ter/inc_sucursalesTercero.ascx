<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_sucursalesTercero.ascx.vb" Inherits="website.samm_componentes.controles_ter_inc_sucursalesTercero" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>

<table>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_nuevo" runat="server" ImageUrl="../../images/botones/agregar.gif"
                CausesValidation="false" />
            <bti:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif"
                CausesValidation="false" />
            <bti:BotonImagen ID="btnEliminar" runat="server" ImageUrl="~/images/botones/quitar.gif"
                CausesValidation="false" CssClass='imb' />
            <bti:BotonImagen ID="bti_actualizar" runat="server" CssClass="imb" ImageUrl="~/images/botones/actualizar.png" CausesValidation="false" />
        </td>
    </tr>
    <tr>
        <td id="td_filtroSuc" runat="server">
            <asp:Label ID='lbl_sucursal' runat='server' CssClass='lbl'></asp:Label>
            <asp:TextBox ID='txt_sucursal' runat='server' MaxLength='100' CssClass='txt'></asp:TextBox>
            <bti:BotonImagen ID="btn_buscar" runat="server" ImageUrl="../../images/botones/buscarBA.gif"
                CausesValidation="false" />
        </td>
    </tr>    
    <tr>
        <td>
            <gri:grilla ID="gri_sucursales" runat="server" a_bln_paginacionNormal="true"></gri:grilla>
        </td>
    </tr>

</table>
