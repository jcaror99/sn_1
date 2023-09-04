<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="pop_temparios.ascx.vb"
    Inherits="website.samm_componentes.controles_cnt_pop_temparios" %>
<%@ Register Src="~/controles/general/grilla.ascx" TagName="grilla" TagPrefix="uc1" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="cc1" %>
<%@ Register src="~/controles/general/fechaAvanzada.ascx" tagname="fechaAvanzada" tagprefix="uc2" %>
<asp:Label ID="lbl_total" runat="server" CssClass="lbl"></asp:Label><br /><br />
<asp:GridView ID="grd_tempario" runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:TemplateField HeaderText='res_campogrilla,cat_catalogo_tempario_catalogo_tempario'>
            <ItemTemplate>
                <asp:Label ID="lbl_id" runat="server" CssClass="invisible" 
                    Text='<%# eval("id") %>'></asp:Label>
                <asp:Label ID="lbl_tempario" runat="server" CssClass="lbl" 
                    Text='<%# eval("tempario") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText='res_campogrilla,cat_catalogo_tempario_proyectar'>
            <ItemTemplate>
                <asp:CheckBox ID="chb_proyectar" runat="server" 
                    Checked='<%# eval("proyectar") %>' />
            </ItemTemplate>
        </asp:TemplateField>
         <asp:TemplateField HeaderText='res_etiquetas_cnt,ultimomantenimiento'>
            <ItemTemplate>
             <uc2:fechaAvanzada ID="fec_ultimo" runat ="server" a_str_prefijo="fh" Visible='<%# eval("ultimo") %>'  FechaSeleccionada='<%#  eval("fechaman") %>' />
             <asp:Label ID="lbl_ultimo" runat="server" CssClass="invisible" Text ='<%# eval("ultimo") %>' ></asp:Label>
             <uc2:fechaAvanzada ID="fec_ultimoHora" a_bol_deshabilitar='<%# IIF(eval("ot")="|||","false","true") %>' runat ="server" a_str_prefijo="fh" Visible='<%# IIF(eval("esHora") and eval("ot")="|||",True,False) %>' />
             <uc2:fechaAvanzada ID="fec_ultimoHora_blo" a_bol_deshabilitar='<%# IIF(eval("ot")="|||","false","true") %>' runat ="server" a_str_prefijo="fh" Visible='<%# IIF(eval("esHora") and eval("ot")<>"|||",True,False) %>' FechaSeleccionada='<%# IIF(eval("ot")="|||","1/01/00 00:00",eval("ot").Split("|")(3)) %>'/>
             <asp:TextBox ID="txt_horometro" Enabled='<%# IIF(eval("ot")="|||",True,False) %>' Text='<%# eval("ot").Split("|")(2) %>' runat="server" CssClass="txt_numero" Visible='<%# eval("esHora") %>'></asp:TextBox>
             <asp:HyperLink id="hpr_linkOT" NavigateUrl='<%# "../../forms/doc/doc_documento_ot.aspx?id=" & eval("ot").Split("|")(0) %>' Text='<%# eval("ot").Split("|")(1) %>' target="_blank" runat="server"/>
             <asp:Label ID="lbl_esHora" runat="server" CssClass="invisible" Text ='<%# IIF(eval("ot")="|||","True","False") %>' ></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle CssClass="gri_pie" />
    <RowStyle CssClass="gri_item" />
    <PagerStyle CssClass="gri_paginacion" />
    <HeaderStyle CssClass="gri_titulo" />
    <AlternatingRowStyle CssClass="gri_itemAlterno" />
    <SelectedRowStyle CssClass="gri_itemSeleccionado" />
</asp:GridView><br /><br />
<cc1:BotonImagen ID="bti_aceptar" OnClientClick="javascript:if(!confirm('¿Ejecutar cambios realizados?')){return false;};" runat="server" ImageUrl="~/images/botones/aceptar.jpg"
                ValidationGroup="equipos" />
                
<asp:Label ID="lbl_mensaje" runat="server" Text="" CssClass="lbl_mensaje"></asp:Label>
