<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_informacionEquipos.ascx.vb"
Inherits="website.samm_componentes.controles_cnt_inc_informacionEquipos" %>
<%@ Register Src="~/controles/general/fechaAvanzada.ascx" TagName="fechaAvanzada" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="act" %>
<table>
<tr>
<td>
<cc1:BotonImagen ID="bti_atras" runat="server" CausesValidation="false" ImageUrl="~/images/botones/atras.png" />
<cc1:BotonImagen ID="bti_eliminar" runat="server" CausesValidation="false" ImageUrl="~/images/botones/quitar.gif" />
<cc1:BotonImagen ID="bti_actualizar" runat="server" CausesValidation="false" ImageUrl ="~/images/botones/actualizar.gif" />
</td>
</tr>
<tr>
<td>
<br />
<asp:Label ID="lbl_mensaje" runat="server" CssClass="lbl_mensaje"></asp:Label>
</td>
</tr>
<tr>
<td>
<asp:GridView ID="grd_equipos" runat="server" AutoGenerateColumns="False">
<Columns>
<asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="../../images/botones/seleccionargrilla.gif"
SelectText="->"></asp:CommandField>
<asp:TemplateField HeaderText="id">
<ItemTemplate>
<asp:Label ID="lbl_id_equipo" runat="server" Text='<%#eval("id_equipo") %>'></asp:Label></ItemTemplate>
<ItemStyle CssClass="invisible" />
<HeaderStyle CssClass="invisible" />
</asp:TemplateField>
<asp:BoundField HeaderText='<%$ Resources:res_campoGrilla,equ_equipo_equipo %>' DataField="equipo" />
<asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,equ_equipo_horometroactual %>'>
<ItemTemplate>
<asp:TextBox ID="txt_horometro" runat="server" CssClass="txt_numero" Text='<%# eval("horometro") %>'
Visible='<%# eval("manejaHorometro") %>'></asp:TextBox><asp:RequiredFieldValidator
ID="rfv_horometro" runat="server" ControlToValidate="txt_horometro" ForeColor=""
CssClass="lbl_mensaje" ValidationGroup="equipo" Enabled='<%# eval("manejaHorometro") %>'>*</asp:RequiredFieldValidator><act:filteredtextboxextender
id='ftb_horometro' runat='server' filtertype='Numbers,Custom' targetcontrolid='txt_horometro'>                                    </act:filteredtextboxextender>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,equ_equipo_promediohoras %>'>
<ItemTemplate>
<asp:TextBox ID="txt_promedio" runat="server" CssClass="txt_numero" Text='<%# eval("promedio") %>'
Visible='<%# eval("manejaHorometro") %>'></asp:TextBox><asp:RequiredFieldValidator
ID="rfv_promedio" runat="server" ControlToValidate="txt_promedio" ForeColor=""
CssClass="lbl_mensaje" ValidationGroup="equipo"  >*</asp:RequiredFieldValidator><asp:RangeValidator
ID="rng" runat="server" ControlToValidate="txt_promedio" CssClass="lbl_mensaje"
ValidationGroup="equipo" ForeColor='' Type='Double' MaximumValue="10000" MinimumValue="1"
>*</asp:RangeValidator><act:filteredtextboxextender
id='ftb_promedio' runat='server' filtertype='Numbers,Custom' targetcontrolid='txt_promedio'>                                        </act:filteredtextboxextender>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,equ_equipo_ultimalectura_fh %>'
ItemStyle-HorizontalAlign="Center">
<ItemTemplate>
<uc1:fechaAvanzada ID="fec" runat="server" a_str_prefijo="fh" FechaSeleccionada='<%# iif(eval("fecha").gettype().tostring()="System.DBNull",nothing,eval("fecha")) %>'
Visible='<%# eval("manejaHorometro") %>' />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$ Resources:res_nombreColumna,promedioVida %>' ItemStyle-HorizontalAlign="Center">
<ItemTemplate>
<asp:Label ID="lbl_vida" runat="server" Text='<%#eval("promedioVida") %>' Style="cursor: pointer;"></asp:Label></ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$ Resources:res_nombreColumna,promedioUltima %>'
ItemStyle-HorizontalAlign="Center">
<ItemTemplate>
<asp:Label ID="lbl_ultima" runat="server" Text='<%#eval("promedioUltima") %>' Style="cursor: pointer;"></asp:Label></ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,equ_equipo_promediohoras %>'
ItemStyle-HorizontalAlign="Center">
<ItemTemplate>
<asp:Label ID="lbl_equipo" runat="server" Text='<%#eval("promedio") %>' Style="cursor: pointer;"></asp:Label></ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText='<%$ Resources:res_campoGrilla,cat_catalogo_tempario_catalogo_tempario %>'>
<ItemTemplate>
<asp:LinkButton ID="lnk_temparios" runat="server" CommandArgument='<%#eval("id_temparios") %>'
CssClass='<%# IIF(eval("temparios")=0,"lbl_mensaje","lnk") %>' OnClick="Lnk_grilla_Click"
Text='<%#eval("temparios") %>' CausesValidation="false"></asp:LinkButton></ItemTemplate>
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
            <asp:ValidationSummary ID='vds_infoEquipos' runat='server' CssClass='lbl_mensaje'
                ForeColor='' ValidationGroup='equipo' />
        </td>
    </tr>
    <tr>
        <td>
            <cc1:BotonImagen ID="bti_guardargrilla" runat="server" ImageUrl="~/images/botones/guardar.gif"
                CausesValidation="false" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_finalizar" runat="server" Text='<%$Resources:res_etiquetas_cnt,finalizar %>'
                CssClass="lbl"></asp:Label><br />
            <cc1:BotonImagen ID="bti_generar" runat="server" ImageUrl="~/images/botones/aceptar.jpg"
                ValidationGroup="equipo" />
        </td>
    </tr>
</table>
