<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="inc_equiposSucursal.ascx.vb" Inherits="website.samm_componentes.controles_ter_inc_equiposSucursal" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="gri" %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>

<table>
    <tr>
        <td>
            <bti:BotonImagen ID="bti_nuevo" runat="server" ImageUrl="../../images/botones/agregar.gif"
                CausesValidation="false" />
            <bti:BotonImagen ID="bti_editar" runat="server" ImageUrl="../../images/botones/editar.gif"
                CausesValidation="false" />
            <bti:BotonImagen ID="bti_actualizar" runat="server" CssClass="imb" ImageUrl="~/images/botones/actualizar.png"
                CausesValidation="false" />                
        </td>
    </tr>
            <asp:Label ID='lbl_equipo' runat='server' CssClass='lbl'></asp:Label>
            <asp:TextBox ID='txt_equipo' runat='server' MaxLength='100' CssClass='txt'></asp:TextBox>
            <bti:BotonImagen ID="btn_buscar" runat="server" ImageUrl="../../images/botones/buscarBA.gif"
                CausesValidation="false" />
            <gri:grilla ID="gri_equipos" runat="server" a_bln_paginacionNormal="true"></gri:grilla> 
    <asp:GridView ID="grd_equiposSucursal" runat="server" AllowPaging="false" PagerSettings-Mode="Numeric" AutoGenerateColumns="false" a_bln_paginacionNormal ="true">
<Columns >
<asp:TemplateField>
<ItemTemplate>
<asp:Label ID="lbl_id" runat="server" Text='<%#  Eval("id") %>' Visible="false"></asp:Label>
<asp:Label ID="lbl_campo" runat="server" Visible="false"></asp:Label>
<asp:CheckBox ID="chb_seleccionar" runat="server" />
</ItemTemplate>
<HeaderTemplate>
<asp:CheckBox ID="chb_seleccionar" runat="server"  />
</HeaderTemplate>
</asp:TemplateField>
<asp:TemplateField >
<ItemTemplate>
<asp:Image id ="garantia" runat ="server"  Visible='<%# Eval("garantia") %>'  ImageUrl= "../../images/iconos/garantia_gri.gif" />
</ItemTemplate>
</asp:TemplateField  >
<asp:BoundField DataField="equipo" HeaderText="res_metadata,equ_equipo_equipo" />
<asp:BoundField DataField="equipo_serial" HeaderText="res_metadata,equ_equipo_equipo_serial"  />
<asp:BoundField DataField="cat_catalogo.equipo_catalogo.equipo" HeaderText="res_metadata,cat_catalogo_equipo_catalogo_equipo" />
<asp:BoundField DataField="cat_versionequipo_versionequipo" HeaderText="res_metadata,cat_versionequipo_versionequipo" />
<asp:BoundField DataField="cat_sistema_sistema" HeaderText="res_metadata,cat_sistema_sistema" />
<asp:BoundField DataField="ter_tercero_tercero" HeaderText="res_metadata,ter_tercero_tercero" />

<asp:BoundField DataField="gen_zona_zona" HeaderText="res_metadata,gen_zona_zona" />
<asp:BoundField DataField="ter_tercero_comprador_tercero" HeaderText="res_metadata,ter_tercero_tercero_comprador" />
<asp:BoundField DataField="ter_tercero_comprador_tercero_nombrecorto" HeaderText="res_metadata,ter_tercero_usuario_tercero_usuario" />
<asp:BoundField DataField="ubicacion" HeaderText="res_metadata,ubicacion" />
<asp:BoundField DataField="horometroactual" HeaderText="res_metadata,cat_catalogo_equipo_manejahorometro" />
<asp:BoundField DataField="vencimientoGarantiaDistribuidor_ff" HeaderText="res_metadata,equ_equipo_vencimientogarantiadistribuidor_ff" />
<asp:BoundField DataField="garantiaCancelada" HeaderText="res_metadata,equ_equipo_garantiacancelada" />
<asp:BoundField DataField="maneja" HeaderText="res_metadata,cat_catalogo_equipo_manejahorometro" />
<asp:BoundField DataField="cat_catalogo.equipo_garantiaHoras" HeaderText="res_metadata,cat_catalogo_equipo_garantiahoras" />
<asp:BoundField DataField="ter_sucursal_sucursal" HeaderText="res_metadata,ter_sucursal_sucursal" />
</Columns>
<FooterStyle CssClass="gri_pie" />
<RowStyle CssClass="gri_item" />
<HeaderStyle CssClass="gri_titulo" />
<AlternatingRowStyle CssClass="gri_itemAlterno" />
<SelectedRowStyle CssClass="gri_itemSeleccionado" />
<PagerStyle CssClass="gri_paginacion" />
</asp:GridView> 
<asp:Panel id="editar_equipos" runat ="server" CssClass="pnl" GroupingText="1">           
        <asp:CheckBox id="chkdireccion" runat="server" CssClass="lbl" Checked = true >
        </asp:CheckBox>
        <asp:CheckBox id="chktelefono" runat="server" CssClass="lbl" Checked =true>
        </asp:CheckBox>
        <asp:CheckBox id="chkcontacto" runat="server" CssClass="lbl" Checked =true>
        </asp:CheckBox>
        <asp:CheckBox id="chkzona" runat="server" CssClass="lbl" Cheked = true>
        </asp:CheckBox>
        <br><br/>
        <bti:BotonImagen ID="bti_actualizarInfo" runat="server" CssClass="imb" ImageUrl="~/images/botones_rol/aceptar.png"
                CausesValidation="false" />             
</asp:Panel> 
</table>
