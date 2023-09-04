<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_subequipos.ascx.vb"
    Inherits="website.samm_componentes.controles_equ_inc_subequipos" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="bus" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<table>
    <tr>
        <td>
            <cc1:BotonImagen ID="btiEditar" runat="server" ImageUrl="~/images/botones/editar.gif" />
            <cc1:BotonImagen ID="bti_montar" runat="server" ImageUrl="~/images/botones/equ_montar.gif"
                CausesValidation="False" />
            <cc1:BotonImagen ID="btiDesmontar" runat="server" ImageUrl="~/images/botones/equ_desmontar.gif"
                CausesValidation="False" />
            <cc1:BotonImagen ID="btiActualizar" runat="server" ImageUrl="~/images/botones/actualizar.png"
                CausesValidation="False" /><br />
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="grdEquipos" runat="server" AutoGenerateColumns="False">
                <EmptyDataTemplate>
                    <asp:Label ID="lbl" runat="server" CssClass="lbl_mensaje" Text='<%$Resources:res_mensajes,grillaVacia %>'></asp:Label></EmptyDataTemplate>
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" HeaderStyle-CssClass="invisible"
                        ItemStyle-CssClass="invisible" ControlStyle-CssClass="invisible" />
                    <asp:TemplateField HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
                        <ItemTemplate>
                            <asp:Label ID="lbl_id" runat="server" Text='<%#eval("id") %>'></asp:Label></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="lbl_equipo" runat="server" Text='<%# eval("equipo") %>' CssClass='<%# IIF(eval("id_sistema")>=0,"","lbl_resaltado") %>'></asp:Label></ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="serial" HeaderText='<%$ Resources:res_campogrilla,equ_equipo_equipo_serial %>'>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="horometro">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:TemplateField >
                        <HeaderTemplate>
                            <asp:Label ID="lbl_cabezaPosiciones" runat="server" Text="Posición"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_posicion" runat="server" Text='<%#eval("posicion") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <%--<asp:CommandField />--%></Columns>
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
