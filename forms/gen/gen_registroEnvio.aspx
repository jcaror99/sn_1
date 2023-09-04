<%@ Page Language='VB' MasterPageFile='~/master/master/mas_interfazNueva.master'
    AutoEventWireup='false' CodeBehind='gen_registroEnvio.aspx.vb' Inherits='website.samm_web.frm_gen_registroEnvio' %>

<asp:Content ID='content5' runat='server' ContentPlaceHolderID='cph_tituloPagina'>
    <asp:Label ID='lbl_tituloPagina' runat='server' CssClass='lbl_titulo' Text="<%$ Resources:res_tituloPagina, forms_gen_registroEnvio%>"></asp:Label>
</asp:Content>
<asp:Content ID='Content1' runat='server' ContentPlaceHolderID='cph_contenido'>
    <html ng-app="proyectos">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <script src="../../js/Correo/jquery-2.1.1.js"></script>

        <div style="display: none;">
            <!--debe estar antes de sesion.js-->
            <iframe id="ifr_checkSession" style="display: none;" src=""></iframe>
        </div>
        <%--<script src="js/seguridad/sesion.js"></script>--%>
        <!-- global styles -->
        <link href="../../css/bootstrap_registroCorreo.min.css" rel="stylesheet">

        <script src="../../js/Correo/bootstrap.min.js"></script>

        <link href="../../font-awesome/css/font-awesome.css" rel="stylesheet">
        <link href="../../css/animate_registroCorreo.css" rel="stylesheet">
        <link href="../../css/style_registroCorreo.css" rel="stylesheet">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" type="text/javascript"></script>

        <%--funcionalidades--%>

        <script src="../../js/Correo/registroEnvioCorreo.js" type="text/javascript"></script>

        <script src="../../js/Correo/grilla.js" type="text/javascript"></script>

        <style>
            @media (max-width: 767px)
            {
                #content .modal.fade.in
                {
                    top: 5%;
                }
            }
            .parpadea
            {
                animation-name: parpadeo;
                animation-duration: 1s;
                animation-timing-function: linear;
                animation-iteration-count: infinite;
                -webkit-animation-name: parpadeo;
                -webkit-animation-duration: 1s;
                -webkit-animation-timing-function: linear;
                -webkit-animation-iteration-count: infinite;
            }
            @-moz-keyframes@-moz-keyframes@-moz-keyframes@-moz-keyframes@-moz-keyframesparpadeo{0%{opacity:1.0;}50%{opacity:0.0;}100%{opacity:1.0;}@-webkit-keyframesparpadeo{0%{opacity:1.0;}50%{opacity:0.0;}100%{opacity:1.0;}@keyframesparpadeo{0%{opacity:1.0;}50%{opacity:0.0;}100%{opacity:1.0;}</style>
    </head>
    <body class="top-navigation" onload="inicializar()">
        <div id="wrapper">
            <div id="page-wrapper" class="gray-bg">
                <div class="row border-bottom white-bg">
                    
                    <div class="ibox float-e-margins sdg" id="VisualizarRegistrosEnvios" style="display: block;">
                        <div class="ibox-title">
                            <div id="title_left" style="float: left; ">
                                <h5 id="grl_registroEnvioCorreo"></h5>
                            </div>
                            <div id="title_right" style="float: right; ">
                                <input type="submit" id="btn_reintentarEnvioCorreo" name="btn_reintentarEnvioCorreo" disabled="" onclick="reintentarEnvio()" value="Reintentar"/>
                            </div>
                        </div>
                        <div id="grillaRegistrosIniciales">
                            <%--contenido--%>
                        </div>
                    </div>
                    <div class="ibox float-e-margins sdg" id="VisualizadorIntentosRegistrosEnvio" style="display: none">
                        <div class="ibox-title">
                            <div class="ibox-tools">
                                <a><i class="fa fa-times fa-lg cerrarVentanita" data-toggle="sdg" data-box="#VisualizarIntentosRegistrosEnvios"
                                    data-target="#DetalleProyectos"></i></a>
                            </div>
                            <h5 id="grl_intentosRegistroEnvio">
                            </h5>
                        </div>
                        <div id="grillaRegistrosIntentos">
                            <%--contenido--%>
                        </div>
                    </div>
                    <div class="modal inmodal" id="mod_tbl_detalle_envioCorreo" role="dialog" arian-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content animated flipInY">
                                <div class="modal-header">
                                    <button type="button" class="close cerrar_modal_detalle_envioCorreo" data-dismiss="modal">
                                        <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                                    </button>
                                    <h5 id="grl_detalleIntentosRegistroEnvio" class="modal-title" style="font-size: 14px"
                                        align="left">
                                    </h5>
                                </div>
                                <div class="modal-body" style="overflow: hidden;" id="modal-body_visualizar_detalle">
                                    <div class="selectRow">
                                        <div id="grillaPOPDetalles">
                                            <%--contenido--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer">
                    <div>
                        <strong>SAMM</strong> &copy; 2015-2016
                    </div>
                </div>
            </div>
        </div>
    </body>
    </html>
</asp:Content>
