<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_horometroEquipo.ascx.vb"
Inherits="website.samm_componentes.controles_equ_inc_horometroEquipo" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="act" %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<table><tr><td><table><tr><td style="background-color:White;">
<asp:Label ID="Label1" runat="server" style="font-weight:bold;" CssClass="lbl_estadoFormulario"></asp:Label>
</td><td></td><td></td></tr><tr>
<td class='td_lblFormulario'>
<asp:Label ID="Label2" runat="server" CssClass="lbl" Text="<%$Resources:res_metadata,equ_equipo_horometroactual%>"></asp:Label>
</td>
<td>
<asp:Label ID='lbl_horometro_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<asp:TextBox ID="txtNuevoHorometro" runat="server" CssClass="txt_numero"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfv_horometro" runat="server" ControlToValidate="txtNuevoHorometro"
CssClass="lbl_mensaje" ForeColor='' ValidationGroup="inc_horometro">*</asp:RequiredFieldValidator>
</td>
<td>
<asp:Label ID='lbl_horometro_busA' runat='server' CssClass='lbl'></asp:Label>
</td><td>
<asp:TextBox ID="txtHorometro_bus" runat="server" CssClass="txt_numero_bus"></asp:TextBox>
</td></tr><tr>
<td class='td_lblFormulario'>
<asp:Label ID="Label3" runat="server" CssClass="lbl" Text="<%$Resources:res_etiquetas_equ, fechaTomaDatos %>"></asp:Label>
</td>
<td>
<asp:Label ID='lbl_fecha_busDesde' runat='server' CssClass='lbl'></asp:Label>
</td>
<td class='td_controlesFormulario'>
<uc1:fechaAvanzada ID="fecFecha" runat="server" a_bln_obligatorio="true" a_str_grupoValidacion="inc_horometro"
a_bol_ignorarHora="true" a_str_prefijo="fh" />
</td><td>
<asp:Label ID='lbl_fecha_busA' runat='server' CssClass='lbl'></asp:Label>
</td>
<td>
<uc1:fechaAvanzada ID="fecFecha_bus" runat="server" a_bln_obligatorio="true" a_str_grupoValidacion="inc_horometro"
a_bol_ignorarHora="true" a_str_prefijo="fh" />
</td></tr>
<tr>
<td class='td_lblFormulario'>
<asp:Label ID='lbl_ciclo' runat='server' CssClass='lbl'></asp:Label>
</td>
<td>
</td>
<td>
<bus:busquedaAvanzada ID="bus_cicloHorometro" runat ="server" a_str_tabla ="equ_cicloHorometro" a_str_campo="Nciclo" a_str_camposGrilla =" id, horometroInicial , horometroFinal , afectarProyeccion ,Nciclo,reparacionMayor,reiniciarHorometro" />
</td>
</tr>
<tr>
<td align="center" colspan="3">
<cc1:BotonImagen ID="btiAceptar" runat="server" ImageUrl="~/images/botones/aceptar.png"
ValidationGroup="inc_horometro" />
</td>
<td align="center" colspan="3">
<asp:Label ID="lblmensaje" CssClass="lbl_mensaje" runat="server" Text=""></asp:Label>
</td><td></td></tr></table>
<act:filteredtextboxextender id='ftb_horometro' runat='server' filtertype='Numbers,Custom'
targetcontrolid='txtNuevoHorometro'>
</act:filteredtextboxextender>
</td></tr><tr><td>
<asp:HyperLink ID="lnk_exportar" runat="server" CssClass="lnk" Text='<%$Resources:res_controles,exportarExel %>'></asp:HyperLink>
</td></tr><tr><td>
<cc1:BotonImagen ID="btnNuevo" runat="server" ImageUrl="~/images/botones/agregar.gif"
CausesValidation="false" CssClass='imb' />
<cc1:BotonImagen ID="btnBuscar" runat="server" ImageUrl="~/images/botones/buscarTAB.gif"
CausesValidation="false" CssClass='imb' />
<cc1:BotonImagen ID="btnEliminar" runat="server" ImageUrl="~/images/botones/quitar.gif"
CausesValidation="false" CssClass='imb' />
</td></tr><tr><td>
<asp:GridView ID="grd_horometro" runat="server" AutoGenerateColumns="False">
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<PagerStyle CssClass="gri_paginacion" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<EmptyDataTemplate>
<asp:Label ID="lbl" runat="server" CssClass="lbl_mensaje" Text='<%$Resources:res_mensajes,grillaVacia %>'></asp:Label>
</EmptyDataTemplate>
<Columns>
<asp:CommandField ButtonType="Button" ShowSelectButton="True" HeaderStyle-CssClass="invisible"
ItemStyle-CssClass="invisible" ControlStyle-CssClass="invisible" >
<ControlStyle CssClass="invisible"></ControlStyle>

<HeaderStyle CssClass="invisible"></HeaderStyle>

<ItemStyle CssClass="invisible"></ItemStyle>
    </asp:CommandField>
<asp:TemplateField HeaderStyle-CssClass="invisible" ItemStyle-CssClass="invisible">
<ItemTemplate>
<asp:Label ID="lbl_id" runat="server" Text='<%#eval("id") %>'></asp:Label>
</ItemTemplate>
<HeaderStyle CssClass="invisible"></HeaderStyle>
<ItemStyle CssClass="invisible"></ItemStyle>
</asp:TemplateField>
<asp:BoundField DataField="fecha" HeaderText='<%$ Resources:res_nombrecolumna, fecha %>'>
<ItemStyle HorizontalAlign="Center" />
</asp:BoundField>
<asp:BoundField DataField="horometro">
<ItemStyle HorizontalAlign="Center" />

</asp:BoundField>
<asp:BoundField DataField="ciclo" >
<ItemStyle HorizontalAlign="Center" />

</asp:BoundField>
    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Left">
        <ItemTemplate>
            <asp:HyperLink ID="hyp_evento" runat="server" CssClass="lnk" Text='<%# eval("id_evento") %>'
                Visible='<%# IIF(eval("id_evento")>0,true,false) %>'></asp:HyperLink>
            <asp:HyperLink ID="hyp_alquiler" runat="server" CssClass="lnk" Text='<%# eval("id_alquiler") %>'
                Visible='<%# IIF(eval("id_alquiler")>0,true,false) %>'></asp:HyperLink>    
            <asp:HyperLink ID="hyp_reporte" runat="server" CssClass="lnk" Text='<%# eval("id_reportetecnico") %>'
                Visible='<%# IIF(eval("id_reportetecnico")>0,true,false) %>'></asp:HyperLink>
            <asp:HyperLink ID="hyp_documento" runat="server" CssClass="lnk" Text='<%# eval("id_documento") %>'
                Visible='<%# IIF(eval("id_documento")>0,true,false) %>'></asp:HyperLink>
            <asp:Label ID="lbl_estadoEquipo" runat="server" CssClass="lbl" Text='<%# eval("id_estadoEquipo") %>'
                Visible='<%# IIF(eval("id_estadoEquipo")>0,true,false) %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField ShowHeader="False">
    <ItemTemplate>
    <asp:Image ID="imbEliminar" runat="server" CausesValidation="False" ImageUrl="~/images/iconos/noEliminable.gif" />
    </ItemTemplate>
    </asp:TemplateField>                
</Columns>
</asp:GridView>
</td>
</tr>
</table>
<boc:bocadillo ID="Bocadillo" runat="server" />