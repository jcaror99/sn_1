<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="error.ascx.vb" Inherits="website.samm_controles.controles_general_error" %>
<%@ Register Assembly="controles" Namespace="controles" TagPrefix="bti" %>

<script type="text/javascript" src="../../js/Interfaz/shortcut.js"></script>
<script type="text/javascript" src="../../js/Interfaz/error.js"></script>

<div id="AlertDiv" style="visibility: hidden">
<input id="_a1" name="_a1" value="1" style="display: none" />
<script type="text/javascript">
handleBackButton();
</script>
<div class="AlertDiv">
    </div>
    <div class="divAceptaExc">
        <table width="300px">
            <tr>
                <td>
                    <span id="AlertMessage"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <bti:BotonImagen ID="ok" runat="server" CssClass='imb' CausesValidation="false" ImageUrl="~/images/botones/aceptar.jpg"
                        OnClientClick="ClearErrorState();s_ocultarModalPostback();return false;" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="hprRecargar" runat="server" Text="[Recargar]" Style="display: none"></asp:HyperLink>
                    <asp:HyperLink ID="hprReingresar" runat="server" Text="[Reingresar]" NavigateUrl="../../forms/publica/logout.aspx"
                        Style="display: none"></asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>
</div>



