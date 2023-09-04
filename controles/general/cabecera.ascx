<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="cabecera.ascx.vb" Inherits="website.samm_controles.controles_general_cabecera" %>
<link href="../../css/samm/cabecera.css?mr" type="text/css" rel="stylesheet" />
<link href="../../css/samm/detalleVersion.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../js/samm7/jquery-2.2.4.js"></script>
<script type="text/javascript" src="../../js/Interfaz/detalleVersion.js"></script>
<script type="text/javascript" src="../../js/bootstrap/jquery.js"></script>
<script type="text/javascript" src="../../js/bootstrap/bootstrap.min.js"></script>
<div class="container stiloDivCabecera _TST">
	<div class="descripcion">
		<div class="roles">
			<div class="logos">
			    <div class="contenedor"></div>
			
			    <div class="image_container">
			    	<img class="vacio" id="img_clienteT" runat="server" alt="LogoEmpresa" />
			    	<img class="foto" alt="foto"  src="../../images/personajes/no-foto.jpg" id="imgCargoT" runat="server" />
			    </div>
    			
			</div>
			<div class="descripcion_perfil">
				<ul>
					
					<li><asp:HyperLink ID="hpl_usuarioT" runat="server" CssClass="lnkUsuario"></asp:HyperLink></li>
					<li><asp:Label ID="lblPerfilT" runat="server"></asp:Label></li>
					<li><asp:Label ID="lblTiempoT" runat="server" Text="" Visible="false"></asp:Label></li>
					<li><asp:DropDownList ID="drpEmpresaT" runat="server" AutoPostBack="True" CssClass="comboBoxEmpresa"></asp:DropDownList></li>
					<li><asp:Label ID="lbl_empresaT" runat="server" Visible="false"></asp:Label></li>
					<li class="logout"><asp:HyperLink ID="HyperLink2T" runat="server" NavigateUrl="~/forms/publica/logout.aspx">cerrar sesion</asp:HyperLink></li>

				</ul>
			</div>
		</div>
	</div>
</div>

<table cellspacing="0" cellpadding="0" class="stiloDivCabecera _TSTR">
	<tr class="new_menu">
	<td class="space"></td>
		<td valign="middle">
			<img id="img_cliente" runat="server" width="160" height="40" alt="-" class="imgCliente" />
		</td>
		<td class="tdTexto">
			<asp:HyperLink ID="hpl_usuario" runat="server" CssClass="lnkUsuario"></asp:HyperLink><br />
			<asp:Label ID="lblPerfil" runat="server"></asp:Label>
			<asp:Label ID="lblTiempo" runat="server" Text="" Visible="false"></asp:Label><br />
			<asp:DropDownList ID="drpEmpresa" runat="server" AutoPostBack="True" CssClass="comboBoxEmpresa"></asp:DropDownList>
			<asp:Label ID="lbl_empresa" runat="server" Visible="false"></asp:Label>
		</td>
		<td class="foto" style="width:5%;padding:2px 4px 2px 4px">
			<img alt="foto" style="width: 45px" src="../../images/personajes/no-foto.jpg" id="imgCargo" runat="server" />
		</td>
		<td valign="top" align="center" width="1%" bgcolor="#ffffff">
            <table>
                <tr>
                    <td style="text-align: center;">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/forms/publica/logout.aspx"
                            ImageUrl="~/images/cabecera/bt_cerrar_sesion_2.jpg"></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center;">
                        <asp:Image ID="bti_detalleVersion_updated" ToolTip="Sammweb actualizado" CssClass="bti_detalleVersion" runat="server" ImageUrl="../../images/iconos/detalleVersion_updated.png"
                            alt="Sammweb actualizado" />
                        <asp:Image ID="bti_detalleVersion_outdated" ToolTip="Sammweb desactualizado" CssClass="bti_detalleVersion" runat="server" ImageUrl="../../images/iconos/detalleVersion_outdated.png"
                            alt="Sammweb desactualizado" />
                    </td>
                </tr>
            </table>			
		</td>
	</tr>
</table>
<asp:Panel runat="server" ID="panelDetalleVersion" CssClass="panelDetalleVersion"
    Style="display: none">
    <asp:Table ID="tbl_final" runat="server">
        <asp:TableRow>
            <asp:TableCell CssClass="cabeceraDetalleVersion">
            <span><i class="fa fa-user-circle-o fa-lg" aria-hidden="true"></i></span>
            <asp:Label ID="lblBocadilloVers" runat="server"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ID="tcll_celda" runat="server" CssClass="detalleVersion">
            <div class="contenedorDetalleVersion">
                <div class="subcontenedor">
                    <asp:Label ID="lbl_verDetalleVersionCliente" runat="server" CssClass="lnk_tab"></asp:Label>
                    <br />
                    &nbsp;<asp:Label ID="lbl_versionActual" runat="server" CssClass="lbl"></asp:Label>
                    <asp:Label ID="lbl_versionActualValor" runat="server" CssClass="lbl_text"></asp:Label>
                    <br />
                    <br />
                    <div id="div_detalleVersionCliente">
                    </div>
                </div>
                <div class="subcontenedor">
                    <asp:Label ID="lbl_verDetalleMejoras" runat="server" CssClass="lnk_tab"></asp:Label>
                    <br />                    
                    &nbsp;<asp:Label ID="lbl_versionLiberada" runat="server" CssClass="lbl"></asp:Label>
                    <asp:Label ID="lbl_versionLiberadaValor" runat="server" CssClass="lbl_text"></asp:Label>
                    <br />                    
                    <br />                    
                    <div id="div_detalleMejoras">
                    </div>
                </div>  
                <div>
                    <asp:Label ID="lbl_mensajeError" runat="server" CssClass="lbl_mensaje" Visible="false"></asp:Label>
                </div>
        </div>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Panel>


<script type="text/javascript" src="../../js/Interfaz/menuf.js"></script>