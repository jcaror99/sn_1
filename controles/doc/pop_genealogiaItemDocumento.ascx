<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="pop_genealogiaItemDocumento.ascx.vb" Inherits="website.samm_componentes.controles_doc_pop_genealogiaItemDocumento" %>
<%@ Register Src='~/controles/general/busquedaAvanzada.ascx' TagName='busquedaAvanzada' TagPrefix='bus' %>
<%@ Register Assembly='controles' Namespace='controles' TagPrefix='bti' %>
<%@ Register Src='~/controles/general/fechaAvanzada.ascx' TagName='fechaAvanzada' TagPrefix='fec' %>
<%@ Register Assembly='AjaxControlToolkit' Namespace='AjaxControlToolkit' TagPrefix='act' %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="pop" %>
<%@ Register Src="~/controles/general/textoAvanzado.ascx" TagName="textoAvanzado" TagPrefix="uc1" %>
<style>
    div.container-genealogia {
        margin-right: 5%;
    }

    div.genealogia {
        display: inline-block;
        width: 50%;
        height: auto;
        text-align: center;
        margin-bottom: 3%;
    }

    div.genealogia-asc {
        float: left;
    }

    div.genealogia-desc {
        float: right;
    }

    div.genealogia span {
        font-size: 11px;
        font-weight: bold;
    }

    .table-grid-genealogia {
        width: 100%;
    }
</style>

<div class="container-genealogia">
    <div class="genealogia genealogia-asc">

        <asp:Label ID="lbl_genealogiaAsc" runat="server"  CssClass=""></asp:Label>
        <p id="span_asc" runat="server">-</p>
        <asp:GridView ID="grd_itemDocumento_asc" runat="server" AutoGenerateColumns="False" ShowHeader="true"
            ShowFooter="false" BorderStyle="None" GridLines="None" CssClass="table-grid-genealogia">
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <a href="<%#Eval("urlItemDocumento") %>" target="_blank"><%#Eval("documento") %></a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <div class="genealogia genealogia-desc">
        <asp:Label ID="lbl_genealogiaDesc" runat="server" CssClass=""></asp:Label>
        <p id="span_desc" runat="server">-</p>
        <asp:GridView ID="grd_itemDocumento_desc" runat="server" AutoGenerateColumns="False" ShowHeader="false"
            ShowFooter="false" BorderStyle="None" GridLines="None" CssClass="table-grid-genealogia">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <a href="<%#Eval("urlItemDocumento") %>" target="_blank"><%#Eval("documento") %></a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</div>
<pop:popup ID="pop" runat="server" />
