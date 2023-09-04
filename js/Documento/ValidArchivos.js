var es_chrome = navigator.userAgent.toLowerCase().indexOf('chrome') > -1;
var es_firefox = navigator.userAgent.toLowerCase().indexOf('firefox') > -1;
var es_opera = navigator.userAgent.toLowerCase().indexOf('opera');
var es_ie = navigator.userAgent.indexOf("MSIE") > -1 ;
//se valida en que navegador se encuentra ubicado el usuario
if(es_chrome){
 console.log("El navegador es Chrome");
}else if(es_firefox){
 console.log("El navegador es Firefox");
}else if(es_opera){
 console.log("El navegador es Opera");
}else if(es_ie){
 console.log("El navegador es IE");
}else{
console.log("El Navegador no es conocido");
}
var a_str_documento;
if(document.getElementById("ctl00_cph_general_doc_documento_solicitud0_lbl_doc")){
a_str_documento="doc_documento_solicitud";
}else if(document.getElementById("ctl00_cph_general_doc_documento_entrada0_lbl_doc")){

a_str_documento="doc_documento_entrada";
}else if (document.getElementById("ctl00_cph_general_doc_documento_ordencompra0_lbl_doc")) {

a_str_documento="doc_documento_ordencompra";
}else if (document.getElementById("ctl00_cph_general_doc_documento_cotizacion0_lbl_doc")) {

a_str_documento="doc_documento_cotizacion";
}else if (document.getElementById("ctl00_cph_general_doc_documento_alquiler0_lbl_doc")) {

a_str_documento="doc_documento";

}else if (document.getElementById("ctl00_cph_general_doc_documento_salida0_lbl_doc")) {

a_str_documento="doc_documento_salida";

}else if (document.getElementById("ctl00_cph_general_doc_documento_ot0_lbl_doc")) {

a_str_documento="doc_documento_ot";
}else if (document.getElementById("ctl00_cph_general_cat_catalogo_repuesto0_lbl_doc")) {

a_str_documento="cat_catalogo_repuesto";
}else if (document.getElementById("ctl00_cph_general_cat_catalogo_repuesto0_lbl_doc")) {

a_str_documento="cat_catalogo_repuesto";
}else if (document.getElementById("ctl00_cph_general_cat_catalogo_actividad0_lbl_doc")) {

a_str_documento="cat_catalogo_actividad";
}else if (document.getElementById("ctl00_cph_general_cat_catalogo_tempario0_lbl_doc")) {

a_str_documento="cat_catalogo_tempario";
}else if (document.getElementById("ctl00_cph_general_cat_catalogo_producto0_lbl_doc")) {

a_str_documento="cat_catalogo_producto";
}else if (document.getElementById("ctl00_cph_general_cat_catalogo_otro0_lbl_doc")) {

a_str_documento="cat_catalogo_otro";
}else if (document.getElementById("ctl00_cph_general_equ_equipo0_lbl_doc")) {

a_str_documento="equ_equipo";
}else if (document.getElementById("ctl00_cph_general_equ_falla0_lbl_doc")) {

a_str_documento="equ_falla";
}else if (document.getElementById("ctl00_cph_general_pop_archivos0_lbl_doc")) {

a_str_documento="pop_archivos";
}else if (document.getElementById("ctl00_cph_general_seg_usuario0_lbl_doc")) {

a_str_documento="seg_usuario";
}else if (document.getElementById("ctl00_cph_general_cnt_contrato0_lbl_doc")) {

a_str_documento="cnt_contrato";
}else if (document.getElementById("ctl00_cph_general_ort_reportetecnico0_lbl_doc")) {

a_str_documento="ort_reportetecnico";
}else if (document.getElementById("ctl00_cph_general_ter_tercero0_lbl_doc")) {

a_str_documento="ter_tercero";
}else{
	console.log("none");
}
function f_CarArch(e){
var file = e.files;
var a_int_longArchivos = e.files.length;
var a_int_contTamanoArchivos = 0;
var contFile=0;
  for (i = 0; i < a_int_longArchivos; i++) {
        a_int_contTamanoArchivos = e.files[i].size;
        contFile= contFile + a_int_contTamanoArchivos;
    }
//file = file.size;
var valFile =  document.getElementById("ctl00_cph_general_" + a_str_documento + "0_valFile").innerHTML;
var t_int_VMArchivo = valFile * 1024;
var a_str_acceso = "El tama\u00f1o total de los archivos es: " + Math.trunc(contFile/1024) + " kb";
var a_str_excede = " El tama\u00f1o excede el l\u00EDmite por favor intente nuevamente";
console.log(contFile);
console.log(t_int_VMArchivo);

    if (contFile < t_int_VMArchivo){
        document.getElementById("ctl00_cph_general_" + a_str_documento + "0_lbl_tamanoArchivos").innerText=a_str_acceso;
    }else{
        e.value="";
        document.getElementById("ctl00_cph_general_" + a_str_documento + "0_lbl_tamanoArchivos").value=a_str_acceso + a_str_excede;
        document.getElementById("ctl00_cph_general_" + a_str_documento + "0_lbl_tamanoArchivos").innerText=a_str_acceso +  "\n" + a_str_excede;
    }
};