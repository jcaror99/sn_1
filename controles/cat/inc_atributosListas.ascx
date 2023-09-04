<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_atributosListas.ascx.vb" Inherits="website.samm_componentes.controles_cat_inc_atributosListas" %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Src='~/controles/general/textoAvanzado.ascx' TagName='textoAvanzado' TagPrefix='txt' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Src="~/controles/general/bocadillo.ascx" TagName="bocadillo" TagPrefix="boc" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="uc1" %>
<%@ Register Src="~/controles/general/busquedaAvanzadaMultiple.ascx" TagName="busquedaAvanzadaMultiple"
    TagPrefix="uc2" %>

<table class='tbl_marcoFormulario'>
    <tr>
        <td>
            <table class='tbl_formulario' border='0' cellpadding='0' cellspacing='0'>
                <table>
                    <tr>
                        <td>

                            <tr>
                                <td class='td_lblFormulario'>
                                    <asp:Label ID='lbl_pruebaCheckList' runat='server' CssClass='lbl'></asp:Label>
                                </td>
                                <td class='td_controlesFormulario'>
                                    <bus:busquedaAvanzada ID='bus_seccionAtributo' runat='server' a_str_tabla='cat_seccionAtributo' a_bol_postBack="true"
                                        a_str_grupoValidacion='form' />
                                </td>
                                <td></td>
                            </tr>

                            <tr>
                                <td class='td_lblFormulario'>
                                    <asp:Label ID='lbl_pruebaCheckList_codigo' runat='server' CssClass='lbl'></asp:Label>
                                </td>
                                <%--<td class='td_controlesFormulario'>
<bus:busquedaAvanzada ID='bus_atributo' runat='server' a_str_tabla='cat_atributo'
 a_str_grupoValidacion='form'  />
</td> --%>
                                <td class='td_controlesFormulario'>
                                    <uc2:busquedaAvanzadaMultiple ID="bus_atributo" runat="server" a_bol_postBack="true" a_str_tabla="cat_atributo"
                                        a_str_campo="atributo,atributo_codigo" />
                                </td>
                                <td></td>
                            </tr>

                            <%--<tr>  
<td class='td_lblFormulario'>
</td>
<td class='td_controlesFormulario'>
<bti:BotonImagen ID='imb_guardarAtributo' runat='server' ImageUrl='../../images/botones/aceptar.png'  ValidationGroup='form'  CssClass='imb'/>
</td>        
<td>
</td>
</tr>--%>
                        </td>
                    </tr>
                </table>
            </table>
        </td>
    </tr>
</table>

<table>
    <tr>
        <td>
            <bti:BotonImagen ID="imb_eliminarAtributo" runat="server" CausesValidation="false" ImageUrl="../../images/botones/quitar.gif" />
        </td>
    </tr>
</table>

<table>
    <tr>
        <td colspan="2">

            <asp:GridView ID="gri_atributos" runat="server" AllowPaging="false" AutoGenerateColumns="false" ShowHeader='true'>

                <Columns>
                    <asp:TemplateField Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lbl_id" runat="server" Visible="false" Text='<%# bind("id") %>'> </asp:Label>
                            <asp:Label ID="lbl_id_atributo" runat="server" Visible="false" Text='<%# bind("id_atributo") %>'> </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:CheckBox ID="chb_seleccionar" runat="server" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="chb_seleccionar" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_etiquetas,Atributo_Atributo">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Atributo" runat="server" Text='<%# bind("Atributo_Atributo") %>' Font-Bold='<%# iif(Eval("id_atributo")=0,true,false) %>'> </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_etiquetas,Atributo_Codigo">
                        <ItemTemplate>
                            <asp:Label ID="lbl_AtributoCodigo" runat="server" Text='<%# bind("Atributo_Codigo") %>'> </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_etiquetas,Atributo_TipoAtributo">
                        <ItemTemplate>
                            <asp:Label ID="lbl_TipoAtributo" runat="server" Text='<%# bind("Atributo_TipoAtributo") %>'> </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="res_etiquetas,Atributo_Orden">
                        <ItemTemplate>
                            <%--  <asp:Label ID="lbl_OrdenAtributo" runat="server" Text='<%# bind("Atributo_Orden") %>' > </asp:Label>--%>
                            <asp:TextBox ID='txt_OrdenAtributo' runat='server' Text='<%# eval("Atributo_Orden") %>'
                                CssClass='txt_numeroGrilla' Enabled='<%# IIF(Eval("id_atributo") = 0, False, True) %>' Visible='<%# IIF(Eval("id_atributo") = 0, False, True) %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <%--Estilos!!!--%>
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

<table>
    <tr>
        <td>
            <asp:TreeView ID="trv_atributos" runat="server" ShowCheckBoxes="Leaf" EnableClientScript="false" LineImagesFolder="../../images/treelineimages" ShowLines="True" SkipLinkText="a">
                <SelectedNodeStyle CssClass="tre_seleccionado" />
                <RootNodeStyle CssClass="tre_raiz" />
                <NodeStyle CssClass="tre_nodo" />
            </asp:TreeView>
        </td>
    </tr>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_aceptar" runat="server" CausesValidation="false" ImageUrl="../../images/botones/aceptar.png" />
        </td>
    </tr>
</table>
