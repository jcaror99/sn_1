<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="filtro.ascx.vb" Inherits="website.samm_controles.controles_rep_filtro" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc2" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaMultiple" TagPrefix="mul" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<act:CollapsiblePanelExtender ID="clp_filtro" runat="server" TargetControlID="pnl_filtro"
CollapsedSize="0" Collapsed="True" ExpandControlID="imb_ext" CollapseControlID="imb_ext" TextLabelID="lbl_indicador"
AutoCollapse="False" AutoExpand="False" ScrollContents="false" ExpandedImage="../../images/menu/lnk_menos.png"
CollapsedImage="../../images/menu/lnk_mas.png" ImageControlID="imb_ext" ExpandDirection="Vertical">
</act:CollapsiblePanelExtender>
<img alt="" id="imb_ext" src="../../images/menu/lnk_mas.png" runat="server"/>
<asp:Label ID="lbl_indicador" runat="server" CssClass="lbl"></asp:Label>
<asp:Panel ID="pnl_filtro" runat="server">
<table id="tbl_filtro" runat="server" class="tbl_marcoFormulario" style="width:100%;">
    <tr>
        <td>
            <asp:DataList ID="grd_filtro" runat="server" CellPadding="3" RepeatColumns="2" ItemStyle-CssClass="td_controlesFormulario">
                <ItemTemplate>
                            <td align="right" class='td_lblFormulario' style="width: 100px; text-align:right;">
                                            <asp:Label ID="lbl_buscar" runat="server" CssClass="lbl" Text='<%# eval("label") %>' style="white-space:nowrap"></asp:Label>&nbsp;
                                               <asp:Label ID="lbl_campo" runat="server" CssClass="lbl" Text='<%# eval("campo") %>'
                                                Visible="false"></asp:Label>                                          
                            </td>
                            <td class='td_controlesFormulario'>
                                <table cellspacing='0'>
                                    <tr runat="server" visible='<%# IIF(eval("tipo")="texto",True,False) %>'>
                                        <td>
                                            <asp:TextBox ID="txt_texto" runat="server" Text='<%#eval("valor") %>' CssClass="txt_formulario_bus" Visible='<%# IIF(eval("tipo")="texto",True,False) %>'></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr runat="server" visible='<%# IIF(eval("tipo")="numero",True,False) %>'>
                                        <td>
                                            <table cellpadding='0' cellspacing='0'>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="txt_numero" runat="server" Text='<%#eval("valor") %>' CssClass="txt_numero_bus" Visible='<%# IIF(eval("tipo")="numero",True,False) %>'></asp:TextBox>
                                                        <act:FilteredTextBoxExtender ID ='ftb_numero' runat = 'server' TargetControlID = 'txt_numero' FilterType='Numbers,Custom' />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID='txt_numero_bus' runat='server' CssClass='txt_numero_bus'></asp:TextBox>
                                                        <act:FilteredTextBoxExtender ID ='ftb_numero_bus' runat = 'server' TargetControlID = 'txt_numero_bus' FilterType='Numbers,Custom' />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                  <tr id="Tr2" runat="server" visible='<%# IIF(eval("tipo")="fecha" or eval("tipo")="fh",True,False) %>'>
                                        <td>
                                            <asp:Label ID='lbl_busDesde' runat='server' CssClass='lbl' Text='<%$Resources:res_controles,desde %>'
                                                Visible='<%# IIF(eval("tipo")="numero" or eval("tipo")="fecha" or eval("tipo")="fh",True,False) %>' style="white-space:nowrap"></asp:Label>
                                                        <uc1:fechaAvanzada ID="fec_fecha" runat="server" FechaSeleccionada='<%#IIF(IsDate(eval("valor")),eval("valor"),Nothing) %>' Visible='<%# IIF(eval("tipo")="fecha" or eval("tipo")="fh",True,False) %>' CssClass='txt_fecha_bus' CssClassHora="txt_hora_bus"
                                                        a_str_prefijo='<%# IIF(eval("tipo")="fecha","ff","fh") %>' a_bln_obligatorio="false"  />
                                                       <asp:Label ID='lbl_busA' runat='server' CssClass='lbl' visible='<%# IIF(eval("tipo")="numero" or eval("tipo")="fecha" or eval("tipo")="fh",True,False) %>' Text='<%$Resources:res_controles,a %>' style="white-space:nowrap"></asp:Label>
                                                        <uc1:fechaAvanzada ID="fec_fecha_bus" runat="server" FechaSeleccionada='<%#IIF(IsDate(eval("valor_2")),eval("valor_2"),Nothing) %>' Visible='<%# IIF(eval("tipo")="fecha" or eval("tipo")="fh",True,False) %>' CssClass='txt_fecha_bus'
                                                        CssClassHora='txt_hora_bus' a_str_prefijo='<%# IIF(eval("tipo")="fecha","ff","fh") %>' a_bln_obligatorio="false" />
                                                    
                                        </td>
                                    </tr>
                                    
                                         <tr id="Tr1" runat="server" visible='<%# IIF(eval("tipo")="lista" or eval("tipo")="mul",True,False) %>'>
                                        <td>
                                            <asp:Label ID='lbl_filtro' runat='server' visible='false' Text='<%#eval("filtro") %>'></asp:Label>
                                            <asp:Label ID='lbl_valor' runat='server' visible='false' Text='<%#eval("valor") %>'></asp:Label>
                                         <uc2:busquedaAvanzada ID="bus_avanzada" runat="server" a_str_tabla='<%# eval("tabla") %>'
                                                CssClass="_bus" Onseleccionar="s_ejecutarFiltro" Visible='<%# IIF(eval("tipo")="lista",True,False) %>' />
                                                           
                                           <mul:busquedaMultiple ID="bus_multiple" runat="server" a_str_tabla='<%# eval("tabla") %>' Visible='<%# IIF(eval("tipo")="mul",True,False) %>' 
                                            Onseleccionar="s_ejecutarFiltro" a_bln_obligatorio="false"     />

                                        </td>
                                    </tr>
                                    <tr runat="server" visible='<%# IIF(eval("tipo")="bit",True,False) %>'>
                                        <td>
                                            <asp:RadioButtonList ID='rbl_bit' runat='server' CssClass='rbl' 
                                                RepeatDirection='Horizontal' RepeatLayout='Flow' visible='<%# IIF(eval("tipo")="bit",True,False) %>'>
                                                    <asp:ListItem Value='1' Text='<%$ Resources:res_etiquetas,si %>'></asp:ListItem>
                                                    <asp:ListItem Value='0' Text='<%$ Resources:res_etiquetas,no %>'></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
    <tr id="tr_filtros" runat="server">
        <td style="background-color:White; text-align: left;" align="right">
            <asp:Label ID="lbl_opciones" runat="server" Text="<%$Resources:res_reportes,opciones %>"></asp:Label>
            <asp:CheckBoxList
                ID="cblOpciones" runat="server" CellPadding="0" CellSpacing="0" CssClass="cbl"
                RepeatColumns="3">
            </asp:CheckBoxList></td>
    </tr>
    <tr runat="server" visible="false">
        <td>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lbl_ordenamiento" runat="server" CssClass='lbl' Text='<%$ Resources:res_etiquetas_rep,campoOrdenamiento %>'></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drp_ordenamiento" CssClass='drp' runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Label ID="lbl_agrupamiento" runat="server" CssClass='lbl' Text='<%$ Resources:res_etiquetas_rep,campoAgrupamiento%>'></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drp_agrupamiento" CssClass='drp' runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            
        </td>
    </tr>
    <tr id="tr_topIndicador" runat="server">
        <td>
            <asp:Label ID="lbl_topIndicador" runat="server" CssClass="lbl" Text="Seleccione el TOP de registros"></asp:Label>
            <asp:DropDownList ID="drp_topIndicador" runat="server" CssClass="drp">
                <asp:ListItem Selected="True" Value="5">5</asp:ListItem>
                <asp:ListItem Value="10">10</asp:ListItem>
                <asp:ListItem Value="15">15</asp:ListItem>
                <asp:ListItem Value="0" Text='<% $Resources:res_controles,todos %>'></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr id="trOpcionesIndicador" runat="server">
        <td>
            <asp:DropDownList ID="drpTipoGrafico" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td align="right" style="background-color: white">
            <asp:CheckBox ID="chb_exportar" runat="server" Text='<% $Resources:res_controles,exportarExel %>'></asp:CheckBox><br />
            <cc1:BotonImagen ID="bti_aceptar" runat="server" ImageUrl="~/images/botones/aceptar.jpg" /><br />
            <asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
        </td>
    </tr>
</table>
</asp:Panel>