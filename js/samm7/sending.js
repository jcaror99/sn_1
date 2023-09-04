function valor(control) { return document.getElementById(control).value; }
function actualiza(idatb) {
    var hiddenAtributo = document.getElementById("ctl00_cph_general_hddIdAtributo");
    hiddenAtributo.value = idatb;
    __doPostBack('ctl00$cph_general$LinkButton1', '');

    var li = document.getElementById('liAtributo_' + idatb);
    li.setAttribute('class', 'active');
    var div = document.getElementById('divAtributo_' + idatb);
    div.setAttribute('style', 'display: block;');
}
function actualizaEnd() {
    M.AutoInit();
    var elems = document.querySelectorAll('.sidenav');
    var instances = M.Sidenav.init(elems[0], { edge: 'right' });
}
// #region Edición Plantilla
function edPl(nombre) {
    var params = new URLSearchParams(location.search);
    mPlantilla(params.get('id'), nombre, null, 1)
}

function crearCL(nombre) {
    var codTercero = document.getElementById("sel_ter_terceros").value;
 
    if (codTercero == ''  || nombre == '') {
        alert("Debe seleccionar un Cliente para crear el CheckList");
    } else {
        codTercero = 'PLA-' + codTercero
        mPlantilla(0, nombre, codTercero, 1)
        ocultar('divNuevaLista');
    }
}
var select 
function asignar(data){
var datos = data
var label = " <option value='' disabled selected>-- Seleccione --</option>";
 
   var select = document.getElementById("sel_ter_terceros")
 for(var i =0 ; i < datos.length; i++){
 
   label += " <option value='" + data[i].tercero_codigo + "'>" + data[i].tercero   + "</option>"
 }
   select.innerHTML = label
 
}
var dataMenu;
function menu(data){
var datos = data
dataMenu = data
   console.log(data)
   
   var select = document.getElementById("menu")
    var label = ''
 for(var i =0 ; i < datos.length; i++){
   console.log(data[i].lista.length)
   var log = data[i].lista.length
   var heigh = '10%'
   if (log > 50) {
   heigh = '30%'
   }
  label += '<li style="height: ' +  heigh +';"> <a id="list" href="checkdest.aspx?id='+ data[i].id  +'" style="height: auto;width: auto;"><i class="material-icons">';
 label += '       description</i><label style="color: black;width: 71%;height: auto;display: flex;justify-content: center;align-items: center;word-break: break-all;line-height:1.5em;">'+ data[i].lista  +'</label></a></li>';
 }
   select.innerHTML = label

 
}

function escribir(event) {
 var datas = dataMenu
 var input = document.getElementById("search")
console.log("evento" , input.value.length)
   var select = document.getElementById("menu")

if (input.value != ''){
var filtros = datas.filter(datos => datos.lista.substr(0,input.value.length).toLowerCase()  == input.value.toLowerCase() );

  var label = ''
 for(var i =0 ; i < filtros.length; i++){
 
 var log = filtros[i].lista.length
   var heigh = '10%'
   if (log > 50) {
   heigh = '30%'
   }
  label += '<li style="height: ' +  heigh +';"> <a id="list" href="checkdest.aspx?id='+ filtros[i].id  +'"  style="height: auto;width: auto;"><i class="material-icons">';
 label += '       description</i><label style="color: black;width: 71%;height: auto;display: flex;justify-content: center;align-items: center;word-break: break-all;line-height:1.5em;">'+ filtros[i].lista  +'</label></a></li>';
 }
 if (label != ''){
   select.innerHTML = label
 }
}else{
 var label = ''
 for(var i =0 ; i < datas.length; i++){
  var log = datas[i].lista.length
   var heigh = '10%'
   if (log > 50) {
   heigh = '30%'
   }
   
  label += '<li style="height: ' +  heigh +';"> <a id="list" href="checkdest.aspx?id='+ datas[i].id  +'" style="height: auto;width: auto;"><i class="material-icons">';
 label += '       description</i><label style="color: black;width: 71%;height: auto;display: flex;justify-content: center;align-items: center;word-break: break-all;line-height:1.5em;">'+ datas[i].lista  +'</label></a></li>';
 }
 if (label != ''){
   select.innerHTML = label
 
 }
}
//console.log("evento 01" , filtros)

//console.log("evento 02" , datas)

 
//  if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
//    return true;
//  else
//    return false;
}

function mPlantilla(id, nombre, codigo, acti) {
    var algunJson = {
        "id": id,
        "active": acti,
        "nombre": nombre,
        "codigo": codigo,
        "activo": 1
    };
    var url = globalSite + '/servicios/samcore/Equipo/plantillaCheckList.asmx';
    var pl = new SOAPClientParameters();
    pl.add("p_str_tipoPeticion", "chl");
    pl.add("p_str_json", JSON.stringify(algunJson));
    SOAPClient.invoke(url, "f_str_manipularPlantilla", pl, true, resPlantillaCBchecklist);
}
function resPlantillaCBchecklist(resCb) {
    if (resCb.message == undefined) {
        if (resCb.includes("ok|")) {
            var idChecklist = resCb.substr(3, resCb.length - 3);
            document.location.href = globalSite + "/forms/samm/checkdest.aspx?id=" + idChecklist
        }
        else {
            alert(resCb);
        }
    }
    else {
        alert(resCb.stack);
    }
}

function duplicarCL(nombre) {

    let params = new URLSearchParams(location.search);
    var id_Checklist = params.get('id')
    var codTercero = document.getElementById("sel_ter_tercerosDup").value;
    if(codTercero == '' ){
        alert("Debe seleccionar un Cliente que tenga un codigo");    
    }else{    
        if ( nombre == '') {
        alert("Debe seleccionar un Cliente para crear el CheckList o dar un nombre");
    } else {
        codTercero = 'PLA-' + codTercero
        var algunJson = {
            "id": id_Checklist,
            "nombre": nombre,
            "codigo": codTercero
        };
        var url = globalSite + '/servicios/samcore/Equipo/plantillaCheckList.asmx';
        var pl = new SOAPClientParameters();
        pl.add("p_str_tipoPeticion", "dpr");
        pl.add("p_str_json", JSON.stringify(algunJson));
        SOAPClient.invoke(url, "f_str_manipularPlantilla", pl, true, resPlantillaCBchecklistDup);
        ocultar('divNuevaLista');
    }
    }

}
function resPlantillaCBchecklistDup(res) {
    var idChecklist = res;
    document.location.href = globalSite + "/forms/samm/checkdest.aspx?id=" + idChecklist
}

// #endregion

// #region Edición atributo

function crearAT(nombre, tipo, lista, seccion, automatico) {
    if (automatico == undefined) {
        automatico = false
    }
    if (nombre != '') {
        var algunJson = {
            "id": "0",
            "active": 1,
            "nombre": nombre,
            "esVariable": 0,
            "valormin": "0",
            "valormax": "0",
            "obligatorio": 0,
            "tipo": tipo,
            "orden": 0,
            "id_pruebaChecklist": lista,
            "id_seccionAtributo": seccion,
            "opcionAtributo": [],
            "automatico": automatico
        };
        var url = globalSite + '/servicios/samcore/Equipo/plantillaCheckList.asmx';
        var pl = new SOAPClientParameters();
        pl.add("p_str_tipoPeticion", "atb");
        pl.add("p_str_json", JSON.stringify(algunJson));
        SOAPClient.invoke(url, "f_str_manipularPlantilla", pl, true, resPlantillaCBatributo);
    }
}

function resPlantillaCBatributo(resAt) {
    var obj = JSON.parse(resAt);
    if (obj.respuesta == "ok") {
        var atributoJSON = obj.atributo;
        if (obj.accion == "actualizar") { actualizarCampoAtributo(atributoJSON); }
        if (obj.accion == "crear") {
            var liAtb = cCptAtb(atributoJSON);
            var liNue = document.getElementById("nueAtb" + atributoJSON.id_seccionAtributo);
            if(document.getElementById("ul" + atributoJSON.id_seccionAtributo)!=null)document.getElementById("ul" + atributoJSON.id_seccionAtributo).insertBefore(liAtb, liNue);
            if(liAtb!=null)liAtb.setAttribute("class", "active");
            if(liNue!=null)liNue.setAttribute("class", "");
            if(document.getElementById("txtNuevoAtributo" + atributoJSON.id_seccionAtributo)!=null) document.getElementById("txtNuevoAtributo" + atributoJSON.id_seccionAtributo).value = "";
            if(document.getElementById("cn" + atributoJSON.id_seccionAtributo)!=null)document.getElementById("cn" + atributoJSON.id_seccionAtributo).setAttribute("style", "display: '';");
            if(document.getElementById("nuevosAtributos" + atributoJSON.id_seccionAtributo)!=null)document.getElementById("nuevosAtributos" + atributoJSON.id_seccionAtributo).appendChild(cCptAtb(atributoJSON));
        }
        if (obj.accion == "eliminar") { quitarElem("liAtributo_" + atributoJSON.id); }
        if(document.getElementById("cargando_" + atributoJSON.id)!=null)document.getElementById("cargando_" + atributoJSON.id).innerHTML = "";


        //var idAtributo = resAt.substr(3, resAt.length - 3);
        //actualiza(idAtributo);
    }
    else {
        alert(resAt);
    }
}

function obtenerTipo(numTipo) {
    if (numTipo == 1) { return "text_format" }
    if (numTipo == 2) { return "looks_3" }
    if (numTipo == 3) { return "date_range" }
    if (numTipo == 4) { return "list" }
    if (numTipo == 5) { return "done_all" }
    if (numTipo == 6) { return "notes" }
    if (numTipo == 7) { return "cloud_upload" }
    if (numTipo == 8) { return "message" }
    if (numTipo == 9) { return "filter_list" }
}

function actualizarCampoAtributo(atributoJSON) {
    document.getElementById("span_" + atributoJSON.id).innerHTML = atributoJSON.nombre;


    var iAtributo = document.getElementById("iAtributo_" + atributoJSON.id);
    iAtributo.innerHTML = obtenerTipo(atributoJSON.tipo);
    var obligatorio = "obliga-no";
    if (atributoJSON.obligatorio) { obligatorio = "obliga-si"; }
    iAtributo.classList.remove("obliga-si", "obliga-no");
    iAtributo.classList.add(obligatorio);
    if (atributoJSON.tipo == 4 || atributoJSON.tipo == 5 || atributoJSON.tipo == 9) {
        var div = document.getElementById("opcionesAtributo_" + atributoJSON.id);
        div.setAttribute('style', 'display:"";');
        while (div.hasChildNodes()) { div.removeChild(div.firstChild); }
        refrescarOpcionesAtributo(div, atributoJSON.opcionAtributo, atributoJSON.id);
    } else {
        document.getElementById("opcionesAtributo_" + atributoJSON.id).setAttribute('style', 'display:none;');
    }
}

function refrescarOpcionesAtributo(elemDiv, opcionesAtb, idAtb) {
    for (var i = 0; i < opcionesAtb.length; i++) {
        var divOpcA = document.createElement("div");
        divOpcA.setAttribute('class', "contenedor-div-opcionesAtributo");
        divOpcA.setAttribute('id', "opc" + opcionesAtb[i].id);

        var inputOpcA = document.createElement("input");
        inputOpcA.setAttribute('type', "text");
        inputOpcA.setAttribute('value', opcionesAtb[i].nombre);
        inputOpcA.setAttribute('class', "txtopcion validate");
        inputOpcA.setAttribute('placeholder', "Digite Opción");
        inputOpcA.setAttribute('id', "opcionAtributo_" + opcionesAtb[i].id);
        inputOpcA.setAttribute('name', "opcionAtributo_" + opcionesAtb[i].idAtributo);

        var aOpcA = document.createElement("a");
        aOpcA.setAttribute('onclick', "elOp(" + opcionesAtb[i].id + ", " + opcionesAtb[i].idAtributo + ")");
        aOpcA.setAttribute('style', "cursor:pointer;");
        aOpcA.setAttribute('id', "A1");
        aOpcA.setAttribute('class', "red-text");

        var iOpcA = document.createElement("i");
        iOpcA.setAttribute('class', "material-icons");
        iOpcA.innerHTML = "clear";

        var aOpcA2 = document.createElement("a");
        aOpcA2.setAttribute('onclick', "edOp(" + opcionesAtb[i].id + ", " + opcionesAtb[i].idAtributo + ",valor('opcionAtributo_" + opcionesAtb[i].id + "'))");
        aOpcA2.setAttribute('style', "cursor:pointer;");
        aOpcA2.setAttribute('id', "A2");

        var iOpcA2 = document.createElement("i");
        iOpcA2.setAttribute('class', "material-icons");
        iOpcA2.innerHTML = "done";

        divOpcA.appendChild(inputOpcA);
        aOpcA.appendChild(iOpcA);
        divOpcA.appendChild(aOpcA);
        aOpcA2.appendChild(iOpcA2);
        divOpcA.appendChild(aOpcA2);
        elemDiv.appendChild(divOpcA);
    }

    var divNuevas = document.createElement("div");
    divNuevas.setAttribute('id', "opcionesAtributoNuevas_" + idAtb);
    elemDiv.appendChild(divNuevas);

    var divOpcA = document.createElement("div");
    divOpcA.setAttribute('class', "contenedor-div-opcionesAtributo");

    var inputOpcA = document.createElement("input");
    inputOpcA.setAttribute('type', "text");
    inputOpcA.setAttribute('value', '');
    inputOpcA.setAttribute('class', "txtopcion validate");
    inputOpcA.setAttribute('placeholder', "Nueva Opción");
    inputOpcA.setAttribute('id', "nueOpcionAtributo_" + idAtb);

    var aOpcA = document.createElement("a");
    aOpcA.setAttribute('onclick', "crOp(" + idAtb + ",valor('nueOpcionAtributo_" + idAtb + "'))");
    aOpcA.setAttribute('style', "cursor:pointer;");
    aOpcA.setAttribute('class', "blue-text");
    aOpcA.setAttribute('id', "A3");

    var iOpcA = document.createElement("i");
    iOpcA.setAttribute('class', "material-icons");
    iOpcA.innerHTML = "add";

    divOpcA.appendChild(inputOpcA);
    aOpcA.appendChild(iOpcA);
    divOpcA.appendChild(aOpcA);
    elemDiv.appendChild(divOpcA);
}

function quitarAtributo(id) {
    var algunJson = {
        "id": id,
        "active": 0,
        "nombre": "",
        "esVariable": 0,
        "valormin": "0",
        "valormax": "0",
        "obligatorio": 0,
        "tipo": 0,
        "orden": 0,
        "id_pruebaChecklist": 0,
        "id_seccionAtributo": 0,
        "opcionAtributo": []
    };
    atributoAbierto = idAtributo;
    var url = globalSite + '/servicios/samcore/Equipo/plantillaCheckList.asmx';
    var pl = new SOAPClientParameters();
    pl.add("p_str_tipoPeticion", "atb");
    pl.add("p_str_json", JSON.stringify(algunJson));
    SOAPClient.invoke(url, "f_str_manipularPlantilla", pl, true, resPlantillaCBatributo);
}

function editarAtributo(id, nombre, tipo, obliga, idSeccion, activ, orden) {
    document.getElementById("cargando_" + id).innerHTML = "Actualizando ...";
    if ((activ == null) || activ == 'undefined') activ = 1;

    var arrayA = document.getElementsByName("opcionAtributo_" + id);
    var opcArray = [];
    if (tipo == 4 || tipo == 5 || tipo == 9) {
        for (i = 0; i < arrayA.length; i++) {
            var idOpcAtb = arrayA[i].id.split("_");
            var opc = new Object();
            opc.numOpc = i,
                opc.id = idOpcAtb[1];
            opc.active = 1;
            opc.nombre = arrayA[i].value;
            opc.orden = null;
            opc.idAtributo = id;
            opcArray.push(opc);
        }
    }
    var algunJson = {
        "id": id,
        "active": activ,
        "nombre": nombre,
        "esVariable": 0,
        "valormin": "0",
        "valormax": "0",
        "obligatorio": obliga,
        "tipo": tipo,
        "orden": orden,
        "id_pruebaChecklist": globalLista,
        "id_seccionAtributo": idSeccion,
        "opcionAtributo": opcArray
    };
    var url = globalSite + '/servicios/samcore/Equipo/plantillaCheckList.asmx';
    var pl = new SOAPClientParameters();
    pl.add("p_str_tipoPeticion", "atb");
    pl.add("p_str_json", JSON.stringify(algunJson));
    SOAPClient.invoke(url, "f_str_manipularPlantilla", pl, true, resPlantillaCBatributo);

    //document.getElementById("cargando").innerHTML = "";
}
// #endregion

// #region Edición opciones//////
var numOpcANueva = 0;
function crOp(idAtributo, opcion) {
    var div = document.getElementById("opcionesAtributoNuevas_" + idAtributo);
    var divOpcA, inputOpcA, aOpcA, iOpcA;
    numOpcANueva = numOpcANueva + 1;
    divOpcA = document.createElement("div");
    divOpcA.setAttribute('class', "contenedor-div-opcionesAtributo");
    divOpcA.setAttribute('id', "contenedor-div-opcionesAtributo_" + numOpcANueva);

    inputOpcA = document.createElement("input");
    inputOpcA.setAttribute('type', "text");
    inputOpcA.setAttribute('value', opcion);
    inputOpcA.setAttribute('class', "txtopcion validate");
    inputOpcA.setAttribute('placeholder', "Digite Opción");
    inputOpcA.setAttribute('id', "opcionAtributo_0");
    inputOpcA.setAttribute('name', "opcionAtributo_" + idAtributo);

    aOpcA = document.createElement("a");
    aOpcA.setAttribute('onclick', "quitarElem('contenedor-div-opcionesAtributo_" + numOpcANueva + "')");
    aOpcA.setAttribute('style', "cursor:pointer;");
    aOpcA.setAttribute('id', "A1");
    aOpcA.setAttribute('class', "red-text");

    iOpcA = document.createElement("i");
    iOpcA.setAttribute('class', "material-icons");
    iOpcA.innerHTML = "clear";

    divOpcA.appendChild(inputOpcA);
    aOpcA.appendChild(iOpcA);
    divOpcA.appendChild(aOpcA);
    div.appendChild(divOpcA);

    document.getElementById("nueOpcionAtributo_" + idAtributo).value = "";
}

function quitarElem(numOA) {
    var div = document.getElementById(numOA);
    while (div.hasChildNodes()) { div.removeChild(div.firstChild); }
}
//function crOp(idAtributo,opcion){   mOpcion(0,idAtributo,opcion,null,1);} crear opcionAtributo desde el boton +
function edOp(idOpcion, idAtributo, opcion) { mOpcion(idOpcion, idAtributo, opcion, null, 1); }
function elOp(idOpcion, idAtributo) {
    mOpcion(idOpcion, idAtributo, '', null, 0);
    quitarElem("opc" + idOpcion);
}

var atributoAbierto = 0;
function mOpcion(idOpcion, idAtributo, opcion, orden, activ) {
    var jsonOpt = {
        "id": idOpcion,
        "active": activ,
        "nombre": opcion,
        "orden": orden,
        "idAtributo": idAtributo
    };
    atributoAbierto = idAtributo;
    var url = globalSite + '/servicios/samcore/Equipo/plantillaCheckList.asmx';
    var pl = new SOAPClientParameters();
    pl.add("p_str_tipoPeticion", "opa");
    pl.add("p_str_json", JSON.stringify(jsonOpt));
    SOAPClient.invoke(url, "f_str_manipularPlantilla", pl, true, resPlantillaCBopcion);
}

function resPlantillaCBopcion(resAt) {
    if (resAt.message == undefined) {
        if (resAt.includes("ok|")) {
            var idAtributo = resAt.substr(3, resAt.length - 3);
            //actualiza(atributoAbierto);
            atributoAbierto = 0;
        }
        else {
            alert(resAt);
        }
    }
    else {
        alert(resAt.stack);
    }
}
// #endregion

// #region Edición secciones///////
var gIdNS = 0;
var gBCS = false;
var gAuto = false;

function crSe(nombre, codigo) {
    gBCS = true;
    gIdNS = 0;
    mSeccion(0, nombre, codigo, 1, 1);
}

function edSe(id, nombre, codigo, familia) {
    gBCS = false;
    mSeccion(id, nombre, codigo + '-' + familia, null, 1)
}

function mSeccion(id, nombre, codigo, orden, activ) {
    var algunJson = {
        "id": id,
        "active": activ,
        "nombre": nombre,
        "codigo": codigo,
        "orden": orden,
        "id_pruebaChecklist": globalLista
    };
    document.getElementById("actSec").innerHTML = "Actualizando";
    document.getElementById("hddNameSeccion").value = nombre;
    var url = globalSite + '/servicios/samcore/Equipo/plantillaCheckList.asmx';
    var pl = new SOAPClientParameters();
    pl.add("p_str_tipoPeticion", "scn");
    pl.add("p_str_json", JSON.stringify(algunJson));
    gAuto=(codigo.toString().substring(0,3).toLowerCase()=="suc");
    SOAPClient.invoke(url, "f_str_manipularPlantilla", pl, false, resPlantillaCBseccion);
}
;
function resPlantillaCBseccion(resSe) {
    document.getElementById("actSec").innerHTML = "";
    if (resSe.message == undefined) {
        if (resSe.includes("ok|")) {
            gIdNS = resSe.split("|")[1];
            setTimeout(function () { }, 1000);
            if (gBCS) {
                crearAT('Ingrese el campo', 1, globalLista, gIdNS, gAuto);
                gAuto=false;
                gBCS = !gBCS;
                gIdNS = 0;
            }
            if(document.getElementById("inputSec" + gIdNS)!=null) document.getElementById("inputSec" + gIdNS).value = document.getElementById("hddNameSeccion").value;
            document.getElementById("modalSec").setAttribute("style", "display:''");
            if(document.getElementById("a" + gIdNS)!=null)document.getElementById("a" + gIdNS).setAttribute("onClick", "mosSec('" + gIdNS + "','" + resSe.split("|")[2] + "','" + document.getElementById("hddNameSeccion").value + "');");
            document.getElementById("hddNameSeccion").value = "";
        }
        else {
            alert(resSe);
        }
    }
    else {
        alert(resSe.stack);
    }
}
// #endregion



// #region Opciones condicionales

function edAso(idOpcion, valor) {
    var algunJson = {
        "id_opcionAtributo": idOpcion,
        "active": valor,
        "id_atributo": gAtributo
    };
    var url = globalSite + '/servicios/samcore/Equipo/plantillaCheckList.asmx';
    var pl = new SOAPClientParameters();
    pl.add("p_str_tipoPeticion", "aoa");
    pl.add("p_str_json", JSON.stringify(algunJson));
    SOAPClient.invoke(url, "f_str_manipularPlantilla", pl, true, resPlantillaCBasocia);
}
function resPlantillaCBasocia(resAso) {
    if (resAso.message == undefined) {
        if (resAso.includes("ok|")) {
            //actualiza();
        }
        else {
            alert(resAso);
        }
    }
    else {
        alert(resAso.stack);
    }
}


// #endregion

function replicarDependientes(lstc) {
    var idsAtbRep = "";
    var arrayA = document.getElementsByName("atbRemplazarDpt");
    for (i = 0; i < arrayA.length; i++) {
        if (arrayA[i].checked) {
            idsAtbRep += arrayA[i].id + ",";
        }
    }
    if (arrayA.length > 0) {
        var cantR = document.getElementById("txtCantidadRD").value;
        if (cantR != "") {
            var algunJson = {
                "idChecklist": globalLista,
                "cantidad": cantR,
                "idsAtributosRepilicar": idsAtbRep,
                "idListaCondicional": gAtributo
            };
            var url = globalSite + '/servicios/samcore/Equipo/plantillaCheckList.asmx';
            var pl = new SOAPClientParameters();
            pl.add("p_str_tipoPeticion", "rad");
            pl.add("p_str_json", JSON.stringify(algunJson));
            SOAPClient.invoke(url, "f_str_manipularPlantilla", pl, true, location.reload());
            ocultar('modalRD');
        }
    }

}

function dupSec(seccion) {
    var algunJson = {
        "idChecklist": globalLista,
        "idSec": seccion
    };
    var url = globalSite + '/servicios/samcore/Equipo/plantillaCheckList.asmx';
    var pl = new SOAPClientParameters();
    pl.add("p_str_tipoPeticion", "dsc");
    pl.add("p_str_json", JSON.stringify(algunJson));
    SOAPClient.invoke(url, "f_str_manipularPlantilla", pl, true, location.reload());
    //ocultar('modalRD');
}

function cCptAtb(atributo) {

    var liA = document.createElement("li");
    liA.setAttribute('id', "liAtributo_" + atributo.id);

    //begin collapse
    var divCollapse = document.createElement("div");
    divCollapse.setAttribute('class', "collapsible-header");
    divCollapse.setAttribute('tabindex', "0");

    var iCollapse = document.createElement("i");
    iCollapse.setAttribute('class', "material-icons");
    iCollapse.innerHTML = "drag_indicator";
    divCollapse.appendChild(iCollapse);

    var spanCollapse = document.createElement("span");
    spanCollapse.setAttribute('id', "span_" + atributo.id);
    spanCollapse.setAttribute('style', "white-space: nowrap;");
    spanCollapse.innerHTML = atributo.nombre;
    divCollapse.appendChild(spanCollapse);

    var iCollapseICON = document.createElement("i");
    iCollapseICON.setAttribute('id', "iAtributo_" + atributo.id);
    iCollapseICON.setAttribute('class', "material-icons obliga-" + (atributo.obligatorio == 0 ? "no" : "si"));
    iCollapseICON.setAttribute('style', "text-align: right; width: 100%");
    iCollapseICON.innerHTML = obtenerTipo(atributo.tipo);
    divCollapse.appendChild(iCollapseICON);

    liA.appendChild(divCollapse);
    //end collapse

    //begin Atributo
    var divAtributo = document.createElement("div");
    divAtributo.setAttribute('class', "collapsible-body");
    divAtributo.setAttribute('id', "divAtributo_" + atributo.id);
    divAtributo.setAttribute('style', "display: block;");

    var formAtributo = document.createElement("form");
    formAtributo.setAttribute('name', "");
    formAtributo.setAttribute('action', "#");

    var inputNameA = document.createElement("input");
    inputNameA.setAttribute('id', "atributo" + atributo.id);
    inputNameA.setAttribute('type', "text");
    inputNameA.setAttribute('name', "atributos");
    inputNameA.setAttribute('class', "validate");
    inputNameA.setAttribute('value', atributo.nombre);
    inputNameA.setAttribute('placeholder', "Nombre Campo");
    formAtributo.appendChild(inputNameA);

    var inputOrdenA = document.createElement("input");
    inputOrdenA.setAttribute('id', "txtOrden" + atributo.id);
    inputOrdenA.setAttribute('type', "number");
    inputOrdenA.setAttribute('min', "1");
    inputOrdenA.setAttribute('class', "validate");
    inputOrdenA.setAttribute('value', atributo.orden);
    formAtributo.appendChild(inputOrdenA);

    var labelOrdenA = document.createElement("label");
    labelOrdenA.setAttribute('for', "txtOrden" + atributo.id);
    labelOrdenA.innerHTML = "Orden";
    formAtributo.appendChild(labelOrdenA);

    formAtributo.appendChild(cOptTipo(atributo));

    var divOpcAtb = document.createElement("div");
    divOpcAtb.setAttribute('class', "opcionatributo");
    divOpcAtb.setAttribute('id', "opcionesAtributo_" + atributo.id);
    var mostrarOpciones = "none";
    if (atributo.tipo == 4 || atributo.tipo == 5 || atributo.tipo == 9) { mostrarOpciones = ""; }
    divOpcAtb.setAttribute('style', "display: " + mostrarOpciones + ";");
    formAtributo.appendChild(divOpcAtb);
    refrescarOpcionesAtributo(divOpcAtb, atributo.opcionAtributo, atributo.id);

    var tableBtnA = document.createElement("table");
    var trBtnA = document.createElement("tr");

    var tdBtnObligatorioA = document.createElement("td");
    var labelObligA = document.createElement("label");
    var inputObligA = document.createElement("input");
    inputObligA.setAttribute("id", "indeterminate-checkbox" + atributo.id);
    inputObligA.setAttribute("type", "checkbox");
    inputObligA.setAttribute((atributo.obligatorio == 0 ? "no-" : "")+ "checked", "");
    var spanObligA = document.createElement("span");
    spanObligA.innerHTML = "Obligatorio";
    labelObligA.appendChild(inputObligA);
    labelObligA.appendChild(spanObligA);
    tdBtnObligatorioA.appendChild(labelObligA);

    var tdBtnDependienteA = document.createElement("td");
    var aDptA = document.createElement("a");
    aDptA.setAttribute("class", "btn-small blue");
    aDptA.setAttribute("onclick", "confDep(" + atributo.id + ")");
    var iDptA = document.createElement("i");
    iDptA.setAttribute("class", "material-icons");
    iDptA.innerHTML = "remove_red_eye";
    aDptA.appendChild(iDptA);
    tdBtnDependienteA.appendChild(aDptA);

    var tdBtnReplicarA = document.createElement("td");
    var esReplicable = atributo.tipo == 9;
    var aRepA = document.createElement("a");
    aRepA.setAttribute("class", (esReplicable ? "btn-small blue" : ""));
    aRepA.setAttribute("onclick", "confRepDep(" + atributo.id + ", " + atributo.id_seccionAtributo + ")");
    var iRepA = document.createElement("i");
    iRepA.setAttribute("class", (esReplicable ? "material-icon" : ""));
    iRepA.innerHTML = (esReplicable ? "queue" : "");
    aRepA.appendChild(iRepA);
    tdBtnReplicarA.appendChild(aRepA);

    trBtnA.appendChild(tdBtnObligatorioA);
    trBtnA.appendChild(tdBtnDependienteA);
    trBtnA.appendChild(tdBtnReplicarA);
    tableBtnA.appendChild(trBtnA);
    formAtributo.appendChild(tableBtnA);
    formAtributo.appendChild(document.createElement("br"));

    var aQuitarA = document.createElement("a");
    aQuitarA.setAttribute("id", "btnB");
    aQuitarA.setAttribute("class", "btn-small red");
    aQuitarA.setAttribute("onclick", "if(confirm('Seguro?'))editarAtributo(" + atributo.id + ",document.getElementById('atributo" + atributo.id + "').value,document.getElementById('tipo" + atributo.id + "').value,document.getElementById('indeterminate-checkbox" + atributo.id + "').checked," + atributo.id_seccionAtributo + ",0,0);");
    aQuitarA.innerHTML = "Quitar";
    formAtributo.appendChild(aQuitarA);

    var aEditA = document.createElement("a");
    aEditA.setAttribute("id", "btnA");
    aEditA.setAttribute("class", "btn-small blue");
    aEditA.setAttribute("onclick", "editarAtributo(" + atributo.id + ",document.getElementById('atributo" + atributo.id + "').value,document.getElementById('tipo" + atributo.id + "').value,document.getElementById('indeterminate-checkbox" + atributo.id + "').checked," + atributo.id_seccionAtributo + ",1,document.getElementById('txtOrden" + atributo.id + "').value)");
    aEditA.innerHTML = "Actualizar";
    formAtributo.appendChild(aEditA);

    var labelcA = document.createElement("label");
    labelcA.setAttribute("id", "cargando_" + atributo.id);
    formAtributo.appendChild(labelcA);

    divAtributo.appendChild(formAtributo);
    liA.appendChild(divAtributo);
    //end Atributo

    return liA;
}

function cOptTipo(atributo) {
    var selectTipoA = document.createElement("select");
    selectTipoA.setAttribute('id', "tipo" + atributo.id);
    selectTipoA.setAttribute('class', "browser-default");

    var optionTipoA7 = document.createElement("option");
    optionTipoA7.setAttribute('class', "icons");
    optionTipoA7.setAttribute('value', "7");
    if (atributo.tipo == 7) { optionTipoA7.setAttribute('selected', ""); }
    optionTipoA7.innerHTML = "Cargue archivos";
    selectTipoA.appendChild(optionTipoA7);

    var optionTipoA3 = document.createElement("option");
    optionTipoA3.setAttribute('value', "3");
    if (atributo.tipo == 3) { optionTipoA3.setAttribute('selected', ""); }
    optionTipoA3.innerHTML = "Fecha";
    selectTipoA.appendChild(optionTipoA3);

    var optionTipoA4 = document.createElement("option");
    optionTipoA4.setAttribute('value', "4");
    if (atributo.tipo == 4) { optionTipoA4.setAttribute('selected', ""); }
    optionTipoA4.innerHTML = "Lista";
    selectTipoA.appendChild(optionTipoA4);

    var optionTipoA9 = document.createElement("option");
    optionTipoA9.setAttribute('value', "9");
    if (atributo.tipo == 9) { optionTipoA9.setAttribute('selected', ""); }
    optionTipoA9.innerHTML = "Texto";
    selectTipoA.appendChild(optionTipoA9);

    var optionTipoA5 = document.createElement("option");
    optionTipoA5.setAttribute('value', "5");
    if (atributo.tipo == 5) { optionTipoA5.setAttribute('selected', ""); }
    optionTipoA5.innerHTML = "Lista múltiple";
    selectTipoA.appendChild(optionTipoA5);

    var optionTipoA2 = document.createElement("option");
    optionTipoA2.setAttribute('value', "2");
    if (atributo.tipo == 2) { optionTipoA2.setAttribute('selected', ""); }
    optionTipoA2.innerHTML = "Número";
    selectTipoA.appendChild(optionTipoA2);

    var optionTipoA1 = document.createElement("option");
    optionTipoA1.setAttribute('value', "1");
    if (atributo.tipo == 1) { optionTipoA1.setAttribute('selected', ""); }
    optionTipoA1.innerHTML = "Texto";
    selectTipoA.appendChild(optionTipoA1);

    var optionTipoA6 = document.createElement("option");
    optionTipoA6.setAttribute('value', "6");
    if (atributo.tipo == 6) { optionTipoA6.setAttribute('selected', ""); }
    optionTipoA6.innerHTML = "Texto largo";
    selectTipoA.appendChild(optionTipoA6);

    var optionTipoA8 = document.createElement("option");
    optionTipoA8.setAttribute('value', "8");
    if (atributo.tipo == 8) { optionTipoA8.setAttribute('selected', ""); }
    optionTipoA8.innerHTML = "Sólo lectura";
    selectTipoA.appendChild(optionTipoA8);

    return selectTipoA;
}