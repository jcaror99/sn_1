function crearSeccionS(){
    crSe(document.getElementById("txtSeccionSucursal").value,'SUC');
    cerrarModal('modalSuc');
}
function crearSeccionO() {
    crSe(document.getElementById("txtSeccionOficina").value, 'EQU');
    cerrarModal('modalOfi');
}
function crearSeccionC() {
    crSe(document.getElementById("txtSeccionComponente").value, 'CPT');
    cerrarModal('modalCpt');
}
function cerrarModal(idModal) {
    document.getElementById(idModal).style.display = "none";
}
function mosCL(){
    document.getElementById("modalEdl").style.display = "block";
    document.getElementById("txtNombrePlantilla").value = document.getElementById("ctl00_cph_general_lblTituloPlantilla").innerHTML;
    document.getElementById("txtNombrePlantilla").focus();
}

function mosSec(idSeccion,codSec,nomSec) {
    document.getElementById("modalSec").style.display = "block";
    document.getElementById("txtSeccion").value = nomSec;
    document.getElementById("hddIdSeccion").value = idSeccion;
    if (codSec.toString().indexOf('-') > 0)
        document.getElementById("hddCodSeccion").value = codSec.substr(0, codSec.indexOf('-'));
    else document.getElementById("hddCodSeccion").value = codSec;
    if (document.getElementById("hddCodSeccion").value.toUpperCase() == 'EQU') {
        document.getElementById('divFamiliaSec').style.display = 'none';
    }
    else {
        document.getElementById('divFamiliaSec').style.display = '';
    }
    document.getElementById('Select1').value = codSec.substr(codSec.indexOf('-') + 1);
    document.getElementById("txtSeccion").focus();
}
function cambiarP() {
    edPl(document.getElementById("txtNombrePlantilla").value);
    cerrarModal('modalEdl');
}

var gAtributo;
function confDep(idAt) {
    gAtributo = idAt;
    marcar();
    mostrar('modalAso');
}

function confRepDep(idAt, idSec) {
    gAtributo = idAt;
    atbReplicar(idSec);
    mostrar('modalRD');
}

function atbReplicar(idSec) {
    var resOp;
    var Http = new XMLHttpRequest();
    var url = globalSite + '/servicios/json/serv/serviciosPlantillas.aspx?t=' + gToken + '&p=rad&idp='+globalLista+'&ida='+gAtributo+'&ids='+idSec;
    Http.open("GET", url, true);
    //Http.send();
    $.getJSON(url, function(result) {
        listarAtbDpt(result);
    })
};

function marcar() {
    var resOp;
    var Http = new XMLHttpRequest();
    var url = globalSite + '/servicios/json/serv/serviciosPlantillas.aspx?t=' + gToken + '&p=aoa&idp='+globalLista;
    Http.open("GET", url, true);
    Http.send();
    $.getJSON(url, function(result) {
        resOp = result;
        var opsS = getOps(resOp);
        var opsT = document.getElementsByName("opcionesCondicion");
        for (i = 0; i < opsT.length; i++) {
            opsT[i].checked = opsS.includes(opsT[i].id.split("-")[3]);
        }
    })
};

function listarAtbDpt(info){
    var div = document.getElementById("atbRD");
    while (div.hasChildNodes()) { div.removeChild(div.firstChild); }
    var divAtb, i, labelAtb, inputAtb, spanAtb;
    if (info != "") {
        //info = JSON.parse(info);
        var infoca = new Object();
        infoca.cat_pruebaCheckList_atributo = info;
        
        for (i = 0; i < infoca.cat_pruebaCheckList_atributo.length; i++) {
            divAtb = document.createElement("div");
            labelAtb = document.createElement("label");
            
            inputAtb = document.createElement("input");
            inputAtb.setAttribute("id", infoca.cat_pruebaCheckList_atributo[i].id_atributo);
            inputAtb.setAttribute("name", "atbRemplazarDpt");
            inputAtb.setAttribute("type", "checkbox");
            
            spanAtb = document.createElement("span");
            spanAtb.innerHTML = infoca.cat_pruebaCheckList_atributo[i].atributo
            
            labelAtb.appendChild(inputAtb)
            labelAtb.appendChild(spanAtb)
            divAtb.appendChild(labelAtb)
            div.appendChild(divAtb)
            
            
            
        }
    }
}

function getOps(algunjson) {
    var arr=new Array();
    var j=0;
    for (i = 0; i < algunjson.length; i++) {
        if (algunjson[i].id_atributo == gAtributo) {
            arr[j] = algunjson[i].id_opcionAtributo.toString();
            j++;
        } 
    }
    return arr;
}

function mostrar(control) {
    var estado = document.getElementById(control).style.display;
    if (estado == 'block' || estado == '') document.getElementById(control).style.display = 'none';
    else document.getElementById(control).style.display = 'block';
}
function ocultar(control) {
    document.getElementById(control).style.display = 'none';
}
    
function drag(ev) {
    ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("text");
    ev.target.appendChild(document.getElementById(data));
}