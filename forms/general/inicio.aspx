<%@ Page Language="VB" AutoEventWireup="false" CodeBehind="inicio.aspx.vb" Inherits="website.samm_web.forms_general_inicio" 
MasterPageFile="~/master/master/mas_FormularioSinGrilla.master" %>
<%@ Register Src="~/controles/general/popup.ascx" TagName="popup" TagPrefix="popC" %>
<%@ Register Src="~/controles/paginaInicio/recordatorios.ascx" TagName="record" TagPrefix="record" %>
<%@ Register Src="~/controles/paginaInicio/marco.ascx" TagName="marco" TagPrefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_general" runat="server">
	<link href="../../css/samm/home.css" rel="stylesheet" type="text/css" />
    <popC:popup  ID="popupInterno" runat='server'/> 
	<table style="height:100%;width:100%" cellspacing="0" cellpadding="0"  border="0">
		<tr>
			<td valign="top" align="middle">
				<div align="center">
					<table class="containerHome">
						<tr class="bloquehome">
							<td>
								<div class="bloqueone">
									<asp:DataList ID="dtlItemsMenu1" runat="server" >
									<ItemTemplate>
									<uc3:marco ID="Marco1" runat="server" a_str_titulo='<%#Eval("bloqueHome") %>' a_str_nombreControl='<%#Eval("nombrecontrol") %>'
									a_bol_esGenerico='<%#Eval("generico") %>' a_str_colorModulo='<%#Eval("color") %>' a_str_filtro='<%#Eval("filtro") %>'
									a_str_urlBusqueda='<%#Eval("urlBusqueda") %>' a_str_urlNuevo='<%#Eval("urlNuevo") %>' a_int_idRegistro='<%#Eval("id") %>' />
									</ItemTemplate>
									<SeparatorTemplate>&nbsp;</SeparatorTemplate>
									</asp:DataList>
								</div>
							</td>
							<td>
								<div class="bloquetwo">
									<asp:DataList ID="dtlItemsMenu2" runat="server">
									<ItemTemplate>
									<uc3:marco ID="Marco1" runat="server" a_str_titulo='<%#Eval("bloqueHome") %>' a_str_nombreControl='<%#Eval("nombrecontrol") %>'
									a_bol_esGenerico='<%#Eval("generico") %>' a_str_colorModulo='<%#Eval("color") %>' a_str_filtro='<%#Eval("filtro") %>'
									a_str_urlBusqueda='<%#Eval("urlBusqueda") %>' a_str_urlNuevo='<%#Eval("urlNuevo") %>' a_int_idRegistro='<%#Eval("id") %>' />
									</ItemTemplate>
									<SeparatorTemplate>&nbsp;</SeparatorTemplate>
									</asp:DataList>
								</div>
							</td>
							<td>
								<div class="bloquethree">
									<asp:DataList ID="dtlItemsMenu3" runat="server">
									<ItemTemplate>
									<uc3:marco ID="Marco1" runat="server" a_str_titulo='<%#Eval("bloqueHome") %>' a_str_nombreControl='<%#Eval("nombrecontrol") %>'
									a_bol_esGenerico='<%#Eval("generico") %>' a_str_colorModulo='<%#Eval("color") %>' a_str_filtro='<%#Eval("filtro") %>'
									a_str_urlBusqueda='<%#Eval("urlBusqueda") %>' a_str_urlNuevo='<%#Eval("urlNuevo") %>' a_int_idRegistro='<%#Eval("id") %>' />
									</ItemTemplate>
									<SeparatorTemplate>&nbsp;</SeparatorTemplate>
									</asp:DataList>
								</div>							
							</td>
						</tr>
					</table>
					</div>
				</td>
		</tr>
	</table>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_tituloPagina" runat="server">
	<asp:label runat="server" ID="lbl_titulo" Text="<%$ Resources: res_etiquetas,homeTitulo %>"  CssClass='lbl_titulo' ></asp:label>
</asp:Content>                                        
