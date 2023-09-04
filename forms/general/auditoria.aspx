<%@Page Language="VB" MasterPageFile="~/master/master/mas_FormularioSinGrilla.master" AutoEventWireup="false" EnableEventValidation="false"
CodeBehind="auditoria.aspx.vb" Inherits="website.samm_web.forms_general_auditoria" %>
<%@ register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc7" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="act" %>
<%@ Register Src="~/controles/general/informacion.ascx" TagName="informacion" TagPrefix="uc6" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple" TagPrefix="uc3" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="BusquedaAvanzada" TagPrefix="bus" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="fec" %>
<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="textoAvanzado" TagPrefix="uc5" %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName="tabs" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName="tabsPersonalizados" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_tituloPagina" runat="Server">
    <asp:Label ID="titulo" runat="server" CssClass='lbl_titulo' Text="<%$Resources:res_tituloPagina, forms_gen_auditoria %>"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_general" runat="server" >
<uc7:popup ID="popupInterno" runat="server" />
<table>
<tr>
<td valign="top"> 
<table cellpadding="5" cellspacing="5" border="0" class="tbl_marcoFormulario">
<tr>
<td>
<asp:Label ID="lbl_usuario" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<bus:BusquedaAvanzada ID="bus_usuario" runat="server" a_str_tabla="seg_usuario" a_bln_obligatorio="false" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="Label1" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<asp:DropDownList ID="drd_tablas" runat="server">
</asp:DropDownList>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lblFecha" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<fec:fechaAvanzada ID="fec_desde" runat="server" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="lblfechaFin" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<fec:fechaAvanzada ID="fec_hasta" runat="server" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="Label2" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<asp:RadioButtonList ID="rdb_tipoOperacion" runat="server" RepeatDirection="Horizontal">
</asp:RadioButtonList>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lbl_descripcion" runat="server" CssClass="lbl"></asp:Label>
</td>
<td>
<asp:TextBox id="txt_descripcion" runat ="server" CssClass="txt "></asp:TextBox>
</td>
</tr>

<tr>
<td>
<asp:Label ID="Label4" runat="server"  CssClass="lbl"></asp:Label>
</td>
<td>
<asp:RadioButtonList ID="rdb_tipoBusqueda" runat="server" AutoPostBack="true">
</asp:RadioButtonList>
</td>
</tr>
<tr><td></td><td>
<asp:Label runat="server" id="lbl_numeroSesiones"></asp:Label> <asp:LinkButton runat="server" id="lnk_depurar" OnClick="lnk_depurar_Click" CausesValidation="false"></asp:LinkButton>
</td></tr>
<tr>
<td>
</td>
<td>
<bti:BotonImagen ID="bti_aceptar" runat="server" CssClass="imb" ImageUrl="../../images/botones/aceptar.png" />
</td>
</tr>
<tr>
<td> </td>
<td>
<asp:Label ID="lbl_mensaje" runat="server" CssClass ="lbl_mensaje" Visible="false" ></asp:Label>
</td>
</tr>
</table>
</td>
<td valign="top">
<table class="tbl_marcoFormulario" cellspacing="0"  >
<tr>
<td id="td_res" visible="false" runat="server" colspan="2">
<asp:Label ID="lbl_res_bus" runat="server" CssClass="lbl_docResaltado">
</asp:Label>
</td>
</tr>
<tr>
<td><asp:LinkButton ID="lbk_exportar" runat ="server" CssClass="lbl"></asp:LinkButton> </td>
</tr>
<tr style ="vertical-align:top " >
<td></td>
<td>
<asp:GridView ID="grd_resultados" runat ="server" Visible="false" AutoGenerateColumns="false"  >
<Columns>
 <asp:BoundField HeaderText="identificador" DataField="identificador" />
            <asp:BoundField HeaderText="fechamodificacion" DataField="fechaModificacion" />
            <asp:BoundField HeaderText="fechacreacion" DataField="fechaCreacion" />
            <asp:BoundField HeaderText="campoprincipal" DataField="campoPrincipal" />
            <asp:BoundField HeaderText="usuariocreo" DataField="usuarioCreo" />
            <asp:BoundField HeaderText="tabla" DataField="tabla" />
            <asp:BoundField HeaderText="tipooperacion" DataField="tipoOperacion" />
            <asp:BoundField HeaderText="usuario" DataField="usuario" />
<asp:TemplateField>
<ItemTemplate>
<asp:ImageButton ID="img_restaurar" runat ="server" ImageUrl ="../../images/iconos/compartir.jpg" CommandArgument='<%# eval("id") &"|"& eval("tablaconsulta") %>' Visible = '<%# IIF(eval("tipoOperacion")="Eliminación",True,False) %>' />
</ItemTemplate>
</asp:TemplateField>
</Columns>
  <FooterStyle CssClass="gri_pie" />
        <RowStyle CssClass="gri_item" />
        <PagerStyle CssClass="gri_paginacion" />
        <HeaderStyle CssClass="gri_titulo" />
        <AlternatingRowStyle CssClass="gri_itemAlterno" />
        <SelectedRowStyle CssClass="gri_itemSeleccionado" />
</asp:GridView> 
</td>
</tr>
<tr>
<td id="td_ses" visible="false" runat="server">
<asp:Label ID="Label3" runat="server" CssClass="lbl_docResaltado">
</asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:GridView ID="gri_sesionActiva" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField HeaderText="login" DataField="login" />
            <asp:BoundField HeaderText="nombre" DataField="usuarionNombre" />
            <asp:BoundField HeaderText="perfil" DataField="perfil" />
            <asp:BoundField HeaderText="sesion" DataField="sesion" />
            <asp:BoundField HeaderText="fecha_creacion" DataField="ingreso" />
            <asp:BoundField HeaderText="fecha_modificacion" DataField="ultimoMvto" />
            <asp:BoundField HeaderText="duracion" DataField="duracion" />
            <asp:BoundField HeaderText="inactividad" DataField="inactividad" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="lbl_id_sesion" runat="server" Text='<%# eval("id_sesion") %>' CssClass="invisible"></asp:Label>
                    <bti:BotonImagen ID="bti_cerrarSesion" runat="server" CssClass="imb" ImageUrl="../../images/iconos/eliminar.gif" OnClick="bti_bti_cerrarSesion_Click" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle CssClass="gri_pie" />
        <RowStyle CssClass="gri_item" />
        <PagerStyle CssClass="gri_paginacion" />
        <HeaderStyle CssClass="gri_titulo" />
        <AlternatingRowStyle CssClass="gri_itemAlterno" />
        <SelectedRowStyle CssClass="gri_itemSeleccionado" />
    </asp:GridView>
</td>
</tr>
</table>
</td>
</tr>
</table>
</asp:Content>