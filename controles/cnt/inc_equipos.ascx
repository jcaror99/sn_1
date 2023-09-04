<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_equipos.ascx.vb"
    Inherits="website.samm_componentes.controles_cnt_inc_equipos" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc1" %>

<table>
    <tr>
        <td></td>
        <td>
            <asp:Label ID="lbl_equipo" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,equ_equipo_equipo%>"></asp:Label>
        </td>
        <td>
            <uc1:busquedaAvanzada ID="bus_equipo" runat="server" CssClass='_bus' a_str_tabla="equ_equipo" />
        </td>
        <td>
            <asp:Label ID="lbl_modelo" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,cat_reemplazo_catalogo_equipo_id_catalogo_equipo%>"></asp:Label>
        </td>
        <td>
            <uc1:busquedaAvanzada ID="bus_modelo" runat="server" CssClass='_bus' a_str_tabla="cat_catalogo.equipo" />
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Label ID="lbl_sucursal" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,ter_sucursal_usuario_id_sucursal%>"></asp:Label>
        </td>
        <td>
            <uc1:busquedaAvanzada ID="bus_sucursal" runat="server" CssClass='_bus' a_str_tabla="ter_sucursal" />
        </td>
        <td>
            <asp:Label ID='lbl_zona' runat='server' CssClass='lbl' Text='<%$Resources:res_metadata,gen_zona_zona %>'></asp:Label>
        </td>
        <td>
            <uc1:busquedaAvanzada ID="bus_zona" runat="server" CssClass='_bus' a_str_tabla="gen_zona" />
        </td>
    </tr>
    <tr>
        <td colspan="4" align="center">
            <cc1:BotonImagen ID="bti_busqueda" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                CausesValidation="false" />
        </td>
    </tr>
</table>


<cc1:BotonImagen ID="bti_eliminar" runat="server" CausesValidation="false" ImageUrl="~/images/botones/quitar.gif" /><table>
    <tr>
        <td>
            <asp:GridView ID="grd_equipo" runat="server" AutoGenerateColumns="False" AllowPaging="true" PageSize="10">
                <Columns>
                    <asp:CommandField ShowSelectButton="True">
                        <HeaderStyle CssClass="invisible"></HeaderStyle>
                        <ItemStyle CssClass="invisible"></ItemStyle>
                    </asp:CommandField>
                    <asp:TemplateField HeaderText="id" HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
                        <ItemTemplate>
                            <asp:Label ID="lbl_id" runat="server" Text='<%#eval("id") %>' Visible="false"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla,equ_equipo_equipo_serial %>' DataField="serie"></asp:BoundField>
                    <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,equ_equipo_equipo %>'>
                        <ItemTemplate>
                            <asp:Label ID="lbl_equipo" runat="server" Text='<%#eval("equipo") %>' ToolTip='<%#eval("equipo_todo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla,ter_tercero_tercero %>'
                        DataField="tercero"></asp:BoundField>
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla,ter_sucursal_sucursal %>'
                        DataField="sucursal"></asp:BoundField>
                    <asp:BoundField HeaderText='<%$Resources:res_campoGrilla,cnt_contratoequipo_promedio %>'
                        DataField="promedio"></asp:BoundField>

                    <asp:BoundField HeaderText='res_campoGrilla,cnt_contratoequipo_fechaAfiliacion'
                        DataField="fechaAfiliacion"></asp:BoundField>

                    <asp:TemplateField HeaderText='<%$Resources:res_etiquetas_cnt,numeroVisitas %>'>
                        <ItemTemplate>
                            <asp:HyperLink ID="lnk_visitas" runat="server" Text='<%     #eval("visitasGeneradas")%>'
                                Style="cursor: pointer" CssClass="lbl" onmouseout="document.onmousedown=ocultar('tbl_bocadillo');"
                                onmouseover="document.onmousedown = null;"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,cnt_contratoequipo_preciovisita %>'>
                        <ItemTemplate>
                            <asp:TextBox ID="txt_visita" runat="server" Text='<%#String.Format("{0:C}",eval("visita"))%>'
                                CssClass='txt_precioGrilla'></asp:TextBox><asp:RequiredFieldValidator ID='rfv_visita'
                                    runat='server' ControlToValidate='txt_visita' ValidationGroup="equipo" SetFocusOnError='True'
                                    CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText='<%$Resources:res_campoGrilla,cnt_contratoequipo_precioservicio %>'>
                        <ItemTemplate>
                            <asp:TextBox ID="txt_servicio" runat="server" Text='<%#String.Format("{0:C}",eval("servicio"))%>'
                                CssClass='txt_precioGrilla'></asp:TextBox><asp:RequiredFieldValidator ID='rfv_servicio'
                                    runat='server' ControlToValidate='txt_servicio' ValidationGroup="equipo" SetFocusOnError='True'
                                    CssClass="lbl_mensaje" ForeColor="">*</asp:RequiredFieldValidator>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <RowStyle CssClass="gri_item" />
                <SelectedRowStyle CssClass="gri_itemSeleccionado" />
                <PagerStyle CssClass="gri_paginacion" />
                <HeaderStyle CssClass="gri_titulo" />
                <AlternatingRowStyle CssClass="gri_itemAlterno" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            <cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="../../images/botones/aceptar.jpg"
                ValidationGroup="equipo"></cc1:BotonImagen><asp:ValidationSummary ID='vls' runat='server'
                    ValidationGroup='equipo' CssClass='lbl_mensaje' ForeColor='' HeaderText='<%$Resources:res_mensajes,camposObligatorios %>'></asp:ValidationSummary>
        </td>
    </tr>
</table>
<boc:bocadillo ID="Bocadillo" runat="server" />
