<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="recordatorios.ascx.vb" Inherits="website.samm_componentes.controles_paginaInicio_recordatorios" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName="tabsPersonalizados" TagPrefix="uc3" %>
<%@ Register Src="../doc/pop_documentoComentario.ascx" TagName="Comentarios" TagPrefix="uc5" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="uc6" %>
<%@ Register Src="~/controles/general/tabs.ascx" TagName="tabs" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzada.ascx" TagName="busquedaAvanzada" TagPrefix="uc4" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc2" %>


<table>
    <tr>
        <td valign="top">
            <asp:Image ID="img_home" runat="server" Visible="False"  />
        </td>
        <td>
            <table id="tbl_filtro" runat="server" style="background: #ffffff;">
                <tr>
                    <td>
                        <asp:GridView ID="grd_buscar" runat="server" AutoGenerateColumns="False" GridLines="None"
                            CellPadding="3" ShowHeader="false" BackColor="white">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_codigo" runat="server" CssClass="invisible" Text='<%# eval("codigo") %>'></asp:Label>
                                        <asp:Label ID="lbl_campo" runat="server" CssClass="invisible" Text='<%# eval("campo") %>'></asp:Label>
                                        <asp:Label ID="lbl_buscar" runat="server" CssClass="lbl" Text='<%# eval("label") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Right" />
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <table>
                                            <tr runat="server" id="tr_texto" visible='<%# IIF(eval("tipo")=samm_logica.enu_tipoCampo.texto,true,false) %>'>
                                                <td>
                                                    <asp:TextBox ID="txt_buscar" runat="server" CssClass="txt_formulario_bus"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr runat="server" id="tr_numero" visible='<%# IIF(eval("tipo")=samm_logica.enu_tipoCampo.numero,true,false) %>'>
                                                <td>
                                                    <asp:TextBox ID="txt_numero" runat="server" CssClass="txt_numero_bus"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr id="tr_drop" runat="server" visible='<%# IIF(eval("tipo")=samm_logica.enu_tipoCampo.foranea,true,false) %>'>
                                                <td>
                                                    <uc4:busquedaAvanzada ID="bus_buscar" visible='<%# IIF(eval("tipo")=samm_logica.enu_tipoCampo.foranea,true,false) %>'
                                                     a_str_tabla='<% # eval("tabla") %>' CssClass="_bus" runat="server" />
                                                </td>
                                            </tr>
                                            <tr id="tr_fecha" runat="server" visible='<%# IIF(eval("tipo")=samm_logica.enu_tipoCampo.fecha,true,false) %>'>
                                                <td>
                                                    <table>
                                                        <tr>
                                                            <td style="white-space: nowrap;">
                                                                <asp:Label ID="lbl_desde" runat="server" CssClass='lbl' Text='<%$Resources:res_controles,desde %>'></asp:Label>
                                                            </td>
                                                            <td style="white-space: nowrap;">
                                                                <uc2:fechaAvanzada ID="fec_buscar" runat="server" CssClass='txt_fecha_bus' CssClassHora='txt_hora_bus' />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lbl_hasta" runat="server" CssClass='lbl' Text='<%$Resources:res_controles,a %>'></asp:Label>
                                                            </td>
                                                            <td>
                                                                <uc2:fechaAvanzada ID="fec_buscar1" runat="server" CssClass='txt_fecha_bus' CssClassHora='txt_hora_bus' />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr id="tr_bit" runat="server" visible='<%# IIF(eval("tipo")=samm_logica.enu_tipoCampo.bit,true,false) %>'>
                                                <td>
                                                    <asp:RadioButtonList ID="rbl_buscar" runat="server" CssClass='lbl' RepeatDirection="Horizontal" CellPadding="0" CellSpacing="0" RepeatLayout="Flow">
                                                        <asp:ListItem Value="1" Text='<%$Resources:res_etiquetas,si %>'></asp:ListItem>
                                                        <asp:ListItem Value="0" Text='<%$Resources:res_etiquetas,no %>'></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr id="Tr1" runat="server" Visible="false" >
                                                <td>
                                                    <asp:Label ID="lbl_atributo" runat="server" Visible="false" Text='<%# eval("atributo") %>'></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:TemplateField>
                                <asp:TemplateField></asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <cc1:BotonImagen ID="bti_filtro" runat="server" CausesValidation="false" ImageUrl="~/images/botones/aceptar.jpg" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <table>
                 <tr>
                    <td>
                        <uc3:tabsPersonalizados ID="tbp" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="grd_link" runat="server" AutoGenerateColumns="False" ShowHeader='false'
                            GridLines="None"  >
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                    <asp:LinkButton ID="lnk_item" D="lnk" runat="server" CssClass="lnk" text='<%# eval("link") %>' CommandArgument ='<%#eval("id") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:LinkButton ID="lnk_cantidad" runat="server" CssClass="lnk" Text='<%# eval("cantidad") %>' CommandArgument ='<%#eval("id") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                     </td>
                </tr>
            </table>

        </td>
    </tr>
</table>          
           
           
           
           
           





