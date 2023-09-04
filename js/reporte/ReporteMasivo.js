var urlAPI='';
var urlToken='';
var urlTabla='';
var urlFiltro='';
var urlReporte='';
var urlUsuario='';
var lblAvance='';
var lblResultado='';
var lnkDescarga='';
var btnGrillaErrores='';
var intervaloReporte;
var ejecucionAjax=null;
function s_iniciarReporteMasivo(){
     s_iniciarReporte();
     intervaloReporte=window.setTimeout('s_actualizarEstadoReporte();',2000);
}
function s_iniciarReporte(){
     parametros ={reporte_codigo:urlReporte
                    ,tabla:urlTabla
                    ,filtro:urlFiltro
                    ,nombreUsuario:urlUsuario
                    ,campoReporte:'id'};


     ejecucionAjax= $.ajax({
        method: "POST",
        contentType:'application/json; charset=utf-8',
        url: urlAPI + "api/util/documentoMasivoZip",
        beforeSend: function (xhr) {
            xhr.setRequestHeader ("Authorization", "Basic " +urlToken);
        },
        data: JSON.stringify(parametros)
        }).done(function(data) {   
          clearInterval(intervaloReporte);
           if (data.resultado=='0'){
              s_comprimirReporteMasivo();
           }else{
           s_mostrarError(data);
           }
        }).fail(function(data) {
          console.log("Fallo al consumir | data: " + data + " | js/reporte/ReporteMasivo.js/s_iniciarReporte");
        });
}

function s_comprimirReporteMasivo(){
   $.ajax({
        method: "POST",
        contentType:'application/json; charset=utf-8',
        url: "doc_documento_ot.aspx/f_str_comprimirReporteMasivo"
        }).done(function(data) {
            if (data!=''){
                if(lnkDescarga!=''){
                    if(document.getElementById(lnkDescarga)!=null){
                       document.getElementById(lnkDescarga).href=data;}
            }
            window.open(data);}
        }).fail(function(data) {
          console.log("Fallo al consumir | data: " + JSON.stringify(data) + " | js/reporte/ReporteMasivo.js/s_comprimirReporteMasivo");
        });
}
function s_actualizarEstadoReporte(){
   $.ajax({
        method: "POST",
        contentType:'application/json; charset=utf-8',
        url: "doc_documento_ot.aspx/f_str_obtenerAvanceReporte"
        }).done(function(data) {
            if (lblAvance!=''){
                    if(document.getElementById(lblAvance)!=null){
                    document.getElementById(lblAvance).innerText=data;}
            }
           intervaloReporte=window.setTimeout('s_actualizarEstadoReporte();',2000);
        }).fail(function(data) {
          console.log("Fallo al consumir | data: " + JSON.stringify(data) + " | js/reporte/ReporteMasivo.js/s_actualizarEstadoReporte");
          intervaloReporte=window.setTimeout('s_actualizarEstadoReporte();',2000);
        });
}
function s_tieneReporteMasivoenProceso(){
       $.ajax({
        method: "POST",
        contentType:'application/json; charset=utf-8',
        url: "doc_documento_ot.aspx/f_bol_tieneReporteMasivoenProceso"
        }).done(function(data) {
            if (data){
                   s_iniciarReporteMasivo();
            }
        }).fail(function(data) {
          console.log("Fallo al consumir | data: " + JSON.stringify(data) + " | js/reporte/ReporteMasivo.js/f_bol_tieneReporteMasivoenProceso");
        });
}
function s_cancelarReporteMasivo(){
  if(ejecucionAjax!=null){
  ejecucionAjax.abort();}
  clearInterval(intervaloReporte);
}
function  s_cargarGrillaErrores(){
   if (btnGrillaErrores!=''){
      var boton= document.getElementById(btnGrillaErrores);
      if(boton!=null){
         boton.click();
      }
   }
}  
function s_mostrarError(data){
if  (lblResultado!=''){
    if(document.getElementById(lblResultado)!=null){
    document.getElementById(lblResultado).innerText= data.descripcion;}
}
}
$(document).ready(function () {
     //s_tieneReporteMasivoenProceso();       
});
